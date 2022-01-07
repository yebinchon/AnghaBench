; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_irq.c_drm_irq_uninstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_irq.c_drm_irq_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.drm_vblank_crtc* }
%struct.TYPE_2__ = type { {}* }
%struct.drm_vblank_crtc = type { i32, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"irq=%d\0A\00", align 1
@DRIVER_LEGACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_irq_uninstall(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_vblank_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %1
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 5
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %51, %17
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 6
  %31 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %31, i64 %33
  store %struct.drm_vblank_crtc* %34, %struct.drm_vblank_crtc** %7, align 8
  %35 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %7, align 8
  %36 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %51

40:                                               ; preds = %28
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = load i32, i32* @DRIVER_MODESET, align 4
  %43 = call i64 @drm_core_check_feature(%struct.drm_device* %41, i32 %42)
  %44 = call i32 @WARN_ON(i64 %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @drm_vblank_disable_and_save(%struct.drm_device* %45, i32 %46)
  %48 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %7, align 8
  %49 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %48, i32 0, i32 0
  %50 = call i32 @wake_up(i32* %49)
  br label %51

51:                                               ; preds = %40, %39
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %22

54:                                               ; preds = %22
  %55 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 5
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %59

59:                                               ; preds = %54, %1
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %102

65:                                               ; preds = %59
  %66 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %71 = load i32, i32* @DRIVER_LEGACY, align 4
  %72 = call i64 @drm_core_check_feature(%struct.drm_device* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @vga_client_register(i32 %77, i32* null, i32* null, i32* null)
  br label %79

79:                                               ; preds = %74, %65
  %80 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %81 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.drm_device*)**
  %85 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %84, align 8
  %86 = icmp ne i32 (%struct.drm_device*)* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %89 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = bitcast {}** %91 to i32 (%struct.drm_device*)**
  %93 = load i32 (%struct.drm_device*)*, i32 (%struct.drm_device*)** %92, align 8
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = call i32 %93(%struct.drm_device* %94)
  br label %96

96:                                               ; preds = %87, %79
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %101 = call i32 @free_irq(i32 %99, %struct.drm_device* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %96, %62
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_vblank_disable_and_save(%struct.drm_device*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @vga_client_register(i32, i32*, i32*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
