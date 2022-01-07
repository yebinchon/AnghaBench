; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_get_v_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_get_v_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.core_freesync = type { i32 }
%struct.crtc_position = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_freesync_get_v_position(%struct.mod_freesync* %0, %struct.dc_stream_state* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mod_freesync*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.core_freesync*, align 8
  %11 = alloca %struct.crtc_position, align 4
  store %struct.mod_freesync* %0, %struct.mod_freesync** %6, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.core_freesync* null, %struct.core_freesync** %10, align 8
  %12 = load %struct.mod_freesync*, %struct.mod_freesync** %6, align 8
  %13 = icmp eq %struct.mod_freesync* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

15:                                               ; preds = %4
  %16 = load %struct.mod_freesync*, %struct.mod_freesync** %6, align 8
  %17 = call %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync* %16)
  store %struct.core_freesync* %17, %struct.core_freesync** %10, align 8
  %18 = load %struct.core_freesync*, %struct.core_freesync** %10, align 8
  %19 = getelementptr inbounds %struct.core_freesync, %struct.core_freesync* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %11, i32 0, i32 0
  %22 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %11, i32 0, i32 1
  %23 = call i64 @dc_stream_get_crtc_position(i32 %20, %struct.dc_stream_state** %7, i32 1, i32* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %11, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.crtc_position, %struct.crtc_position* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %5, align 4
  br label %33

32:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %25, %14
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync*) #1

declare dso_local i64 @dc_stream_get_crtc_position(i32, %struct.dc_stream_state**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
