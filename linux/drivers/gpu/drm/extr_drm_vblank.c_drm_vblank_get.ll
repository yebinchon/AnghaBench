; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_vblank_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @drm_vblank_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_vblank_get(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_vblank_crtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 2
  %11 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %11, i64 %13
  store %struct.drm_vblank_crtc* %14, %struct.drm_vblank_crtc** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %65

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %22
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 1
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %40 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %39, i32 0, i32 0
  %41 = call i32 @atomic_add_return(i32 1, i32* %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @drm_vblank_enable(%struct.drm_device* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %59

47:                                               ; preds = %34
  %48 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %49 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %6, align 8
  %54 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %53, i32 0, i32 0
  %55 = call i32 @atomic_dec(i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %52, %47
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %60, i32 0, i32 1
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %31, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @drm_vblank_enable(%struct.drm_device*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
