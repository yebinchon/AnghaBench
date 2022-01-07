; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_build_info_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_build_info_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.encoder_info_frame }
%struct.encoder_info_frame = type { %struct.TYPE_13__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_17__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@SIGNAL_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resource_build_info_frame(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.encoder_info_frame*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %5 = load i32, i32* @SIGNAL_TYPE_NONE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store %struct.encoder_info_frame* %8, %struct.encoder_info_frame** %4, align 8
  %9 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %10 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %13 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %16 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %19 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %22 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %25 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @dc_is_hdmi_signal(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %1
  %36 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %37 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %36, i32 0, i32 5
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %39 = call i32 @set_avi_info_frame(%struct.TYPE_12__* %37, %struct.pipe_ctx* %38)
  %40 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %41 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %40, i32 0, i32 4
  %42 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = call i32 @set_vendor_info_packet(%struct.TYPE_17__* %41, %struct.TYPE_16__* %44)
  %46 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %47 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %46, i32 0, i32 2
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = call i32 @set_spd_info_packet(%struct.TYPE_18__* %47, %struct.TYPE_16__* %50)
  %52 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %53 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %52, i32 0, i32 1
  %54 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = call i32 @set_hdr_static_info_packet(%struct.TYPE_19__* %53, %struct.TYPE_16__* %56)
  br label %82

58:                                               ; preds = %1
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @dc_is_dp_signal(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %64 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %63, i32 0, i32 3
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = call i32 @set_vsc_info_packet(%struct.TYPE_15__* %64, %struct.TYPE_16__* %67)
  %69 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %70 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %69, i32 0, i32 2
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 0
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = call i32 @set_spd_info_packet(%struct.TYPE_18__* %70, %struct.TYPE_16__* %73)
  %75 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %76 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %75, i32 0, i32 1
  %77 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %78 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = call i32 @set_hdr_static_info_packet(%struct.TYPE_19__* %76, %struct.TYPE_16__* %79)
  br label %81

81:                                               ; preds = %62, %58
  br label %82

82:                                               ; preds = %81, %35
  %83 = load %struct.encoder_info_frame*, %struct.encoder_info_frame** %4, align 8
  %84 = getelementptr inbounds %struct.encoder_info_frame, %struct.encoder_info_frame* %83, i32 0, i32 0
  %85 = call i32 @patch_gamut_packet_checksum(%struct.TYPE_13__* %84)
  ret void
}

declare dso_local i64 @dc_is_hdmi_signal(i32) #1

declare dso_local i32 @set_avi_info_frame(%struct.TYPE_12__*, %struct.pipe_ctx*) #1

declare dso_local i32 @set_vendor_info_packet(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @set_spd_info_packet(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @set_hdr_static_info_packet(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i64 @dc_is_dp_signal(i32) #1

declare dso_local i32 @set_vsc_info_packet(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @patch_gamut_packet_checksum(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
