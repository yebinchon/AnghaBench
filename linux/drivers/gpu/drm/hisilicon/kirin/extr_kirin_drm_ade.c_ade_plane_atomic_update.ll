; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_kirin_drm_ade.c_ade_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kirin_plane = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @ade_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ade_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.kirin_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  store %struct.drm_plane_state* %9, %struct.drm_plane_state** %5, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = call %struct.kirin_plane* @to_kirin_plane(%struct.drm_plane* %10)
  store %struct.kirin_plane* %11, %struct.kirin_plane** %6, align 8
  %12 = load %struct.kirin_plane*, %struct.kirin_plane** %6, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %37 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 16
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  %44 = call i32 @ade_update_channel(%struct.kirin_plane* %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %31, i32 %35, i32 %39, i32 %43)
  ret void
}

declare dso_local %struct.kirin_plane* @to_kirin_plane(%struct.drm_plane*) #1

declare dso_local i32 @ade_update_channel(%struct.kirin_plane*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
