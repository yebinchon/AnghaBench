; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_free_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_free_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*)* @err_free_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @err_free_sgl(%struct.scatterlist* %0) #0 {
  %2 = alloca %struct.scatterlist*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %2, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  %6 = icmp ne %struct.scatterlist* %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %4
  %8 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  store %struct.scatterlist* %8, %struct.scatterlist** %3, align 8
  br label %9

9:                                                ; preds = %23, %7
  %10 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %11 = call i32 @sg_is_chain(%struct.scatterlist* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %16 = call i32 @sg_virt(%struct.scatterlist* %15)
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %19 = call i64 @sg_is_last(%struct.scatterlist* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i32 1
  store %struct.scatterlist* %25, %struct.scatterlist** %3, align 8
  br label %9

26:                                               ; preds = %21, %9
  %27 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %28 = call i64 @sg_is_last(%struct.scatterlist* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %34

31:                                               ; preds = %26
  %32 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %33 = call %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist* %32)
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi %struct.scatterlist* [ null, %30 ], [ %33, %31 ]
  store %struct.scatterlist* %35, %struct.scatterlist** %3, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  %37 = ptrtoint %struct.scatterlist* %36 to i64
  %38 = call i32 @free_page(i64 %37)
  %39 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  store %struct.scatterlist* %39, %struct.scatterlist** %2, align 8
  br label %4

40:                                               ; preds = %4
  ret void
}

declare dso_local i32 @sg_is_chain(%struct.scatterlist*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
