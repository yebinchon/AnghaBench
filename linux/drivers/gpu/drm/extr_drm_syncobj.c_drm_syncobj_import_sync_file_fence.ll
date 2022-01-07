; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_import_sync_file_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_import_sync_file_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.dma_fence = type { i32 }
%struct.drm_syncobj = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i32, i32)* @drm_syncobj_import_sync_file_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_syncobj_import_sync_file_fence(%struct.drm_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_fence*, align 8
  %9 = alloca %struct.drm_syncobj*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.dma_fence* @sync_file_get_fence(i32 %10)
  store %struct.dma_fence* %11, %struct.dma_fence** %8, align 8
  %12 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %13 = icmp ne %struct.dma_fence* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file* %18, i32 %19)
  store %struct.drm_syncobj* %20, %struct.drm_syncobj** %9, align 8
  %21 = load %struct.drm_syncobj*, %struct.drm_syncobj** %9, align 8
  %22 = icmp ne %struct.drm_syncobj* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %25 = call i32 @dma_fence_put(%struct.dma_fence* %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %17
  %29 = load %struct.drm_syncobj*, %struct.drm_syncobj** %9, align 8
  %30 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %31 = call i32 @drm_syncobj_replace_fence(%struct.drm_syncobj* %29, %struct.dma_fence* %30)
  %32 = load %struct.dma_fence*, %struct.dma_fence** %8, align 8
  %33 = call i32 @dma_fence_put(%struct.dma_fence* %32)
  %34 = load %struct.drm_syncobj*, %struct.drm_syncobj** %9, align 8
  %35 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %23, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.dma_fence* @sync_file_get_fence(i32) #1

declare dso_local %struct.drm_syncobj* @drm_syncobj_find(%struct.drm_file*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @drm_syncobj_replace_fence(%struct.drm_syncobj*, %struct.dma_fence*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
