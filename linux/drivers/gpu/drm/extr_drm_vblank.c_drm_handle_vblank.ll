; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_handle_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_handle_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i64, i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, i32, i32, i32 }

@drm_vblank_offdelay = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_handle_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_vblank_crtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 4
  %11 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %11, i64 %13
  store %struct.drm_vblank_crtc* %14, %struct.drm_vblank_crtc** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp uge i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %94

34:                                               ; preds = %24
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 3
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %43 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %34
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 3
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  store i32 0, i32* %3, align 4
  br label %94

54:                                               ; preds = %34
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @drm_update_vblank_count(%struct.drm_device* %55, i32 %56, i32 1)
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 3
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %62 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %61, i32 0, i32 2
  %63 = call i32 @wake_up(i32* %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %54
  %69 = load i64, i64* @drm_vblank_offdelay, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %73 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %72, i32 0, i32 1
  %74 = call i32 @atomic_read(i32* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %71, %68, %54
  %78 = phi i1 [ false, %68 ], [ false, %54 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @drm_handle_vblank_events(%struct.drm_device* %80, i32 %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 1
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %91 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %90, i32 0, i32 0
  %92 = call i32 @vblank_disable_fn(i32* %91)
  br label %93

93:                                               ; preds = %89, %77
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %46, %33, %23
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_update_vblank_count(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @drm_handle_vblank_events(%struct.drm_device*, i32) #1

declare dso_local i32 @vblank_disable_fn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
