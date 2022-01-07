; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_queue_vblank_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_queue_vblank_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32 }
%union.drm_wait_vblank = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.drm_file = type { i32 }
%struct.drm_pending_vblank_event = type { i32, %struct.TYPE_13__, i8*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.drm_crtc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_EVENT_VBLANK = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"event on vblank count %llu, current %llu, crtc %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i8*, %union.drm_wait_vblank*, %struct.drm_file*)* @drm_queue_vblank_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_queue_vblank_event(%struct.drm_device* %0, i32 %1, i8* %2, %union.drm_wait_vblank* %3, %struct.drm_file* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %union.drm_wait_vblank*, align 8
  %11 = alloca %struct.drm_file*, align 8
  %12 = alloca %struct.drm_vblank_crtc*, align 8
  %13 = alloca %struct.drm_pending_vblank_event*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %union.drm_wait_vblank* %3, %union.drm_wait_vblank** %10, align 8
  store %struct.drm_file* %4, %struct.drm_file** %11, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 2
  %21 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %21, i64 %23
  store %struct.drm_vblank_crtc* %24, %struct.drm_vblank_crtc** %12, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.drm_pending_vblank_event* @kzalloc(i32 40, i32 %25)
  store %struct.drm_pending_vblank_event* %26, %struct.drm_pending_vblank_event** %13, align 8
  %27 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %28 = icmp eq %struct.drm_pending_vblank_event* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %17, align 4
  br label %157

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %35 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @DRM_EVENT_VBLANK, align 4
  %37 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %38 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %42 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i32 16, i32* %44, align 8
  %45 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %10, align 8
  %46 = bitcast %union.drm_wait_vblank* %45 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %50 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 8
  %53 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %54 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %58 = load i32, i32* @DRIVER_MODESET, align 4
  %59 = call i64 @drm_core_check_feature(%struct.drm_device* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %32
  %62 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device* %62, i32 %63)
  store %struct.drm_crtc* %64, %struct.drm_crtc** %18, align 8
  %65 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %66 = icmp ne %struct.drm_crtc* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %69 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %73 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %61
  br label %77

77:                                               ; preds = %76, %32
  %78 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 0
  %80 = load i64, i64* %15, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %12, align 8
  %83 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @READ_ONCE(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %17, align 4
  br label %150

90:                                               ; preds = %77
  %91 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %92 = load %struct.drm_file*, %struct.drm_file** %11, align 8
  %93 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %94 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %93, i32 0, i32 1
  %95 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %96 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = call i32 @drm_event_reserve_init_locked(%struct.drm_device* %91, %struct.drm_file* %92, %struct.TYPE_13__* %94, %struct.TYPE_14__* %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %150

102:                                              ; preds = %90
  %103 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @drm_vblank_count_and_time(%struct.drm_device* %103, i32 %104, i32* %14)
  store i8* %105, i8** %16, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %106, i8* %107, i32 %108)
  %110 = load %struct.drm_file*, %struct.drm_file** %11, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @trace_drm_vblank_event_queued(%struct.drm_file* %110, i32 %111, i8* %112)
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %116 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i64 @vblank_passed(i8* %117, i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %102
  %122 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @drm_vblank_put(%struct.drm_device* %122, i32 %123)
  %125 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %126 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @send_vblank_event(%struct.drm_device* %125, %struct.drm_pending_vblank_event* %126, i8* %127, i32 %128)
  %130 = load i8*, i8** %16, align 8
  %131 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %10, align 8
  %132 = bitcast %union.drm_wait_vblank* %131 to %struct.TYPE_12__*
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  br label %145

134:                                              ; preds = %102
  %135 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %136 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %139 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %138, i32 0, i32 1
  %140 = call i32 @list_add_tail(i32* %137, i32* %139)
  %141 = load i8*, i8** %9, align 8
  %142 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %10, align 8
  %143 = bitcast %union.drm_wait_vblank* %142 to %struct.TYPE_12__*
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  br label %145

145:                                              ; preds = %134, %121
  %146 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %147 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %146, i32 0, i32 0
  %148 = load i64, i64* %15, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  store i32 0, i32* %6, align 4
  br label %162

150:                                              ; preds = %101, %87
  %151 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %152 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %151, i32 0, i32 0
  %153 = load i64, i64* %15, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  %155 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %156 = call i32 @kfree(%struct.drm_pending_vblank_event* %155)
  br label %157

157:                                              ; preds = %150, %29
  %158 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @drm_vblank_put(%struct.drm_device* %158, i32 %159)
  %161 = load i32, i32* %17, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %157, %145
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.drm_pending_vblank_event* @kzalloc(i32, i32) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_crtc* @drm_crtc_from_index(%struct.drm_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @drm_event_reserve_init_locked(%struct.drm_device*, %struct.drm_file*, %struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i8* @drm_vblank_count_and_time(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*, i8*, i32) #1

declare dso_local i32 @trace_drm_vblank_event_queued(%struct.drm_file*, i32, i8*) #1

declare dso_local i64 @vblank_passed(i8*, i8*) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

declare dso_local i32 @send_vblank_event(%struct.drm_device*, %struct.drm_pending_vblank_event*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.drm_pending_vblank_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
