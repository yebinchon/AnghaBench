; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_ioctl_perfcnt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_perfcnt.c_panfrost_ioctl_perfcnt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.panfrost_device* }
%struct.panfrost_device = type { %struct.panfrost_perfcnt* }
%struct.panfrost_perfcnt = type { i32 }
%struct.drm_file = type { %struct.panfrost_file_priv* }
%struct.panfrost_file_priv = type { i32 }
%struct.drm_panfrost_perfcnt_enable = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @panfrost_ioctl_perfcnt_enable(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.panfrost_file_priv*, align 8
  %9 = alloca %struct.panfrost_device*, align 8
  %10 = alloca %struct.panfrost_perfcnt*, align 8
  %11 = alloca %struct.drm_panfrost_perfcnt_enable*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 0
  %15 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %14, align 8
  store %struct.panfrost_file_priv* %15, %struct.panfrost_file_priv** %8, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %17, align 8
  store %struct.panfrost_device* %18, %struct.panfrost_device** %9, align 8
  %19 = load %struct.panfrost_device*, %struct.panfrost_device** %9, align 8
  %20 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %19, i32 0, i32 0
  %21 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %20, align 8
  store %struct.panfrost_perfcnt* %21, %struct.panfrost_perfcnt** %10, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.drm_panfrost_perfcnt_enable*
  store %struct.drm_panfrost_perfcnt_enable* %23, %struct.drm_panfrost_perfcnt_enable** %11, align 8
  %24 = call i32 (...) @panfrost_unstable_ioctl_check()
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %3
  %30 = load %struct.drm_panfrost_perfcnt_enable*, %struct.drm_panfrost_perfcnt_enable** %11, align 8
  %31 = getelementptr inbounds %struct.drm_panfrost_perfcnt_enable, %struct.drm_panfrost_perfcnt_enable* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.panfrost_device*, %struct.panfrost_device** %9, align 8
  %34 = call i64 @panfrost_model_is_bifrost(%struct.panfrost_device* %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = icmp sgt i32 %32, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %66

42:                                               ; preds = %29
  %43 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %10, align 8
  %44 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.drm_panfrost_perfcnt_enable*, %struct.drm_panfrost_perfcnt_enable** %11, align 8
  %47 = getelementptr inbounds %struct.drm_panfrost_perfcnt_enable, %struct.drm_panfrost_perfcnt_enable* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.panfrost_device*, %struct.panfrost_device** %9, align 8
  %52 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %53 = load %struct.drm_panfrost_perfcnt_enable*, %struct.drm_panfrost_perfcnt_enable** %11, align 8
  %54 = getelementptr inbounds %struct.drm_panfrost_perfcnt_enable, %struct.drm_panfrost_perfcnt_enable* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @panfrost_perfcnt_enable_locked(%struct.panfrost_device* %51, %struct.panfrost_file_priv* %52, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %61

57:                                               ; preds = %42
  %58 = load %struct.panfrost_device*, %struct.panfrost_device** %9, align 8
  %59 = load %struct.panfrost_file_priv*, %struct.panfrost_file_priv** %8, align 8
  %60 = call i32 @panfrost_perfcnt_disable_locked(%struct.panfrost_device* %58, %struct.panfrost_file_priv* %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.panfrost_perfcnt*, %struct.panfrost_perfcnt** %10, align 8
  %63 = getelementptr inbounds %struct.panfrost_perfcnt, %struct.panfrost_perfcnt* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %39, %27
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @panfrost_unstable_ioctl_check(...) #1

declare dso_local i64 @panfrost_model_is_bifrost(%struct.panfrost_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @panfrost_perfcnt_enable_locked(%struct.panfrost_device*, %struct.panfrost_file_priv*, i32) #1

declare dso_local i32 @panfrost_perfcnt_disable_locked(%struct.panfrost_device*, %struct.panfrost_file_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
