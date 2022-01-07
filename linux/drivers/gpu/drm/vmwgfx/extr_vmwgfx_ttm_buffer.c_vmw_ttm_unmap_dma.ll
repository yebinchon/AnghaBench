; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_ttm_unmap_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_ttm_buffer.c_vmw_ttm_unmap_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_ttm_tt = type { i32, i32, %struct.TYPE_2__, %struct.vmw_private* }
%struct.TYPE_2__ = type { i32* }
%struct.vmw_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_ttm_tt*)* @vmw_ttm_unmap_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_ttm_unmap_dma(%struct.vmw_ttm_tt* %0) #0 {
  %2 = alloca %struct.vmw_ttm_tt*, align 8
  %3 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_ttm_tt* %0, %struct.vmw_ttm_tt** %2, align 8
  %4 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %4, i32 0, i32 3
  %6 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  store %struct.vmw_private* %6, %struct.vmw_private** %3, align 8
  %7 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %2, align 8
  %8 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %15 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %34 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %13, %13
  %18 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %2, align 8
  %19 = call i32 @vmw_ttm_unmap_from_dma(%struct.vmw_ttm_tt* %18)
  %20 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %2, align 8
  %21 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @sg_free_table(i32* %23)
  %25 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %2, align 8
  %26 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %29 = call i32 @vmw_mem_glob(%struct.vmw_private* %28)
  %30 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %2, align 8
  %31 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ttm_mem_global_free(i32 %29, i32 %32)
  br label %35

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.vmw_ttm_tt*, %struct.vmw_ttm_tt** %2, align 8
  %37 = getelementptr inbounds %struct.vmw_ttm_tt, %struct.vmw_ttm_tt* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %12
  ret void
}

declare dso_local i32 @vmw_ttm_unmap_from_dma(%struct.vmw_ttm_tt*) #1

declare dso_local i32 @sg_free_table(i32*) #1

declare dso_local i32 @ttm_mem_global_free(i32, i32) #1

declare dso_local i32 @vmw_mem_glob(%struct.vmw_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
