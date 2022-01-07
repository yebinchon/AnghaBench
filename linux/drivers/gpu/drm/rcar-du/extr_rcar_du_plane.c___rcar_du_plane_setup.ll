; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c___rcar_du_plane_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c___rcar_du_plane_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i64, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rcar_du_plane_state = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RCAR_DU_PLANE_VSPD1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rcar_du_plane_setup(%struct.rcar_du_group* %0, %struct.rcar_du_plane_state* %1) #0 {
  %3 = alloca %struct.rcar_du_group*, align 8
  %4 = alloca %struct.rcar_du_plane_state*, align 8
  %5 = alloca %struct.rcar_du_device*, align 8
  %6 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %3, align 8
  store %struct.rcar_du_plane_state* %1, %struct.rcar_du_plane_state** %4, align 8
  %7 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %8 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %7, i32 0, i32 1
  %9 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  store %struct.rcar_du_device* %9, %struct.rcar_du_device** %5, align 8
  %10 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %11 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %12 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %15 = call i32 @rcar_du_plane_setup_format(%struct.rcar_du_group* %10, i32 %13, %struct.rcar_du_plane_state* %14)
  %16 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %24 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = srem i32 %27, 8
  %29 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %30 = call i32 @rcar_du_plane_setup_format(%struct.rcar_du_group* %23, i32 %28, %struct.rcar_du_plane_state* %29)
  br label %31

31:                                               ; preds = %22, %2
  %32 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %33 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %40 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %41 = call i32 @rcar_du_plane_setup_scanout(%struct.rcar_du_group* %39, %struct.rcar_du_plane_state* %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %44 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RCAR_DU_PLANE_VSPD1, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %50 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 0
  store i32 %54, i32* %6, align 4
  %55 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %56 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %63 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %65 = call i32 @rcar_du_set_dpad0_vsp1_routing(%struct.rcar_du_device* %64)
  br label %66

66:                                               ; preds = %60, %48
  br label %67

67:                                               ; preds = %66, %42
  ret void
}

declare dso_local i32 @rcar_du_plane_setup_format(%struct.rcar_du_group*, i32, %struct.rcar_du_plane_state*) #1

declare dso_local i32 @rcar_du_plane_setup_scanout(%struct.rcar_du_group*, %struct.rcar_du_plane_state*) #1

declare dso_local i32 @rcar_du_set_dpad0_vsp1_routing(%struct.rcar_du_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
