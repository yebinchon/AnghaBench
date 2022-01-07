; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_atomic_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_atomic_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.drm_property = type { i32 }
%struct.rcar_du_plane_state = type { i32 }
%struct.rcar_du_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_property* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rcar_du_device* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_property*, i32)* @rcar_du_plane_atomic_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_plane_atomic_set_property(%struct.drm_plane* %0, %struct.drm_plane_state* %1, %struct.drm_property* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rcar_du_plane_state*, align 8
  %11 = alloca %struct.rcar_du_device*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %6, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %13 = call %struct.rcar_du_plane_state* @to_rcar_plane_state(%struct.drm_plane_state* %12)
  store %struct.rcar_du_plane_state* %13, %struct.rcar_du_plane_state** %10, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %15 = call %struct.TYPE_6__* @to_rcar_plane(%struct.drm_plane* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.rcar_du_device*, %struct.rcar_du_device** %18, align 8
  store %struct.rcar_du_device* %19, %struct.rcar_du_device** %11, align 8
  %20 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %21 = load %struct.rcar_du_device*, %struct.rcar_du_device** %11, align 8
  %22 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.drm_property*, %struct.drm_property** %23, align 8
  %25 = icmp eq %struct.drm_property* %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %10, align 8
  %29 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.rcar_du_plane_state* @to_rcar_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.TYPE_6__* @to_rcar_plane(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
