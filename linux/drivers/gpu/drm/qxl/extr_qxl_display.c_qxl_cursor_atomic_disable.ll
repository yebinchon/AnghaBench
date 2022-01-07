; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_cursor_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_cursor_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.qxl_release = type { i32 }
%struct.qxl_cursor_cmd = type { i32, i32 }

@QXL_RELEASE_CURSOR_CMD = common dso_local global i32 0, align 4
@QXL_CURSOR_HIDE = common dso_local global i32 0, align 4
@QXL_CMD_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @qxl_cursor_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_cursor_atomic_disable(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.qxl_release*, align 8
  %7 = alloca %struct.qxl_cursor_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qxl_device*, %struct.qxl_device** %12, align 8
  store %struct.qxl_device* %13, %struct.qxl_device** %5, align 8
  %14 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %15 = load i32, i32* @QXL_RELEASE_CURSOR_CMD, align 4
  %16 = call i32 @qxl_alloc_release_reserved(%struct.qxl_device* %14, i32 8, i32 %15, %struct.qxl_release** %6, i32* null)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  %22 = call i32 @qxl_release_reserve_list(%struct.qxl_release* %21, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %27 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  %28 = call i32 @qxl_release_free(%struct.qxl_device* %26, %struct.qxl_release* %27)
  br label %48

29:                                               ; preds = %20
  %30 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %31 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  %32 = call i64 @qxl_release_map(%struct.qxl_device* %30, %struct.qxl_release* %31)
  %33 = inttoptr i64 %32 to %struct.qxl_cursor_cmd*
  store %struct.qxl_cursor_cmd* %33, %struct.qxl_cursor_cmd** %7, align 8
  %34 = load i32, i32* @QXL_CURSOR_HIDE, align 4
  %35 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %38 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  %39 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %39, i32 0, i32 0
  %41 = call i32 @qxl_release_unmap(%struct.qxl_device* %37, %struct.qxl_release* %38, i32* %40)
  %42 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %43 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  %44 = load i32, i32* @QXL_CMD_CURSOR, align 4
  %45 = call i32 @qxl_push_cursor_ring_release(%struct.qxl_device* %42, %struct.qxl_release* %43, i32 %44, i32 0)
  %46 = load %struct.qxl_release*, %struct.qxl_release** %6, align 8
  %47 = call i32 @qxl_release_fence_buffer_objects(%struct.qxl_release* %46)
  br label %48

48:                                               ; preds = %29, %25, %19
  ret void
}

declare dso_local i32 @qxl_alloc_release_reserved(%struct.qxl_device*, i32, i32, %struct.qxl_release**, i32*) #1

declare dso_local i32 @qxl_release_reserve_list(%struct.qxl_release*, i32) #1

declare dso_local i32 @qxl_release_free(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i64 @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, i32*) #1

declare dso_local i32 @qxl_push_cursor_ring_release(%struct.qxl_device*, %struct.qxl_release*, i32, i32) #1

declare dso_local i32 @qxl_release_fence_buffer_objects(%struct.qxl_release*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
