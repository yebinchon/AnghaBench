; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_workaround_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_dmm_workaround_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmm = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmm*)* @dmm_workaround_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmm_workaround_init(%struct.dmm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmm*, align 8
  %4 = alloca i32, align 4
  store %struct.dmm* %0, %struct.dmm** %3, align 8
  %5 = load %struct.dmm*, %struct.dmm** %3, align 8
  %6 = getelementptr inbounds %struct.dmm, %struct.dmm* %5, i32 0, i32 4
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.dmm*, %struct.dmm** %3, align 8
  %9 = getelementptr inbounds %struct.dmm, %struct.dmm* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dmm*, %struct.dmm** %3, align 8
  %12 = getelementptr inbounds %struct.dmm, %struct.dmm* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @dma_alloc_coherent(i32 %10, i32 4, i32* %12, i32 %13)
  %15 = load %struct.dmm*, %struct.dmm** %3, align 8
  %16 = getelementptr inbounds %struct.dmm, %struct.dmm* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dmm*, %struct.dmm** %3, align 8
  %18 = getelementptr inbounds %struct.dmm, %struct.dmm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dma_cap_zero(i32 %25)
  %27 = load i32, i32* @DMA_MEMCPY, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dma_cap_set(i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dma_request_channel(i32 %30, i32* null, i32* null)
  %32 = load %struct.dmm*, %struct.dmm** %3, align 8
  %33 = getelementptr inbounds %struct.dmm, %struct.dmm* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dmm*, %struct.dmm** %3, align 8
  %35 = getelementptr inbounds %struct.dmm, %struct.dmm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %24
  %39 = load %struct.dmm*, %struct.dmm** %3, align 8
  %40 = getelementptr inbounds %struct.dmm, %struct.dmm* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dmm*, %struct.dmm** %3, align 8
  %43 = getelementptr inbounds %struct.dmm, %struct.dmm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dmm*, %struct.dmm** %3, align 8
  %46 = getelementptr inbounds %struct.dmm, %struct.dmm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_free_coherent(i32 %41, i32 4, i32 %44, i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %38, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
