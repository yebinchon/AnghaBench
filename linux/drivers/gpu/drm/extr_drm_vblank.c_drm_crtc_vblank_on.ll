; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_crtc_vblank_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_crtc_vblank_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"crtc %d, vblank enabled %d, inmodeset %d\0A\00", align 1
@drm_vblank_offdelay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_crtc_vblank_on(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_vblank_crtc*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call i32 @drm_crtc_index(%struct.drm_crtc* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 2
  %14 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %14, i64 %16
  store %struct.drm_vblank_crtc* %17, %struct.drm_vblank_crtc** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %71

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 1
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %37 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @DRM_DEBUG_VBL(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i64 %38)
  %40 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %41 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %27
  %45 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %46 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %45, i32 0, i32 0
  %47 = call i32 @atomic_dec(i32* %46)
  %48 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %49 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %27
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @drm_reset_vblank_timestamp(%struct.drm_device* %51, i32 %52)
  %54 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %5, align 8
  %55 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %54, i32 0, i32 0
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* @drm_vblank_offdelay, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58, %50
  %62 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @drm_vblank_enable(%struct.drm_device* %62, i32 %63)
  %65 = call i64 @WARN_ON(i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 1
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %26
  ret void
}

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_VBL(i8*, i32, i32, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @drm_reset_vblank_timestamp(%struct.drm_device*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @drm_vblank_enable(%struct.drm_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
