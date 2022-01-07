; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_get_param_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_drv.c_v3d_get_param_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.v3d_dev = type { i32 }
%struct.drm_v3d_get_param = type { i64, i64, i32 }

@v3d_get_param_ioctl.reg_map = internal constant [142 x i64] [i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134], align 16
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown parameter %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @v3d_get_param_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_get_param_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.v3d_dev*, align 8
  %9 = alloca %struct.drm_v3d_get_param*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %12)
  store %struct.v3d_dev* %13, %struct.v3d_dev** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_v3d_get_param*
  store %struct.drm_v3d_get_param* %15, %struct.drm_v3d_get_param** %9, align 8
  %16 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %17 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %112

23:                                               ; preds = %3
  %24 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %25 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @ARRAY_SIZE(i64* getelementptr inbounds ([142 x i64], [142 x i64]* @v3d_get_param_ioctl.reg_map, i64 0, i64 0))
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  %30 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %31 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [142 x i64], [142 x i64]* @v3d_get_param_ioctl.reg_map, i64 0, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %38 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 141
  br i1 %40, label %41, label %92

41:                                               ; preds = %36, %29
  %42 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %43 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds [142 x i64], [142 x i64]* @v3d_get_param_ioctl.reg_map, i64 0, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %48 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %112

54:                                               ; preds = %41
  %55 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %56 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_get_sync(i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %112

63:                                               ; preds = %54
  %64 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %65 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %66, 141
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %70 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ule i64 %71, 139
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @V3D_CORE_READ(i32 0, i64 %74)
  %76 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %77 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %83

78:                                               ; preds = %68, %63
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @V3D_READ(i64 %79)
  %81 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %82 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %85 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pm_runtime_mark_last_busy(i32 %86)
  %88 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %89 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pm_runtime_put_autosuspend(i32 %90)
  store i32 0, i32* %4, align 4
  br label %112

92:                                               ; preds = %36, %23
  %93 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %94 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  switch i64 %95, label %104 [
    i64 142, label %96
    i64 143, label %99
  ]

96:                                               ; preds = %92
  %97 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %98 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  store i32 0, i32* %4, align 4
  br label %112

99:                                               ; preds = %92
  %100 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %101 = call i32 @v3d_has_csd(%struct.v3d_dev* %100)
  %102 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %103 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  store i32 0, i32* %4, align 4
  br label %112

104:                                              ; preds = %92
  %105 = load %struct.drm_v3d_get_param*, %struct.drm_v3d_get_param** %9, align 8
  %106 = getelementptr inbounds %struct.drm_v3d_get_param, %struct.drm_v3d_get_param* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %104, %99, %96, %83, %61, %51, %20
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @V3D_CORE_READ(i32, i64) #1

declare dso_local i32 @V3D_READ(i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @v3d_has_csd(%struct.v3d_dev*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
