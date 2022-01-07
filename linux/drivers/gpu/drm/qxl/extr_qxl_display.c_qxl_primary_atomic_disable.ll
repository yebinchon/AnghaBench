; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_primary_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_primary_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.qxl_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @qxl_primary_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_primary_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.qxl_bo*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.qxl_device*, %struct.qxl_device** %10, align 8
  store %struct.qxl_device* %11, %struct.qxl_device** %5, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.qxl_bo* @gem_to_qxl_bo(i32 %23)
  store %struct.qxl_bo* %24, %struct.qxl_bo** %6, align 8
  %25 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %26 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %16
  %30 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %31 = call i32 @qxl_io_destroy_primary(%struct.qxl_device* %30)
  %32 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %33 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %16
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(i32) #1

declare dso_local i32 @qxl_io_destroy_primary(%struct.qxl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
