; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_primary_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_primary_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.qxl_device* }
%struct.qxl_device = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.qxl_bo = type { i64, i32, %struct.qxl_bo* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @qxl_primary_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_primary_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.qxl_bo*, align 8
  %7 = alloca %struct.qxl_bo*, align 8
  %8 = alloca %struct.drm_clip_rect, align 4
  %9 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %10 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.qxl_device*, %struct.qxl_device** %13, align 8
  store %struct.qxl_device* %14, %struct.qxl_device** %5, align 8
  %15 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.qxl_bo* @gem_to_qxl_bo(i32 %23)
  store %struct.qxl_bo* %24, %struct.qxl_bo** %6, align 8
  %25 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %8, i32 0, i32 0
  %26 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %25, align 4
  %33 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %8, i32 0, i32 1
  %34 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %33, align 4
  %41 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %8, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %8, i32 0, i32 3
  store i32 0, i32* %42, align 4
  store i32 0, i32* %9, align 4
  %43 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %44 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %43, i32 0, i32 2
  %45 = load %struct.qxl_bo*, %struct.qxl_bo** %44, align 8
  %46 = icmp ne %struct.qxl_bo* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %2
  %48 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %49 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %48, i32 0, i32 2
  %50 = load %struct.qxl_bo*, %struct.qxl_bo** %49, align 8
  br label %53

51:                                               ; preds = %2
  %52 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi %struct.qxl_bo* [ %50, %47 ], [ %52, %51 ]
  store %struct.qxl_bo* %54, %struct.qxl_bo** %7, align 8
  %55 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %56 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %61 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %66 = call i32 @qxl_io_destroy_primary(%struct.qxl_device* %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %69 = load %struct.qxl_bo*, %struct.qxl_bo** %7, align 8
  %70 = call i32 @qxl_io_create_primary(%struct.qxl_device* %68, %struct.qxl_bo* %69)
  %71 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %72 = call i32 @qxl_primary_apply_cursor(%struct.drm_plane* %71)
  br label %73

73:                                               ; preds = %67, %53
  %74 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %75 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %80 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %83 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %78, %73
  %93 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %94 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %95 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @qxl_draw_dirty_fb(%struct.qxl_device* %93, %struct.TYPE_10__* %98, %struct.qxl_bo* %99, i32 0, i32 0, %struct.drm_clip_rect* %8, i32 1, i32 1, i32 %100)
  ret void
}

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(i32) #1

declare dso_local i32 @qxl_io_destroy_primary(%struct.qxl_device*) #1

declare dso_local i32 @qxl_io_create_primary(%struct.qxl_device*, %struct.qxl_bo*) #1

declare dso_local i32 @qxl_primary_apply_cursor(%struct.drm_plane*) #1

declare dso_local i32 @qxl_draw_dirty_fb(%struct.qxl_device*, %struct.TYPE_10__*, %struct.qxl_bo*, i32, i32, %struct.drm_clip_rect*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
