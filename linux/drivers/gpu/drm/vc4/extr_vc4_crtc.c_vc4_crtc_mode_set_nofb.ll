; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_crtc.c_vc4_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_crtc = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vc4_crtc_state = type { i64 }
%struct.drm_printer = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CRTC %d regs before:\0A\00", align 1
@SCALER_DISPCTRL_DSP3_MUX = common dso_local global i32 0, align 4
@SCALER_DISPCTRL = common dso_local global i32 0, align 4
@SCALER_DISPCTRL_DSP3_MUX_MASK = common dso_local global i32 0, align 4
@SCALER_DISPBKGND_AUTOHS = common dso_local global i32 0, align 4
@SCALER_DISPBKGND_GAMMA = common dso_local global i32 0, align 4
@SCALER_DISPBKGND_INTERLACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CRTC %d regs after:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @vc4_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_crtc*, align 8
  %6 = alloca %struct.vc4_crtc_state*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_printer, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_printer, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 1
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %3, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %17)
  store %struct.vc4_dev* %18, %struct.vc4_dev** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = call %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc* %19)
  store %struct.vc4_crtc* %20, %struct.vc4_crtc** %5, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call %struct.vc4_crtc_state* @to_vc4_crtc_state(%struct.TYPE_4__* %23)
  store %struct.vc4_crtc_state* %24, %struct.vc4_crtc_state** %6, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %7, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %1
  %37 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %38 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @drm_info_printer(i32* %40)
  %42 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %44 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %48 = call i32 @drm_crtc_index(%struct.drm_crtc* %47)
  %49 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %51 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %50, i32 0, i32 1
  %52 = call i32 @drm_print_regset32(%struct.drm_printer* %10, i32* %51)
  br label %53

53:                                               ; preds = %36, %1
  %54 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %55 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %60 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @SCALER_DISPCTRL_DSP3_MUX, align 4
  %65 = call i32 @VC4_SET_FIELD(i32 3, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @SCALER_DISPCTRL_DSP3_MUX, align 4
  %68 = call i32 @VC4_SET_FIELD(i32 2, i32 %67)
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* @SCALER_DISPCTRL, align 4
  %71 = call i32 @HVS_READ(i32 %70)
  %72 = load i32, i32* @SCALER_DISPCTRL_DSP3_MUX_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @SCALER_DISPCTRL, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @HVS_WRITE(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %69, %53
  %81 = load %struct.vc4_crtc_state*, %struct.vc4_crtc_state** %6, align 8
  %82 = getelementptr inbounds %struct.vc4_crtc_state, %struct.vc4_crtc_state* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %87 = call i32 @vc4_crtc_config_pv(%struct.drm_crtc* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %90 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @SCALER_DISPBKGNDX(i32 %91)
  %93 = load i32, i32* @SCALER_DISPBKGND_AUTOHS, align 4
  %94 = load i32, i32* @SCALER_DISPBKGND_GAMMA, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @SCALER_DISPBKGND_INTERLACE, align 4
  br label %101

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  %103 = or i32 %95, %102
  %104 = call i32 @HVS_WRITE(i32 %92, i32 %103)
  %105 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %106 = call i32 @vc4_crtc_lut_load(%struct.drm_crtc* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %101
  %110 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %111 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @drm_info_printer(i32* %113)
  %115 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %13, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %117 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %121 = call i32 @drm_crtc_index(%struct.drm_crtc* %120)
  %122 = call i32 @dev_info(i32* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %124 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %123, i32 0, i32 1
  %125 = call i32 @drm_print_regset32(%struct.drm_printer* %13, i32* %124)
  br label %126

126:                                              ; preds = %109, %101
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.vc4_crtc_state* @to_vc4_crtc_state(%struct.TYPE_4__*) #1

declare dso_local i32 @drm_info_printer(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @drm_print_regset32(%struct.drm_printer*, i32*) #1

declare dso_local i32 @VC4_SET_FIELD(i32, i32) #1

declare dso_local i32 @HVS_READ(i32) #1

declare dso_local i32 @HVS_WRITE(i32, i32) #1

declare dso_local i32 @vc4_crtc_config_pv(%struct.drm_crtc*) #1

declare dso_local i32 @SCALER_DISPBKGNDX(i32) #1

declare dso_local i32 @vc4_crtc_lut_load(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
