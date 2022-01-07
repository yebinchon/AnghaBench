; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_debugfs.c_output_bpc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_debugfs.c_output_bpc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_9__, %struct.TYPE_6__*, %struct.drm_device* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32, i32* }
%struct.drm_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.dm_crtc_state = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Current: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Maximum: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @output_bpc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_bpc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.dm_crtc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.drm_connector*, %struct.drm_connector** %12, align 8
  store %struct.drm_connector* %13, %struct.drm_connector** %5, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 2
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  store %struct.drm_crtc* null, %struct.drm_crtc** %7, align 8
  store %struct.dm_crtc_state* null, %struct.dm_crtc_state** %8, align 8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = call i32 @drm_modeset_lock(i32* %25, i32* null)
  %27 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %28 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp eq %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %83

32:                                               ; preds = %2
  %33 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %36, align 8
  store %struct.drm_crtc* %37, %struct.drm_crtc** %7, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %39 = icmp eq %struct.drm_crtc* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %83

41:                                               ; preds = %32
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %43 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %42, i32 0, i32 0
  %44 = call i32 @drm_modeset_lock(i32* %43, i32* null)
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %83

50:                                               ; preds = %41
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call %struct.dm_crtc_state* @to_dm_crtc_state(i32* %53)
  store %struct.dm_crtc_state* %54, %struct.dm_crtc_state** %8, align 8
  %55 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %8, align 8
  %56 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = icmp eq %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %83

60:                                               ; preds = %50
  %61 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %8, align 8
  %62 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %72 [
    i32 129, label %67
    i32 128, label %68
    i32 132, label %69
    i32 131, label %70
    i32 130, label %71
  ]

67:                                               ; preds = %60
  store i32 6, i32* %10, align 4
  br label %73

68:                                               ; preds = %60
  store i32 8, i32* %10, align 4
  br label %73

69:                                               ; preds = %60
  store i32 10, i32* %10, align 4
  br label %73

70:                                               ; preds = %60
  store i32 12, i32* %10, align 4
  br label %73

71:                                               ; preds = %60
  store i32 16, i32* %10, align 4
  br label %73

72:                                               ; preds = %60
  br label %83

73:                                               ; preds = %71, %70, %69, %68, %67
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %78 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %79 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @seq_printf(%struct.seq_file* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %73, %72, %59, %49, %40, %31
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %85 = icmp ne %struct.drm_crtc* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %88 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %87, i32 0, i32 0
  %89 = call i32 @drm_modeset_unlock(i32* %88)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = call i32 @drm_modeset_unlock(i32* %93)
  %95 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
