; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_handle_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_crtc_handle_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.radeon_crtc** }
%struct.radeon_crtc = type { i64, i32, i32, %struct.radeon_flip_work* }
%struct.radeon_flip_work = type { i32, i32, i64 }

@RADEON_FLIP_SUBMITTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"radeon_crtc->flip_status = %d != RADEON_FLIP_SUBMITTED(%d)\0A\00", align 1
@RADEON_FLIP_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_crtc_handle_flip(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_crtc*, align 8
  %6 = alloca %struct.radeon_flip_work*, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.radeon_crtc**, %struct.radeon_crtc*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.radeon_crtc*, %struct.radeon_crtc** %11, i64 %13
  %15 = load %struct.radeon_crtc*, %struct.radeon_crtc** %14, align 8
  store %struct.radeon_crtc* %15, %struct.radeon_crtc** %5, align 8
  %16 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %17 = icmp eq %struct.radeon_crtc* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %26, i32 0, i32 3
  %28 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %27, align 8
  store %struct.radeon_flip_work* %28, %struct.radeon_flip_work** %6, align 8
  %29 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RADEON_FLIP_SUBMITTED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %19
  %35 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RADEON_FLIP_SUBMITTED, align 8
  %39 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %84

46:                                               ; preds = %19
  %47 = load i64, i64* @RADEON_FLIP_NONE, align 8
  %48 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %49 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %50, i32 0, i32 3
  store %struct.radeon_flip_work* null, %struct.radeon_flip_work** %51, align 8
  %52 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %57, i32 0, i32 2
  %59 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @drm_crtc_send_vblank_event(i32* %58, i64 %61)
  br label %63

63:                                               ; preds = %56, %46
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %71 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %70, i32 0, i32 2
  %72 = call i32 @drm_crtc_vblank_put(i32* %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %6, align 8
  %75 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @radeon_irq_kms_pflip_irq_put(%struct.radeon_device* %73, i32 %76)
  %78 = load %struct.radeon_crtc*, %struct.radeon_crtc** %5, align 8
  %79 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.radeon_flip_work*, %struct.radeon_flip_work** %6, align 8
  %82 = getelementptr inbounds %struct.radeon_flip_work, %struct.radeon_flip_work* %81, i32 0, i32 0
  %83 = call i32 @queue_work(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %63, %34, %18
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_crtc_send_vblank_event(i32*, i64) #1

declare dso_local i32 @drm_crtc_vblank_put(i32*) #1

declare dso_local i32 @radeon_irq_kms_pflip_irq_put(%struct.radeon_device*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
