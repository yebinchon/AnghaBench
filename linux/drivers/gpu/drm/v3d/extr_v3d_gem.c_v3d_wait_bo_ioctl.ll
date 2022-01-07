; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_wait_bo_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_wait_bo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_v3d_wait_bo = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_wait_bo_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_v3d_wait_bo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_v3d_wait_bo*
  store %struct.drm_v3d_wait_bo* %14, %struct.drm_v3d_wait_bo** %9, align 8
  %15 = call i32 (...) @ktime_get()
  store i32 %15, i32* %10, align 4
  %16 = load %struct.drm_v3d_wait_bo*, %struct.drm_v3d_wait_bo** %9, align 8
  %17 = getelementptr inbounds %struct.drm_v3d_wait_bo, %struct.drm_v3d_wait_bo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @nsecs_to_jiffies_timeout(i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load %struct.drm_v3d_wait_bo*, %struct.drm_v3d_wait_bo** %9, align 8
  %21 = getelementptr inbounds %struct.drm_v3d_wait_bo, %struct.drm_v3d_wait_bo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %67

27:                                               ; preds = %3
  %28 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %29 = load %struct.drm_v3d_wait_bo*, %struct.drm_v3d_wait_bo** %9, align 8
  %30 = getelementptr inbounds %struct.drm_v3d_wait_bo, %struct.drm_v3d_wait_bo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @drm_gem_dma_resv_wait(%struct.drm_file* %28, i32 %31, i32 1, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = call i32 (...) @ktime_get()
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ktime_sub(i32 %34, i32 %35)
  %37 = call i64 @ktime_to_ns(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.drm_v3d_wait_bo*, %struct.drm_v3d_wait_bo** %9, align 8
  %40 = getelementptr inbounds %struct.drm_v3d_wait_bo, %struct.drm_v3d_wait_bo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.drm_v3d_wait_bo*, %struct.drm_v3d_wait_bo** %9, align 8
  %46 = getelementptr inbounds %struct.drm_v3d_wait_bo, %struct.drm_v3d_wait_bo* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %52

49:                                               ; preds = %27
  %50 = load %struct.drm_v3d_wait_bo*, %struct.drm_v3d_wait_bo** %9, align 8
  %51 = getelementptr inbounds %struct.drm_v3d_wait_bo, %struct.drm_v3d_wait_bo* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ETIME, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.drm_v3d_wait_bo*, %struct.drm_v3d_wait_bo** %9, align 8
  %59 = getelementptr inbounds %struct.drm_v3d_wait_bo, %struct.drm_v3d_wait_bo* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EAGAIN, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %62, %57, %52
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %24
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @nsecs_to_jiffies_timeout(i64) #1

declare dso_local i32 @drm_gem_dma_resv_wait(%struct.drm_file*, i32, i32, i64) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
