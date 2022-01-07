; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_export_sync_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_export_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.dma_fence = type { i32 }
%struct.sync_file = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, i32, i32*)* @drm_syncobj_export_sync_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_syncobj_export_sync_file(%struct.drm_file* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence*, align 8
  %10 = alloca %struct.sync_file*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = call i32 @get_unused_fd_flags(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @drm_syncobj_find_fence(%struct.drm_file* %19, i32 %20, i32 0, i32 0, %struct.dma_fence** %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %43

25:                                               ; preds = %18
  %26 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %27 = call %struct.sync_file* @sync_file_create(%struct.dma_fence* %26)
  store %struct.sync_file* %27, %struct.sync_file** %10, align 8
  %28 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %29 = call i32 @dma_fence_put(%struct.dma_fence* %28)
  %30 = load %struct.sync_file*, %struct.sync_file** %10, align 8
  %31 = icmp ne %struct.sync_file* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %43

35:                                               ; preds = %25
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.sync_file*, %struct.sync_file** %10, align 8
  %38 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @fd_install(i32 %36, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %47

43:                                               ; preds = %32, %24
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @put_unused_fd(i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %35, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i32 @drm_syncobj_find_fence(%struct.drm_file*, i32, i32, i32, %struct.dma_fence**) #1

declare dso_local %struct.sync_file* @sync_file_create(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @fd_install(i32, i32) #1

declare dso_local i32 @put_unused_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
