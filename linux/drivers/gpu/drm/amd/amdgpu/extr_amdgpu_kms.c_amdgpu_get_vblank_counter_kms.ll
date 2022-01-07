; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_get_vblank_counter_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_kms.c_amdgpu_get_vblank_counter_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid crtc %u\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@GET_DISTANCE_TO_VBLANKSTART = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_ACCURATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Query failed! stat %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"crtc %d: dist from vblank start %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"NULL mode info! Returned count may be wrong.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @amdgpu_get_vblank_counter_kms(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp uge i32 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %3, align 8
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 %31
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %84

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %54, %35
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @amdgpu_display_vblank_get_counter(%struct.amdgpu_device* %37, i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GET_DISTANCE_TO_VBLANKSTART, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @amdgpu_display_get_crtc_scanoutpos(%struct.drm_device* %40, i32 %41, i32 %42, i32* %7, i32* %8, i32* null, i32* null, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %36
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @amdgpu_display_vblank_get_counter(%struct.amdgpu_device* %56, i32 %57)
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %36, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %63 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %67 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %68 = or i32 %66, %67
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (i8*, ...) @DRM_DEBUG_VBL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %83

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i8*, ...) @DRM_DEBUG_VBL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i64, i64* %10, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %79, %73
  br label %83

83:                                               ; preds = %82, %70
  br label %89

84:                                               ; preds = %25
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @amdgpu_display_vblank_get_counter(%struct.amdgpu_device* %85, i32 %86)
  store i64 %87, i64* %10, align 8
  %88 = call i32 (i8*, ...) @DRM_DEBUG_VBL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i64, i64* %10, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %89, %20
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @amdgpu_display_vblank_get_counter(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_display_get_crtc_scanoutpos(%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_VBL(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
