; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_fence.c_vgem_fence_signal_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vgem/extr_vgem_fence.c_vgem_fence_signal_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vgem_file* }
%struct.vgem_file = type { i32, i32 }
%struct.drm_vgem_fence_signal = type { i32, i64 }
%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgem_fence_signal_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vgem_file*, align 8
  %9 = alloca %struct.drm_vgem_fence_signal*, align 8
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.vgem_file*, %struct.vgem_file** %13, align 8
  store %struct.vgem_file* %14, %struct.vgem_file** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_vgem_fence_signal*
  store %struct.drm_vgem_fence_signal* %16, %struct.drm_vgem_fence_signal** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.drm_vgem_fence_signal*, %struct.drm_vgem_fence_signal** %9, align 8
  %18 = getelementptr inbounds %struct.drm_vgem_fence_signal, %struct.drm_vgem_fence_signal* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load %struct.vgem_file*, %struct.vgem_file** %8, align 8
  %26 = getelementptr inbounds %struct.vgem_file, %struct.vgem_file* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.vgem_file*, %struct.vgem_file** %8, align 8
  %29 = getelementptr inbounds %struct.vgem_file, %struct.vgem_file* %28, i32 0, i32 1
  %30 = load %struct.drm_vgem_fence_signal*, %struct.drm_vgem_fence_signal** %9, align 8
  %31 = getelementptr inbounds %struct.drm_vgem_fence_signal, %struct.drm_vgem_fence_signal* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.dma_fence* @idr_replace(i32* %29, i32* null, i32 %32)
  store %struct.dma_fence* %33, %struct.dma_fence** %10, align 8
  %34 = load %struct.vgem_file*, %struct.vgem_file** %8, align 8
  %35 = getelementptr inbounds %struct.vgem_file, %struct.vgem_file* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %38 = icmp ne %struct.dma_fence* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %62

42:                                               ; preds = %24
  %43 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %44 = call i64 @IS_ERR(%struct.dma_fence* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %48 = call i32 @PTR_ERR(%struct.dma_fence* %47)
  store i32 %48, i32* %4, align 4
  br label %62

49:                                               ; preds = %42
  %50 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %51 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %58 = call i32 @dma_fence_signal(%struct.dma_fence* %57)
  %59 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %60 = call i32 @dma_fence_put(%struct.dma_fence* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %46, %39, %21
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dma_fence* @idr_replace(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
