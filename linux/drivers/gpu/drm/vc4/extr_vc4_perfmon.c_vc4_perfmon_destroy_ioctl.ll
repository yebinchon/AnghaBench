; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_destroy_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_destroy_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vc4_file* }
%struct.vc4_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vc4_dev = type { i32 }
%struct.drm_vc4_perfmon_destroy = type { i32 }
%struct.vc4_perfmon = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Destroying perfmon no VC4 V3D probed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_perfmon_destroy_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca %struct.vc4_file*, align 8
  %10 = alloca %struct.drm_vc4_perfmon_destroy*, align 8
  %11 = alloca %struct.vc4_perfmon*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %12)
  store %struct.vc4_dev* %13, %struct.vc4_dev** %8, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 0
  %16 = load %struct.vc4_file*, %struct.vc4_file** %15, align 8
  store %struct.vc4_file* %16, %struct.vc4_file** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.drm_vc4_perfmon_destroy*
  store %struct.drm_vc4_perfmon_destroy* %18, %struct.drm_vc4_perfmon_destroy** %10, align 8
  %19 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %20 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %51

27:                                               ; preds = %3
  %28 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %29 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %33 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.drm_vc4_perfmon_destroy*, %struct.drm_vc4_perfmon_destroy** %10, align 8
  %36 = getelementptr inbounds %struct.drm_vc4_perfmon_destroy, %struct.drm_vc4_perfmon_destroy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.vc4_perfmon* @idr_remove(i32* %34, i32 %37)
  store %struct.vc4_perfmon* %38, %struct.vc4_perfmon** %11, align 8
  %39 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %40 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %44 = icmp ne %struct.vc4_perfmon* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %27
  %49 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %50 = call i32 @vc4_perfmon_put(%struct.vc4_perfmon* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %45, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vc4_perfmon* @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vc4_perfmon_put(%struct.vc4_perfmon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
