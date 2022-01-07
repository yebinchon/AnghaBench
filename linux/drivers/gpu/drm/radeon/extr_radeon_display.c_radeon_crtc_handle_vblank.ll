; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_handle_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_handle_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@radeon_use_pflipirq = common dso_local global i32 0, align 4
@RADEON_FLIP_SUBMITTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"radeon_crtc->flip_status = %d != RADEON_FLIP_SUBMITTED(%d)\0A\00", align 1
@DRM_SCANOUTPOS_VALID = common dso_local global i32 0, align 4
@GET_DISTANCE_TO_VBLANKSTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_crtc_handle_vblank(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %13, i64 %15
  %17 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  store %struct.radeon_crtc* %17, %struct.radeon_crtc** %5, align 8
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %19 = icmp eq %struct.radeon_crtc* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %106

21:                                               ; preds = %2
  %22 = load i32, i32* @radeon_use_pflipirq, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %106

29:                                               ; preds = %24, %21
  %30 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RADEON_FLIP_SUBMITTED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RADEON_FLIP_SUBMITTED, align 8
  %46 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %106

53:                                               ; preds = %29
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @radeon_page_flip_pending(%struct.radeon_device* %54, i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %93

59:                                               ; preds = %53
  %60 = load i32, i32* @DRM_SCANOUTPOS_VALID, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @GET_DISTANCE_TO_VBLANKSTART, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %69, i64 %71
  %73 = load %struct.radeon_crtc*, %struct.radeon_crtc** %72, align 8
  %74 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @radeon_get_crtc_scanoutpos(%struct.TYPE_6__* %63, i32 %64, i32 %65, i32* %8, i32* %9, i32* null, i32* null, i32* %75)
  %77 = and i32 %60, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %59
  %80 = load i32, i32* %8, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = call i32 @ASIC_IS_AVIVO(%struct.radeon_device* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88, %82
  store i64 0, i64* %7, align 8
  br label %93

93:                                               ; preds = %92, %88, %85, %59, %53
  %94 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %93
  %103 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @radeon_crtc_handle_flip(%struct.radeon_device* %103, i32 %104)
  br label %106

106:                                              ; preds = %20, %28, %41, %102, %93
  ret void
}

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @radeon_page_flip_pending(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_get_crtc_scanoutpos(%struct.TYPE_6__*, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_crtc_handle_flip(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
