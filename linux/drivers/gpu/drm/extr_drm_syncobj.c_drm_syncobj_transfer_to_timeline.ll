; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_transfer_to_timeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_transfer_to_timeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_syncobj_transfer = type { i32, i32, i32, i32, i32 }
%struct.drm_syncobj = type { i32 }
%struct.dma_fence = type { i32 }
%struct.dma_fence_chain = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_syncobj_transfer*)* @drm_syncobj_transfer_to_timeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_syncobj_transfer_to_timeline(%struct.drm_file* %0, %struct.drm_syncobj_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_syncobj_transfer*, align 8
  %6 = alloca %struct.drm_syncobj*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca %struct.dma_fence_chain*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_syncobj_transfer* %1, %struct.drm_syncobj_transfer** %5, align 8
  store %struct.drm_syncobj* null, %struct.drm_syncobj** %6, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %11 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %12 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %10, i32 %13)
  store %struct.drm_syncobj* %14, %struct.drm_syncobj** %6, align 8
  %15 = load %struct.drm_syncobj*, %struct.drm_syncobj** %6, align 8
  %16 = icmp ne %struct.drm_syncobj* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %22 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %23 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %26 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %29 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @drm_syncobj_find_fence(%struct.drm_file* %21, i32 %24, i32 %27, i32 %30, %struct.dma_fence** %7)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %54

35:                                               ; preds = %20
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.dma_fence_chain* @kzalloc(i32 4, i32 %36)
  store %struct.dma_fence_chain* %37, %struct.dma_fence_chain** %8, align 8
  %38 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %8, align 8
  %39 = icmp ne %struct.dma_fence_chain* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %51

43:                                               ; preds = %35
  %44 = load %struct.drm_syncobj*, %struct.drm_syncobj** %6, align 8
  %45 = load %struct.dma_fence_chain*, %struct.dma_fence_chain** %8, align 8
  %46 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %47 = load %struct.drm_syncobj_transfer*, %struct.drm_syncobj_transfer** %5, align 8
  %48 = getelementptr inbounds %struct.drm_syncobj_transfer, %struct.drm_syncobj_transfer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @drm_syncobj_add_point(%struct.drm_syncobj* %44, %struct.dma_fence_chain* %45, %struct.dma_fence* %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %40
  %52 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %53 = call i32 @dma_fence_put(%struct.dma_fence* %52)
  br label %54

54:                                               ; preds = %51, %34
  %55 = load %struct.drm_syncobj*, %struct.drm_syncobj** %6, align 8
  %56 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_syncobj_find_fence(%struct.drm_file*, i32, i32, i32, %struct.dma_fence**) #1

declare dso_local %struct.dma_fence_chain* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_syncobj_add_point(%struct.drm_syncobj*, %struct.dma_fence_chain*, %struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
