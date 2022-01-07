; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_voltage_scaling_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_voltage_scaling_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.igp_power_info = type { i32, i32, i64, i32, i64 }

@RS780D_FVTHROTPWMFBDIVRANGEREG0_DFLT = common dso_local global i32 0, align 4
@RS780D_FVTHROTPWMFBDIVRANGEREG1_DFLT = common dso_local global i32 0, align 4
@RS780D_FVTHROTPWMFBDIVRANGEREG2_DFLT = common dso_local global i32 0, align 4
@RS880D_FVTHROTPWMFBDIVRANGEREG0_DFLT = common dso_local global i32 0, align 4
@RS880D_FVTHROTPWMFBDIVRANGEREG1_DFLT = common dso_local global i32 0, align 4
@RS880D_FVTHROTPWMFBDIVRANGEREG2_DFLT = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMFBDIVRANGEREG0_DFLT = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMFBDIVRANGEREG1_DFLT = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMFBDIVRANGEREG2_DFLT = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMRANGE3_GPIO_DFLT = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMRANGE0_GPIO_DFLT = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMRANGE2_GPIO_DFLT = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMRANGE1_GPIO_DFLT = common dso_local global i32 0, align 4
@FVTHROT_PWM_CTRL_REG0 = common dso_local global i32 0, align 4
@STARTING_PWM_HIGHTIME_MASK = common dso_local global i32 0, align 4
@NUMBER_OF_CYCLES_IN_PERIOD_MASK = common dso_local global i32 0, align 4
@FORCE_STARTING_PWM_HIGHTIME = common dso_local global i32 0, align 4
@INVERT_PWM_WAVEFORM = common dso_local global i32 0, align 4
@FVTHROT_PWM_CTRL_REG1 = common dso_local global i32 0, align 4
@FVTHROT_PWM_US_REG0 = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMUSREG0_DFLT = common dso_local global i32 0, align 4
@FVTHROT_PWM_US_REG1 = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMUSREG1_DFLT = common dso_local global i32 0, align 4
@FVTHROT_PWM_DS_REG0 = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMDSREG0_DFLT = common dso_local global i32 0, align 4
@FVTHROT_PWM_DS_REG1 = common dso_local global i32 0, align 4
@RS780_FVTHROTPWMDSREG1_DFLT = common dso_local global i32 0, align 4
@FVTHROT_PWM_FEEDBACK_DIV_REG1 = common dso_local global i32 0, align 4
@RANGE0_PWM_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@FVTHROT_PWM_FEEDBACK_DIV_REG2 = common dso_local global i32 0, align 4
@FVTHROT_PWM_FEEDBACK_DIV_REG3 = common dso_local global i32 0, align 4
@FVTHROT_PWM_FEEDBACK_DIV_REG4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs780_voltage_scaling_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_voltage_scaling_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.igp_power_info*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca [4 x i32], align 16
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %7)
  store %struct.igp_power_info* %8, %struct.igp_power_info** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 38420
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @RS780D_FVTHROTPWMFBDIVRANGEREG0_DFLT, align 4
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @RS780D_FVTHROTPWMFBDIVRANGEREG1_DFLT, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @RS780D_FVTHROTPWMFBDIVRANGEREG2_DFLT, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %23, i32* %24, align 4
  br label %54

25:                                               ; preds = %1
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 38676
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 38677
  br i1 %38, label %39, label %46

39:                                               ; preds = %32, %25
  %40 = load i32, i32* @RS880D_FVTHROTPWMFBDIVRANGEREG0_DFLT, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @RS880D_FVTHROTPWMFBDIVRANGEREG1_DFLT, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @RS880D_FVTHROTPWMFBDIVRANGEREG2_DFLT, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %44, i32* %45, align 4
  br label %53

46:                                               ; preds = %32
  %47 = load i32, i32* @RS780_FVTHROTPWMFBDIVRANGEREG0_DFLT, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @RS780_FVTHROTPWMFBDIVRANGEREG1_DFLT, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @RS780_FVTHROTPWMFBDIVRANGEREG2_DFLT, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %56 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %61 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %62, i32* %63, align 16
  %64 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %65 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %69 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %70, i32* %71, align 8
  %72 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %73 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %74, i32* %75, align 4
  br label %121

76:                                               ; preds = %54
  %77 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %78 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @RS780_FVTHROTPWMRANGE3_GPIO_DFLT, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @RS780_FVTHROTPWMRANGE0_GPIO_DFLT, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %86, i32* %87, align 16
  %88 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %89 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @RS780_FVTHROTPWMRANGE2_GPIO_DFLT, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @RS780_FVTHROTPWMRANGE1_GPIO_DFLT, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %97, i32* %98, align 4
  %99 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %100 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @RS780_FVTHROTPWMRANGE1_GPIO_DFLT, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @RS780_FVTHROTPWMRANGE2_GPIO_DFLT, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %108, i32* %109, align 8
  %110 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %111 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @RS780_FVTHROTPWMRANGE0_GPIO_DFLT, align 4
  br label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @RS780_FVTHROTPWMRANGE3_GPIO_DFLT, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %59
  %122 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %123 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %124 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @STARTING_PWM_HIGHTIME(i32 %125)
  %127 = load i32, i32* @STARTING_PWM_HIGHTIME_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = call i32 @WREG32_P(i32 %122, i32 %126, i32 %128)
  %130 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %131 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %132 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @NUMBER_OF_CYCLES_IN_PERIOD(i32 %133)
  %135 = load i32, i32* @NUMBER_OF_CYCLES_IN_PERIOD_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = call i32 @WREG32_P(i32 %130, i32 %134, i32 %136)
  %138 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %139 = load i32, i32* @FORCE_STARTING_PWM_HIGHTIME, align 4
  %140 = load i32, i32* @FORCE_STARTING_PWM_HIGHTIME, align 4
  %141 = xor i32 %140, -1
  %142 = call i32 @WREG32_P(i32 %138, i32 %139, i32 %141)
  %143 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %144 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %121
  %148 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %149 = load i32, i32* @INVERT_PWM_WAVEFORM, align 4
  %150 = load i32, i32* @INVERT_PWM_WAVEFORM, align 4
  %151 = xor i32 %150, -1
  %152 = call i32 @WREG32_P(i32 %148, i32 %149, i32 %151)
  br label %158

153:                                              ; preds = %121
  %154 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %155 = load i32, i32* @INVERT_PWM_WAVEFORM, align 4
  %156 = xor i32 %155, -1
  %157 = call i32 @WREG32_P(i32 %154, i32 0, i32 %156)
  br label %158

158:                                              ; preds = %153, %147
  %159 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %160 = call i32 @rs780_voltage_scaling_enable(%struct.radeon_device* %159, i32 1)
  %161 = load i32, i32* @FVTHROT_PWM_CTRL_REG1, align 4
  %162 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %163 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @MIN_PWM_HIGHTIME(i32 %164)
  %166 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %167 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @MAX_PWM_HIGHTIME(i32 %168)
  %170 = or i32 %165, %169
  %171 = call i32 @WREG32(i32 %161, i32 %170)
  %172 = load i32, i32* @FVTHROT_PWM_US_REG0, align 4
  %173 = load i32, i32* @RS780_FVTHROTPWMUSREG0_DFLT, align 4
  %174 = call i32 @WREG32(i32 %172, i32 %173)
  %175 = load i32, i32* @FVTHROT_PWM_US_REG1, align 4
  %176 = load i32, i32* @RS780_FVTHROTPWMUSREG1_DFLT, align 4
  %177 = call i32 @WREG32(i32 %175, i32 %176)
  %178 = load i32, i32* @FVTHROT_PWM_DS_REG0, align 4
  %179 = load i32, i32* @RS780_FVTHROTPWMDSREG0_DFLT, align 4
  %180 = call i32 @WREG32(i32 %178, i32 %179)
  %181 = load i32, i32* @FVTHROT_PWM_DS_REG1, align 4
  %182 = load i32, i32* @RS780_FVTHROTPWMDSREG1_DFLT, align 4
  %183 = call i32 @WREG32(i32 %181, i32 %182)
  %184 = load i32, i32* @FVTHROT_PWM_FEEDBACK_DIV_REG1, align 4
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @RANGE0_PWM_FEEDBACK_DIV(i32 %186)
  %188 = load i32, i32* @RANGE0_PWM_FEEDBACK_DIV_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = call i32 @WREG32_P(i32 %184, i32 %187, i32 %189)
  %191 = load i32, i32* @FVTHROT_PWM_FEEDBACK_DIV_REG2, align 4
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @RANGE1_PWM_FEEDBACK_DIV(i32 %193)
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @RANGE2_PWM_FEEDBACK_DIV(i32 %196)
  %198 = or i32 %194, %197
  %199 = call i32 @WREG32(i32 %191, i32 %198)
  %200 = load i32, i32* @FVTHROT_PWM_FEEDBACK_DIV_REG3, align 4
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @RANGE0_PWM(i32 %202)
  %204 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @RANGE1_PWM(i32 %205)
  %207 = or i32 %203, %206
  %208 = call i32 @WREG32(i32 %200, i32 %207)
  %209 = load i32, i32* @FVTHROT_PWM_FEEDBACK_DIV_REG4, align 4
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @RANGE2_PWM(i32 %211)
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @RANGE3_PWM(i32 %214)
  %216 = or i32 %212, %215
  %217 = call i32 @WREG32(i32 %209, i32 %216)
  ret void
}

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @STARTING_PWM_HIGHTIME(i32) #1

declare dso_local i32 @NUMBER_OF_CYCLES_IN_PERIOD(i32) #1

declare dso_local i32 @rs780_voltage_scaling_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @MIN_PWM_HIGHTIME(i32) #1

declare dso_local i32 @MAX_PWM_HIGHTIME(i32) #1

declare dso_local i32 @RANGE0_PWM_FEEDBACK_DIV(i32) #1

declare dso_local i32 @RANGE1_PWM_FEEDBACK_DIV(i32) #1

declare dso_local i32 @RANGE2_PWM_FEEDBACK_DIV(i32) #1

declare dso_local i32 @RANGE0_PWM(i32) #1

declare dso_local i32 @RANGE1_PWM(i32) #1

declare dso_local i32 @RANGE2_PWM(i32) #1

declare dso_local i32 @RANGE3_PWM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
