; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }
%struct.rcar_du_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rcar_du_plane_state = type { i64 }

@RCAR_DU_PLANE_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @rcar_du_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.rcar_du_plane*, align 8
  %6 = alloca %struct.rcar_du_plane_state*, align 8
  %7 = alloca %struct.rcar_du_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = call %struct.rcar_du_plane* @to_rcar_plane(%struct.drm_plane* %8)
  store %struct.rcar_du_plane* %9, %struct.rcar_du_plane** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 0
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %11, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %5, align 8
  %19 = call i32 @rcar_du_plane_setup(%struct.rcar_du_plane* %18)
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %21 = call %struct.rcar_du_plane_state* @to_rcar_plane_state(%struct.drm_plane_state* %20)
  store %struct.rcar_du_plane_state* %21, %struct.rcar_du_plane_state** %6, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %23, align 8
  %25 = call %struct.rcar_du_plane_state* @to_rcar_plane_state(%struct.drm_plane_state* %24)
  store %struct.rcar_du_plane_state* %25, %struct.rcar_du_plane_state** %7, align 8
  %26 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %27 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RCAR_DU_PLANE_MEMORY, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %7, align 8
  %33 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RCAR_DU_PLANE_MEMORY, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = icmp ne i32 %31, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %17
  %40 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %5, align 8
  %41 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %16, %39, %17
  ret void
}

declare dso_local %struct.rcar_du_plane* @to_rcar_plane(%struct.drm_plane*) #1

declare dso_local i32 @rcar_du_plane_setup(%struct.rcar_du_plane*) #1

declare dso_local %struct.rcar_du_plane_state* @to_rcar_plane_state(%struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
