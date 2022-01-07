; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.vidi_context = type { i32, i32, %struct.edid*, i32 }
%struct.edid = type { i32 }
%struct.drm_exynos_vidi_connection = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"user data for vidi is null.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"connection should be 0 or 1.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"same connection request.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"edid data is invalid.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to allocate raw_edid.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fake_edid_info = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vidi_connection_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.vidi_context*, align 8
  %9 = alloca %struct.drm_exynos_vidi_connection*, align 8
  %10 = alloca %struct.edid*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vidi_context* @dev_get_drvdata(i32 %13)
  store %struct.vidi_context* %14, %struct.vidi_context** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_exynos_vidi_connection*
  store %struct.drm_exynos_vidi_connection* %16, %struct.drm_exynos_vidi_connection** %9, align 8
  %17 = load %struct.drm_exynos_vidi_connection*, %struct.drm_exynos_vidi_connection** %9, align 8
  %18 = icmp ne %struct.drm_exynos_vidi_connection* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %21 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @DRM_DEV_DEBUG_KMS(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %120

26:                                               ; preds = %3
  %27 = load %struct.drm_exynos_vidi_connection*, %struct.drm_exynos_vidi_connection** %9, align 8
  %28 = getelementptr inbounds %struct.drm_exynos_vidi_connection, %struct.drm_exynos_vidi_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %33 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DRM_DEV_DEBUG_KMS(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %120

38:                                               ; preds = %26
  %39 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %40 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drm_exynos_vidi_connection*, %struct.drm_exynos_vidi_connection** %9, align 8
  %43 = getelementptr inbounds %struct.drm_exynos_vidi_connection, %struct.drm_exynos_vidi_connection* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %48 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DRM_DEV_DEBUG_KMS(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %120

53:                                               ; preds = %38
  %54 = load %struct.drm_exynos_vidi_connection*, %struct.drm_exynos_vidi_connection** %9, align 8
  %55 = getelementptr inbounds %struct.drm_exynos_vidi_connection, %struct.drm_exynos_vidi_connection* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %53
  %59 = load %struct.drm_exynos_vidi_connection*, %struct.drm_exynos_vidi_connection** %9, align 8
  %60 = getelementptr inbounds %struct.drm_exynos_vidi_connection, %struct.drm_exynos_vidi_connection* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.edid*
  store %struct.edid* %62, %struct.edid** %10, align 8
  %63 = load %struct.edid*, %struct.edid** %10, align 8
  %64 = call i32 @drm_edid_is_valid(%struct.edid* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %58
  %67 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %68 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DRM_DEV_DEBUG_KMS(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %120

73:                                               ; preds = %58
  %74 = load %struct.edid*, %struct.edid** %10, align 8
  %75 = call %struct.edid* @drm_edid_duplicate(%struct.edid* %74)
  %76 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %77 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %76, i32 0, i32 2
  store %struct.edid* %75, %struct.edid** %77, align 8
  %78 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %79 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %78, i32 0, i32 2
  %80 = load %struct.edid*, %struct.edid** %79, align 8
  %81 = icmp ne %struct.edid* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %73
  %83 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %84 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @DRM_DEV_DEBUG_KMS(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %120

89:                                               ; preds = %73
  br label %110

90:                                               ; preds = %53
  %91 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %92 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %91, i32 0, i32 2
  %93 = load %struct.edid*, %struct.edid** %92, align 8
  %94 = icmp ne %struct.edid* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %97 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %96, i32 0, i32 2
  %98 = load %struct.edid*, %struct.edid** %97, align 8
  %99 = load i64, i64* @fake_edid_info, align 8
  %100 = inttoptr i64 %99 to %struct.edid*
  %101 = icmp ne %struct.edid* %98, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %104 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %103, i32 0, i32 2
  %105 = load %struct.edid*, %struct.edid** %104, align 8
  %106 = call i32 @kfree(%struct.edid* %105)
  %107 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %108 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %107, i32 0, i32 2
  store %struct.edid* null, %struct.edid** %108, align 8
  br label %109

109:                                              ; preds = %102, %95, %90
  br label %110

110:                                              ; preds = %109, %89
  %111 = load %struct.drm_exynos_vidi_connection*, %struct.drm_exynos_vidi_connection** %9, align 8
  %112 = getelementptr inbounds %struct.drm_exynos_vidi_connection, %struct.drm_exynos_vidi_connection* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %115 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.vidi_context*, %struct.vidi_context** %8, align 8
  %117 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @drm_helper_hpd_irq_event(i32 %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %110, %82, %66, %46, %31, %19
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.vidi_context* @dev_get_drvdata(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*) #1

declare dso_local i32 @drm_edid_is_valid(%struct.edid*) #1

declare dso_local %struct.edid* @drm_edid_duplicate(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
