; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_domain_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_domain_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"DISPLAY_CORE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PIPE_A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PIPE_B\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"PIPE_C\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"PIPE_D\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"PIPE_A_PANEL_FITTER\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"PIPE_B_PANEL_FITTER\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"PIPE_C_PANEL_FITTER\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"PIPE_D_PANEL_FITTER\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TRANSCODER_A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"TRANSCODER_B\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"TRANSCODER_C\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"TRANSCODER_D\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"TRANSCODER_EDP\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"TRANSCODER_VDSC_PW2\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"TRANSCODER_DSI_A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"TRANSCODER_DSI_C\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"PORT_DDI_A_LANES\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"PORT_DDI_B_LANES\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"PORT_DDI_C_LANES\00", align 1
@POWER_DOMAIN_PORT_DDI_TC1_LANES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"PORT_DDI_TC1_LANES\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"PORT_DDI_D_LANES\00", align 1
@POWER_DOMAIN_PORT_DDI_TC2_LANES = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"PORT_DDI_TC2_LANES\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"PORT_DDI_E_LANES\00", align 1
@POWER_DOMAIN_PORT_DDI_TC3_LANES = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [19 x i8] c"PORT_DDI_TC3_LANES\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"PORT_DDI_F_LANES\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"PORT_DDI_TC4_LANES\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"PORT_DDI_TC5_LANES\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"PORT_DDI_TC6_LANES\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"PORT_DDI_A_IO\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"PORT_DDI_B_IO\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"PORT_DDI_C_IO\00", align 1
@POWER_DOMAIN_PORT_DDI_TC1_IO = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"PORT_DDI_TC1_IO\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"PORT_DDI_D_IO\00", align 1
@POWER_DOMAIN_PORT_DDI_TC2_IO = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [16 x i8] c"PORT_DDI_TC2_IO\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"PORT_DDI_E_IO\00", align 1
@POWER_DOMAIN_PORT_DDI_TC3_IO = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [16 x i8] c"PORT_DDI_TC3_IO\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"PORT_DDI_F_IO\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"PORT_DDI_TC4_IO\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"PORT_DDI_TC5_IO\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"PORT_DDI_TC6_IO\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"PORT_DSI\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"PORT_CRT\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"PORT_OTHER\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"VGA\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"AUDIO\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"AUX_A\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"AUX_B\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"AUX_C\00", align 1
@POWER_DOMAIN_AUX_TC1 = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [8 x i8] c"AUX_TC1\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"AUX_D\00", align 1
@POWER_DOMAIN_AUX_TC2 = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [8 x i8] c"AUX_TC2\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"AUX_E\00", align 1
@POWER_DOMAIN_AUX_TC3 = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"AUX_TC3\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"AUX_F\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"AUX_TC4\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"AUX_TC5\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"AUX_TC6\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"AUX_IO_A\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"AUX_TBT1\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"AUX_TBT2\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"AUX_TBT3\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"AUX_TBT4\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"AUX_TBT5\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"AUX_TBT6\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"GMBUS\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"INIT\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"MODESET\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"GT_IRQ\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"DPLL_DC_OFF\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @intel_display_power_domain_str(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = call i32 @IS_GEN(%struct.drm_i915_private* %7, i32 12)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %143 [
    i32 171, label %10
    i32 165, label %11
    i32 163, label %12
    i32 161, label %13
    i32 159, label %14
    i32 164, label %15
    i32 162, label %16
    i32 160, label %17
    i32 158, label %18
    i32 136, label %19
    i32 135, label %20
    i32 134, label %21
    i32 133, label %22
    i32 130, label %23
    i32 129, label %24
    i32 132, label %25
    i32 131, label %26
    i32 155, label %27
    i32 153, label %28
    i32 151, label %29
    i32 149, label %30
    i32 147, label %39
    i32 145, label %48
    i32 143, label %57
    i32 141, label %58
    i32 139, label %59
    i32 156, label %60
    i32 154, label %61
    i32 152, label %62
    i32 150, label %63
    i32 148, label %72
    i32 146, label %81
    i32 144, label %90
    i32 142, label %91
    i32 140, label %92
    i32 138, label %93
    i32 157, label %94
    i32 137, label %95
    i32 128, label %96
    i32 188, label %97
    i32 187, label %98
    i32 186, label %99
    i32 185, label %100
    i32 184, label %101
    i32 183, label %110
    i32 182, label %119
    i32 174, label %128
    i32 173, label %129
    i32 172, label %130
    i32 181, label %131
    i32 180, label %132
    i32 179, label %133
    i32 178, label %134
    i32 177, label %135
    i32 176, label %136
    i32 175, label %137
    i32 169, label %138
    i32 167, label %139
    i32 166, label %140
    i32 168, label %141
    i32 170, label %142
  ]

10:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %146

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %146

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %146

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %146

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %146

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %146

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %146

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %146

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %146

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %146

20:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %146

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %146

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %146

23:                                               ; preds = %2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %146

24:                                               ; preds = %2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %146

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %146

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %146

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %146

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %146

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %146

30:                                               ; preds = %2
  %31 = load i32, i32* @POWER_DOMAIN_PORT_DDI_TC1_LANES, align 4
  %32 = icmp ne i32 149, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUILD_BUG_ON(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0)
  store i8* %38, i8** %3, align 8
  br label %146

39:                                               ; preds = %2
  %40 = load i32, i32* @POWER_DOMAIN_PORT_DDI_TC2_LANES, align 4
  %41 = icmp ne i32 147, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUILD_BUG_ON(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0)
  store i8* %47, i8** %3, align 8
  br label %146

48:                                               ; preds = %2
  %49 = load i32, i32* @POWER_DOMAIN_PORT_DDI_TC3_LANES, align 4
  %50 = icmp ne i32 145, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUILD_BUG_ON(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)
  store i8* %56, i8** %3, align 8
  br label %146

57:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %146

58:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %146

59:                                               ; preds = %2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %146

60:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %146

61:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %146

62:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8** %3, align 8
  br label %146

63:                                               ; preds = %2
  %64 = load i32, i32* @POWER_DOMAIN_PORT_DDI_TC1_IO, align 4
  %65 = icmp ne i32 150, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUILD_BUG_ON(i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0)
  store i8* %71, i8** %3, align 8
  br label %146

72:                                               ; preds = %2
  %73 = load i32, i32* @POWER_DOMAIN_PORT_DDI_TC2_IO, align 4
  %74 = icmp ne i32 148, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUILD_BUG_ON(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0)
  store i8* %80, i8** %3, align 8
  br label %146

81:                                               ; preds = %2
  %82 = load i32, i32* @POWER_DOMAIN_PORT_DDI_TC3_IO, align 4
  %83 = icmp ne i32 146, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUILD_BUG_ON(i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0)
  store i8* %89, i8** %3, align 8
  br label %146

90:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8** %3, align 8
  br label %146

91:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8** %3, align 8
  br label %146

92:                                               ; preds = %2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0), i8** %3, align 8
  br label %146

93:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8** %3, align 8
  br label %146

94:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i8** %3, align 8
  br label %146

95:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8** %3, align 8
  br label %146

96:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i8** %3, align 8
  br label %146

97:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8** %3, align 8
  br label %146

98:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8** %3, align 8
  br label %146

99:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i8** %3, align 8
  br label %146

100:                                              ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i8** %3, align 8
  br label %146

101:                                              ; preds = %2
  %102 = load i32, i32* @POWER_DOMAIN_AUX_TC1, align 4
  %103 = icmp ne i32 184, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUILD_BUG_ON(i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)
  store i8* %109, i8** %3, align 8
  br label %146

110:                                              ; preds = %2
  %111 = load i32, i32* @POWER_DOMAIN_AUX_TC2, align 4
  %112 = icmp ne i32 183, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @BUILD_BUG_ON(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0)
  store i8* %118, i8** %3, align 8
  br label %146

119:                                              ; preds = %2
  %120 = load i32, i32* @POWER_DOMAIN_AUX_TC3, align 4
  %121 = icmp ne i32 182, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @BUILD_BUG_ON(i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i64 0, i64 0)
  store i8* %127, i8** %3, align 8
  br label %146

128:                                              ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i8** %3, align 8
  br label %146

129:                                              ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8** %3, align 8
  br label %146

130:                                              ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i8** %3, align 8
  br label %146

131:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), i8** %3, align 8
  br label %146

132:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i8** %3, align 8
  br label %146

133:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8** %3, align 8
  br label %146

134:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i64 0, i64 0), i8** %3, align 8
  br label %146

135:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i64 0, i64 0), i8** %3, align 8
  br label %146

136:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i64 0, i64 0), i8** %3, align 8
  br label %146

137:                                              ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i64 0, i64 0), i8** %3, align 8
  br label %146

138:                                              ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8** %3, align 8
  br label %146

139:                                              ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), i8** %3, align 8
  br label %146

140:                                              ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8** %3, align 8
  br label %146

141:                                              ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8** %3, align 8
  br label %146

142:                                              ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8** %3, align 8
  br label %146

143:                                              ; preds = %2
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @MISSING_CASE(i32 %144)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.70, i64 0, i64 0), i8** %3, align 8
  br label %146

146:                                              ; preds = %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %119, %110, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %81, %72, %63, %62, %61, %60, %59, %58, %57, %48, %39, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %147 = load i8*, i8** %3, align 8
  ret i8* %147
}

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
