; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_get_vblank_counter_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_kms.c_radeon_get_vblank_counter_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Invalid crtc %u\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@GET_DISTANCE_TO_VBLANKSTART = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@DRM_SCANOUTPOS_ACCURATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Query failed! stat %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"crtc %u: dist from vblank start %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"NULL mode info! Returned count may be wrong.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @radeon_get_vblank_counter_kms(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.radeon_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %3, align 8
  br label %90

24:                                               ; preds = %2
  %25 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %83

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %53, %34
  %36 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @radeon_get_vblank_counter(%struct.radeon_device* %36, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @GET_DISTANCE_TO_VBLANKSTART, align 4
  %42 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %45, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @radeon_get_crtc_scanoutpos(%struct.drm_device* %39, i32 %40, i32 %41, i32* %6, i32* %7, i32* null, i32* null, i32* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %35
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @radeon_get_vblank_counter(%struct.radeon_device* %55, i32 %56)
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %35, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %62 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %66 = load i32, i32* @DRM_SCANOUTPOS_ACCURATE, align 4
  %67 = or i32 %65, %66
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i8*, ...) @DRM_DEBUG_VBL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %82

72:                                               ; preds = %59
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i8*, ...) @DRM_DEBUG_VBL(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %78, %72
  br label %82

82:                                               ; preds = %81, %69
  br label %88

83:                                               ; preds = %24
  %84 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @radeon_get_vblank_counter(%struct.radeon_device* %84, i32 %85)
  store i64 %86, i64* %9, align 8
  %87 = call i32 (i8*, ...) @DRM_DEBUG_VBL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %82
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %88, %19
  %91 = load i64, i64* %3, align 8
  ret i64 %91
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i64 @radeon_get_vblank_counter(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_get_crtc_scanoutpos(%struct.drm_device*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_VBL(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
