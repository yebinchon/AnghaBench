; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_rockchip_drm_set_win_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_rockchip_drm_set_win_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.vop = type { i32, i32, %struct.vop_win*, %struct.TYPE_2__* }
%struct.vop_win = type { %struct.vop_win_data* }
%struct.vop_win_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @rockchip_drm_set_win_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_drm_set_win_enabled(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vop_win*, align 8
  %8 = alloca %struct.vop_win_data*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %10 = call %struct.vop* @to_vop(%struct.drm_crtc* %9)
  store %struct.vop* %10, %struct.vop** %5, align 8
  %11 = load %struct.vop*, %struct.vop** %5, align 8
  %12 = getelementptr inbounds %struct.vop, %struct.vop* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %49, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.vop*, %struct.vop** %5, align 8
  %17 = getelementptr inbounds %struct.vop, %struct.vop* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %14
  %23 = load %struct.vop*, %struct.vop** %5, align 8
  %24 = getelementptr inbounds %struct.vop, %struct.vop* %23, i32 0, i32 2
  %25 = load %struct.vop_win*, %struct.vop_win** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %25, i64 %27
  store %struct.vop_win* %28, %struct.vop_win** %7, align 8
  %29 = load %struct.vop_win*, %struct.vop_win** %7, align 8
  %30 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %29, i32 0, i32 0
  %31 = load %struct.vop_win_data*, %struct.vop_win_data** %30, align 8
  store %struct.vop_win_data* %31, %struct.vop_win_data** %8, align 8
  %32 = load %struct.vop*, %struct.vop** %5, align 8
  %33 = load %struct.vop_win_data*, %struct.vop_win_data** %8, align 8
  %34 = load i32, i32* @enable, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %22
  %38 = load %struct.vop*, %struct.vop** %5, align 8
  %39 = getelementptr inbounds %struct.vop, %struct.vop* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @BIT(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %37, %22
  %46 = phi i1 [ false, %22 ], [ %44, %37 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @VOP_WIN_SET(%struct.vop* %32, %struct.vop_win_data* %33, i32 %34, i32 %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %14

52:                                               ; preds = %14
  %53 = load %struct.vop*, %struct.vop** %5, align 8
  %54 = call i32 @vop_cfg_done(%struct.vop* %53)
  %55 = load %struct.vop*, %struct.vop** %5, align 8
  %56 = getelementptr inbounds %struct.vop, %struct.vop* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  ret void
}

declare dso_local %struct.vop* @to_vop(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @VOP_WIN_SET(%struct.vop*, %struct.vop_win_data*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vop_cfg_done(%struct.vop*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
