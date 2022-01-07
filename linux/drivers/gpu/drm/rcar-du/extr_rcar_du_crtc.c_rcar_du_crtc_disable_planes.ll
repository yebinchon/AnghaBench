; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_disable_planes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_disable_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, i32, i32, i32, i32, %struct.drm_crtc, %struct.rcar_du_device* }
%struct.drm_crtc = type { i32 }
%struct.rcar_du_device = type { i32 }

@DS2PR = common dso_local global i32 0, align 4
@DS1PR = common dso_local global i32 0, align 4
@DSSR = common dso_local global i32 0, align 4
@DSSR_VBK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"vertical blanking timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*)* @rcar_du_crtc_disable_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_disable_planes(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  %3 = alloca %struct.rcar_du_device*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %6 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %7 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %6, i32 0, i32 6
  %8 = load %struct.rcar_du_device*, %struct.rcar_du_device** %7, align 8
  store %struct.rcar_du_device* %8, %struct.rcar_du_device** %3, align 8
  %9 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %9, i32 0, i32 5
  store %struct.drm_crtc* %10, %struct.drm_crtc** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %11)
  %13 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %13, i32 0, i32 3
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %17 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = srem i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @DS2PR, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @DS1PR, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32 @rcar_du_group_write(i32 %18, i32 %29, i32 0)
  %31 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %32 = load i32, i32* @DSSR, align 4
  %33 = call i32 @rcar_du_crtc_read(%struct.rcar_du_crtc* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @DSSR_VBK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 2, i32 1
  %40 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %41 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %43 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %42, i32 0, i32 3
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %46 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %49 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @msecs_to_jiffies(i32 100)
  %54 = call i32 @wait_event_timeout(i32 %47, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %28
  %57 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %58 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %28
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %63 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %62)
  ret void
}

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rcar_du_group_write(i32, i32, i32) #1

declare dso_local i32 @rcar_du_crtc_read(%struct.rcar_du_crtc*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
