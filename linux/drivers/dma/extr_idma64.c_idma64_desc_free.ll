; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_desc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64_chan = type { i32 }
%struct.idma64_desc = type { i32, %struct.idma64_desc*, i32, i32 }
%struct.idma64_hw_desc = type { i32, %struct.idma64_hw_desc*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64_chan*, %struct.idma64_desc*)* @idma64_desc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_desc_free(%struct.idma64_chan* %0, %struct.idma64_desc* %1) #0 {
  %3 = alloca %struct.idma64_chan*, align 8
  %4 = alloca %struct.idma64_desc*, align 8
  %5 = alloca %struct.idma64_hw_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.idma64_chan* %0, %struct.idma64_chan** %3, align 8
  store %struct.idma64_desc* %1, %struct.idma64_desc** %4, align 8
  %7 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %8 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %13 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %34, %11
  %16 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %17 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %16, i32 0, i32 1
  %18 = load %struct.idma64_desc*, %struct.idma64_desc** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %18, i64 %21
  %23 = bitcast %struct.idma64_desc* %22 to %struct.idma64_hw_desc*
  store %struct.idma64_hw_desc* %23, %struct.idma64_hw_desc** %5, align 8
  %24 = load %struct.idma64_chan*, %struct.idma64_chan** %3, align 8
  %25 = getelementptr inbounds %struct.idma64_chan, %struct.idma64_chan* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %5, align 8
  %28 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.idma64_hw_desc*, %struct.idma64_hw_desc** %5, align 8
  %31 = getelementptr inbounds %struct.idma64_hw_desc, %struct.idma64_hw_desc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_pool_free(i32 %26, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %15, label %37

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %40 = getelementptr inbounds %struct.idma64_desc, %struct.idma64_desc* %39, i32 0, i32 1
  %41 = load %struct.idma64_desc*, %struct.idma64_desc** %40, align 8
  %42 = bitcast %struct.idma64_desc* %41 to %struct.idma64_hw_desc*
  %43 = call i32 @kfree(%struct.idma64_hw_desc* %42)
  %44 = load %struct.idma64_desc*, %struct.idma64_desc** %4, align 8
  %45 = bitcast %struct.idma64_desc* %44 to %struct.idma64_hw_desc*
  %46 = call i32 @kfree(%struct.idma64_hw_desc* %45)
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.idma64_hw_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
