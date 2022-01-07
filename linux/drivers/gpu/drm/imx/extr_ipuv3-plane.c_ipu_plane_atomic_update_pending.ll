; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_atomic_update_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_atomic_update_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32 }
%struct.ipu_plane = type { i32 }
%struct.ipu_plane_state = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_plane_atomic_update_pending(%struct.drm_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.ipu_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.ipu_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = call %struct.ipu_plane* @to_ipu_plane(%struct.drm_plane* %7)
  store %struct.ipu_plane* %8, %struct.ipu_plane** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %10, align 8
  store %struct.drm_plane_state* %11, %struct.drm_plane_state** %5, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %13 = call %struct.ipu_plane_state* @to_ipu_plane_state(%struct.drm_plane_state* %12)
  store %struct.ipu_plane_state* %13, %struct.ipu_plane_state** %6, align 8
  %14 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %15 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.ipu_plane_state*, %struct.ipu_plane_state** %6, align 8
  %21 = getelementptr inbounds %struct.ipu_plane_state, %struct.ipu_plane_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.ipu_plane*, %struct.ipu_plane** %4, align 8
  %26 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ipu_prg_channel_configure_pending(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24, %18
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ipu_plane* @to_ipu_plane(%struct.drm_plane*) #1

declare dso_local %struct.ipu_plane_state* @to_ipu_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @ipu_prg_channel_configure_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
