; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_primary_apply_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_primary_apply_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_6__*, %struct.drm_device* }
%struct.TYPE_6__ = type { i64, i64, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, i64 }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.qxl_crtc = type { i32 }
%struct.qxl_cursor_cmd = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.qxl_release = type { i32 }

@QXL_RELEASE_CURSOR_CMD = common dso_local global i32 0, align 4
@QXL_CURSOR_SET = common dso_local global i32 0, align 4
@QXL_CMD_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*)* @qxl_primary_apply_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_primary_apply_cursor(%struct.drm_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.qxl_crtc*, align 8
  %8 = alloca %struct.qxl_cursor_cmd*, align 8
  %9 = alloca %struct.qxl_release*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %4, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.qxl_device*, %struct.qxl_device** %15, align 8
  store %struct.qxl_device* %16, %struct.qxl_device** %5, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %20, align 8
  store %struct.drm_framebuffer* %21, %struct.drm_framebuffer** %6, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.qxl_crtc* @to_qxl_crtc(i32 %26)
  store %struct.qxl_crtc* %27, %struct.qxl_crtc** %7, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.qxl_crtc*, %struct.qxl_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %122

33:                                               ; preds = %1
  %34 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %35 = load i32, i32* @QXL_RELEASE_CURSOR_CMD, align 4
  %36 = call i32 @qxl_alloc_release_reserved(%struct.qxl_device* %34, i32 40, i32 %35, %struct.qxl_release** %9, i32* null)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %2, align 4
  br label %122

41:                                               ; preds = %33
  %42 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %43 = load %struct.qxl_crtc*, %struct.qxl_crtc** %7, align 8
  %44 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @qxl_release_list_add(%struct.qxl_release* %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %117

50:                                               ; preds = %41
  %51 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %52 = call i32 @qxl_release_reserve_list(%struct.qxl_release* %51, i32 0)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %117

56:                                               ; preds = %50
  %57 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %58 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %59 = call i64 @qxl_release_map(%struct.qxl_device* %57, %struct.qxl_release* %58)
  %60 = inttoptr i64 %59 to %struct.qxl_cursor_cmd*
  store %struct.qxl_cursor_cmd* %60, %struct.qxl_cursor_cmd** %8, align 8
  %61 = load i32, i32* @QXL_CURSOR_SET, align 4
  %62 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %65 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %70 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %8, align 8
  %74 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i64 %72, i64* %77, align 8
  %78 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %79 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %84 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %8, align 8
  %88 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i64 %86, i64* %91, align 8
  %92 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %93 = load %struct.qxl_crtc*, %struct.qxl_crtc** %7, align 8
  %94 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @qxl_bo_physical_address(%struct.qxl_device* %92, i32 %95, i32 0)
  %97 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %8, align 8
  %98 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  %101 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %8, align 8
  %102 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %106 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %107 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %8, align 8
  %108 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %107, i32 0, i32 0
  %109 = call i32 @qxl_release_unmap(%struct.qxl_device* %105, %struct.qxl_release* %106, i32* %108)
  %110 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %111 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %112 = load i32, i32* @QXL_CMD_CURSOR, align 4
  %113 = call i32 @qxl_push_cursor_ring_release(%struct.qxl_device* %110, %struct.qxl_release* %111, i32 %112, i32 0)
  %114 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %115 = call i32 @qxl_release_fence_buffer_objects(%struct.qxl_release* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %2, align 4
  br label %122

117:                                              ; preds = %55, %49
  %118 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %119 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %120 = call i32 @qxl_release_free(%struct.qxl_device* %118, %struct.qxl_release* %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %56, %39, %32
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.qxl_crtc* @to_qxl_crtc(i32) #1

declare dso_local i32 @qxl_alloc_release_reserved(%struct.qxl_device*, i32, i32, %struct.qxl_release**, i32*) #1

declare dso_local i32 @qxl_release_list_add(%struct.qxl_release*, i32) #1

declare dso_local i32 @qxl_release_reserve_list(%struct.qxl_release*, i32) #1

declare dso_local i64 @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_bo_physical_address(%struct.qxl_device*, i32, i32) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, i32*) #1

declare dso_local i32 @qxl_push_cursor_ring_release(%struct.qxl_device*, %struct.qxl_release*, i32, i32) #1

declare dso_local i32 @qxl_release_fence_buffer_objects(%struct.qxl_release*) #1

declare dso_local i32 @qxl_release_free(%struct.qxl_device*, %struct.qxl_release*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
