; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_get_values_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_perfmon.c_vc4_perfmon_get_values_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vc4_file* }
%struct.vc4_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vc4_dev = type { i32 }
%struct.drm_vc4_perfmon_get_values = type { i32, i32 }
%struct.vc4_perfmon = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Getting perfmon no VC4 V3D probed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_perfmon_get_values_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vc4_dev*, align 8
  %9 = alloca %struct.vc4_file*, align 8
  %10 = alloca %struct.drm_vc4_perfmon_get_values*, align 8
  %11 = alloca %struct.vc4_perfmon*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %13)
  store %struct.vc4_dev* %14, %struct.vc4_dev** %8, align 8
  %15 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %16 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %15, i32 0, i32 0
  %17 = load %struct.vc4_file*, %struct.vc4_file** %16, align 8
  store %struct.vc4_file* %17, %struct.vc4_file** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_vc4_perfmon_get_values*
  store %struct.drm_vc4_perfmon_get_values* %19, %struct.drm_vc4_perfmon_get_values** %10, align 8
  %20 = load %struct.vc4_dev*, %struct.vc4_dev** %8, align 8
  %21 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %30 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %34 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.drm_vc4_perfmon_get_values*, %struct.drm_vc4_perfmon_get_values** %10, align 8
  %37 = getelementptr inbounds %struct.drm_vc4_perfmon_get_values, %struct.drm_vc4_perfmon_get_values* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.vc4_perfmon* @idr_find(i32* %35, i32 %38)
  store %struct.vc4_perfmon* %39, %struct.vc4_perfmon** %11, align 8
  %40 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %41 = call i32 @vc4_perfmon_get(%struct.vc4_perfmon* %40)
  %42 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %43 = getelementptr inbounds %struct.vc4_file, %struct.vc4_file* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %47 = icmp ne %struct.vc4_perfmon* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %28
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %75

51:                                               ; preds = %28
  %52 = load %struct.drm_vc4_perfmon_get_values*, %struct.drm_vc4_perfmon_get_values** %10, align 8
  %53 = getelementptr inbounds %struct.drm_vc4_perfmon_get_values, %struct.drm_vc4_perfmon_get_values* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @u64_to_user_ptr(i32 %54)
  %56 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %57 = getelementptr inbounds %struct.vc4_perfmon, %struct.vc4_perfmon* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %60 = getelementptr inbounds %struct.vc4_perfmon, %struct.vc4_perfmon* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i64 @copy_to_user(i32 %55, i32 %58, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %71

70:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load %struct.vc4_perfmon*, %struct.vc4_perfmon** %11, align 8
  %73 = call i32 @vc4_perfmon_put(%struct.vc4_perfmon* %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %48, %24
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vc4_perfmon* @idr_find(i32*, i32) #1

declare dso_local i32 @vc4_perfmon_get(%struct.vc4_perfmon*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @copy_to_user(i32, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @vc4_perfmon_put(%struct.vc4_perfmon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
