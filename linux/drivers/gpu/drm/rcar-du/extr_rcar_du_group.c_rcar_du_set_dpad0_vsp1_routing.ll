; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_set_dpad0_vsp1_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_set_dpad0_vsp1_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_device = type { %struct.rcar_du_crtc*, %struct.rcar_du_group*, i32, %struct.TYPE_2__* }
%struct.rcar_du_crtc = type { i32 }
%struct.rcar_du_group = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_set_dpad0_vsp1_routing(%struct.rcar_du_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_du_device*, align 8
  %4 = alloca %struct.rcar_du_group*, align 8
  %5 = alloca %struct.rcar_du_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rcar_du_device* %0, %struct.rcar_du_device** %3, align 8
  %8 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %9 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %17 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %29

23:                                               ; preds = %15
  %24 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %25 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DIV_ROUND_UP(i32 %26, i32 2)
  %28 = sub nsw i32 %27, 1
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi i32 [ 0, %22 ], [ %28, %23 ]
  store i32 %30, i32* %6, align 4
  %31 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %32 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %31, i32 0, i32 1
  %33 = load %struct.rcar_du_group*, %struct.rcar_du_group** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %33, i64 %35
  store %struct.rcar_du_group* %36, %struct.rcar_du_group** %4, align 8
  %37 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %38 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %37, i32 0, i32 0
  %39 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %40, 2
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %39, i64 %42
  store %struct.rcar_du_crtc* %43, %struct.rcar_du_crtc** %5, align 8
  %44 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %45 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_prepare_enable(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %59

52:                                               ; preds = %29
  %53 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %54 = call i32 @rcar_du_group_setup_defr8(%struct.rcar_du_group* %53)
  %55 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %56 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable_unprepare(i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %52, %50, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @rcar_du_group_setup_defr8(%struct.rcar_du_group*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
