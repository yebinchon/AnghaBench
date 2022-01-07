; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }

@SYSTEM = common dso_local global i32 0, align 4
@ANALOG_POWER_ON = common dso_local global i32 0, align 4
@CPU_POWER_OFF = common dso_local global i32 0, align 4
@INT_CLEAR = common dso_local global i32 0, align 4
@EX_WDAT = common dso_local global i32 0, align 4
@COMMON_SETUP1 = common dso_local global i32 0, align 4
@COMMON_SETUP2 = common dso_local global i32 0, align 4
@COMMON_SETUP3 = common dso_local global i32 0, align 4
@SEL_TBL_DEFAULT = common dso_local global i32 0, align 4
@EN_MULTI = common dso_local global i32 0, align 4
@THRESHOLD_GESTURE = common dso_local global i32 0, align 4
@THRESHOLD_GESTURE_DEFAULT = common dso_local global i32 0, align 4
@INTERVAL_TIME = common dso_local global i32 0, align 4
@INTERVAL_TIME_DEFAULT = common dso_local global i32 0, align 4
@CPU_FREQ = common dso_local global i32 0, align 4
@CPU_FREQ_10MHZ = common dso_local global i32 0, align 4
@PRM_SWOFF_TIME = common dso_local global i32 0, align 4
@PRM_SWOFF_TIME_DEFAULT = common dso_local global i32 0, align 4
@ADC_CTRL = common dso_local global i32 0, align 4
@ADC_DIV_DEFAULT = common dso_local global i32 0, align 4
@ADC_WAIT = common dso_local global i32 0, align 4
@ADC_WAIT_DEFAULT = common dso_local global i32 0, align 4
@STEP_X = common dso_local global i32 0, align 4
@STEP_X_DEFAULT = common dso_local global i32 0, align 4
@STEP_Y = common dso_local global i32 0, align 4
@STEP_Y_DEFAULT = common dso_local global i32 0, align 4
@OFFSET_X = common dso_local global i32 0, align 4
@OFFSET_X_DEFAULT = common dso_local global i32 0, align 4
@OFFSET_Y = common dso_local global i32 0, align 4
@OFFSET_Y_DEFAULT = common dso_local global i32 0, align 4
@THRESHOLD_TOUCH = common dso_local global i32 0, align 4
@THRESHOLD_TOUCH_DEFAULT = common dso_local global i32 0, align 4
@EVR_XY = common dso_local global i32 0, align 4
@EVR_XY_DEFAULT = common dso_local global i32 0, align 4
@EVR_X = common dso_local global i32 0, align 4
@EVR_X_DEFAULT = common dso_local global i32 0, align 4
@EVR_Y = common dso_local global i32 0, align 4
@EVR_Y_DEFAULT = common dso_local global i32 0, align 4
@CALIBRATION_ADJUST = common dso_local global i32 0, align 4
@CALIBRATION_ADJUST_DEFAULT = common dso_local global i32 0, align 4
@SWCONT = common dso_local global i32 0, align 4
@SWCONT_DEFAULT = common dso_local global i32 0, align 4
@TEST1 = common dso_local global i32 0, align 4
@DUALTOUCH_STABILIZE_ON = common dso_local global i32 0, align 4
@DUALTOUCH_REG_ON = common dso_local global i32 0, align 4
@BU21023_FIRMWARE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to load firmware: %d\0A\00", align 1
@CALIBRATION_REG1 = common dso_local global i32 0, align 4
@CALIBRATION_REG1_DEFAULT = common dso_local global i32 0, align 4
@CALIBRATION_REG2 = common dso_local global i32 0, align 4
@CALIBRATION_REG2_DEFAULT = common dso_local global i32 0, align 4
@CALIBRATION_REG3 = common dso_local global i32 0, align 4
@CALIBRATION_REG3_DEFAULT = common dso_local global i32 0, align 4
@FORCE_CALIBRATION = common dso_local global i32 0, align 4
@FORCE_CALIBRATION_OFF = common dso_local global i32 0, align 4
@FORCE_CALIBRATION_ON = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@CALIBRATION_DONE = common dso_local global i32 0, align 4
@SLEEP_OUT = common dso_local global i32 0, align 4
@SLEEP_IN = common dso_local global i32 0, align 4
@PROGRAM_LOAD_DONE = common dso_local global i32 0, align 4
@ERR_MASK = common dso_local global i32 0, align 4
@PROGRAM_LOAD_ERR = common dso_local global i32 0, align 4
@CPU_TIMEOUT = common dso_local global i32 0, align 4
@ADC_TIMEOUT = common dso_local global i32 0, align 4
@CPU_POWER_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @rohm_ts_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rohm_ts_device_init(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @disable_irq(i32 %12)
  %14 = call i32 @udelay(i32 200)
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = load i32, i32* @SYSTEM, align 4
  %17 = load i32, i32* @ANALOG_POWER_ON, align 4
  %18 = load i32, i32* @CPU_POWER_OFF, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %15, i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %329

25:                                               ; preds = %2
  %26 = call i32 @udelay(i32 200)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @INT_CLEAR, align 4
  %29 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %27, i32 %28, i32 255)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %329

34:                                               ; preds = %25
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @EX_WDAT, align 4
  %37 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %35, i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %329

42:                                               ; preds = %34
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* @COMMON_SETUP1, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %43, i32 %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %329

50:                                               ; preds = %42
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load i32, i32* @COMMON_SETUP2, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %329

59:                                               ; preds = %50
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @COMMON_SETUP3, align 4
  %62 = load i32, i32* @SEL_TBL_DEFAULT, align 4
  %63 = load i32, i32* @EN_MULTI, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %60, i32 %61, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %329

70:                                               ; preds = %59
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @THRESHOLD_GESTURE, align 4
  %73 = load i32, i32* @THRESHOLD_GESTURE_DEFAULT, align 4
  %74 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %71, i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %329

79:                                               ; preds = %70
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = load i32, i32* @INTERVAL_TIME, align 4
  %82 = load i32, i32* @INTERVAL_TIME_DEFAULT, align 4
  %83 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %329

88:                                               ; preds = %79
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load i32, i32* @CPU_FREQ, align 4
  %91 = load i32, i32* @CPU_FREQ_10MHZ, align 4
  %92 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %89, i32 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %329

97:                                               ; preds = %88
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* @PRM_SWOFF_TIME, align 4
  %100 = load i32, i32* @PRM_SWOFF_TIME_DEFAULT, align 4
  %101 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %98, i32 %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %329

106:                                              ; preds = %97
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i32, i32* @ADC_CTRL, align 4
  %109 = load i32, i32* @ADC_DIV_DEFAULT, align 4
  %110 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %107, i32 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %329

115:                                              ; preds = %106
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = load i32, i32* @ADC_WAIT, align 4
  %118 = load i32, i32* @ADC_WAIT_DEFAULT, align 4
  %119 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %116, i32 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %329

124:                                              ; preds = %115
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = load i32, i32* @STEP_X, align 4
  %127 = load i32, i32* @STEP_X_DEFAULT, align 4
  %128 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %125, i32 %126, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %329

133:                                              ; preds = %124
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = load i32, i32* @STEP_Y, align 4
  %136 = load i32, i32* @STEP_Y_DEFAULT, align 4
  %137 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %134, i32 %135, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %329

142:                                              ; preds = %133
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = load i32, i32* @OFFSET_X, align 4
  %145 = load i32, i32* @OFFSET_X_DEFAULT, align 4
  %146 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %143, i32 %144, i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %329

151:                                              ; preds = %142
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = load i32, i32* @OFFSET_Y, align 4
  %154 = load i32, i32* @OFFSET_Y_DEFAULT, align 4
  %155 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %152, i32 %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %329

160:                                              ; preds = %151
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = load i32, i32* @THRESHOLD_TOUCH, align 4
  %163 = load i32, i32* @THRESHOLD_TOUCH_DEFAULT, align 4
  %164 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %161, i32 %162, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %329

169:                                              ; preds = %160
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = load i32, i32* @EVR_XY, align 4
  %172 = load i32, i32* @EVR_XY_DEFAULT, align 4
  %173 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %170, i32 %171, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %3, align 4
  br label %329

178:                                              ; preds = %169
  %179 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %180 = load i32, i32* @EVR_X, align 4
  %181 = load i32, i32* @EVR_X_DEFAULT, align 4
  %182 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %179, i32 %180, i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %3, align 4
  br label %329

187:                                              ; preds = %178
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = load i32, i32* @EVR_Y, align 4
  %190 = load i32, i32* @EVR_Y_DEFAULT, align 4
  %191 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %188, i32 %189, i32 %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* %7, align 4
  store i32 %195, i32* %3, align 4
  br label %329

196:                                              ; preds = %187
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = load i32, i32* @CALIBRATION_ADJUST, align 4
  %199 = load i32, i32* @CALIBRATION_ADJUST_DEFAULT, align 4
  %200 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %197, i32 %198, i32 %199)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %329

205:                                              ; preds = %196
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = load i32, i32* @SWCONT, align 4
  %208 = load i32, i32* @SWCONT_DEFAULT, align 4
  %209 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %206, i32 %207, i32 %208)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %205
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %3, align 4
  br label %329

214:                                              ; preds = %205
  %215 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %216 = load i32, i32* @TEST1, align 4
  %217 = load i32, i32* @DUALTOUCH_STABILIZE_ON, align 4
  %218 = load i32, i32* @DUALTOUCH_REG_ON, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %215, i32 %216, i32 %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %214
  %224 = load i32, i32* %7, align 4
  store i32 %224, i32* %3, align 4
  br label %329

225:                                              ; preds = %214
  %226 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %227 = load i32, i32* @BU21023_FIRMWARE_NAME, align 4
  %228 = call i32 @rohm_ts_load_firmware(%struct.i2c_client* %226, i32 %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %225
  %232 = load %struct.device*, %struct.device** %6, align 8
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @dev_err(%struct.device* %232, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* %7, align 4
  store i32 %235, i32* %3, align 4
  br label %329

236:                                              ; preds = %225
  %237 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %238 = load i32, i32* @CALIBRATION_REG1, align 4
  %239 = load i32, i32* @CALIBRATION_REG1_DEFAULT, align 4
  %240 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %237, i32 %238, i32 %239)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %3, align 4
  br label %329

245:                                              ; preds = %236
  %246 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %247 = load i32, i32* @CALIBRATION_REG2, align 4
  %248 = load i32, i32* @CALIBRATION_REG2_DEFAULT, align 4
  %249 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %246, i32 %247, i32 %248)
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = load i32, i32* %7, align 4
  store i32 %253, i32* %3, align 4
  br label %329

254:                                              ; preds = %245
  %255 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %256 = load i32, i32* @CALIBRATION_REG3, align 4
  %257 = load i32, i32* @CALIBRATION_REG3_DEFAULT, align 4
  %258 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %255, i32 %256, i32 %257)
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %3, align 4
  br label %329

263:                                              ; preds = %254
  %264 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %265 = load i32, i32* @FORCE_CALIBRATION, align 4
  %266 = load i32, i32* @FORCE_CALIBRATION_OFF, align 4
  %267 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %264, i32 %265, i32 %266)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %3, align 4
  br label %329

272:                                              ; preds = %263
  %273 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %274 = load i32, i32* @FORCE_CALIBRATION, align 4
  %275 = load i32, i32* @FORCE_CALIBRATION_ON, align 4
  %276 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %273, i32 %274, i32 %275)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %272
  %280 = load i32, i32* %7, align 4
  store i32 %280, i32* %3, align 4
  br label %329

281:                                              ; preds = %272
  %282 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %283 = load i32, i32* @INT_CLEAR, align 4
  %284 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %282, i32 %283, i32 255)
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %281
  %288 = load i32, i32* %7, align 4
  store i32 %288, i32* %3, align 4
  br label %329

289:                                              ; preds = %281
  %290 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %291 = load i32, i32* @INT_MASK, align 4
  %292 = load i32, i32* @CALIBRATION_DONE, align 4
  %293 = load i32, i32* @SLEEP_OUT, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @SLEEP_IN, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @PROGRAM_LOAD_DONE, align 4
  %298 = or i32 %296, %297
  %299 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %290, i32 %291, i32 %298)
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %289
  %303 = load i32, i32* %7, align 4
  store i32 %303, i32* %3, align 4
  br label %329

304:                                              ; preds = %289
  %305 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %306 = load i32, i32* @ERR_MASK, align 4
  %307 = load i32, i32* @PROGRAM_LOAD_ERR, align 4
  %308 = load i32, i32* @CPU_TIMEOUT, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* @ADC_TIMEOUT, align 4
  %311 = or i32 %309, %310
  %312 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %305, i32 %306, i32 %311)
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* %7, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %304
  %316 = load i32, i32* %7, align 4
  store i32 %316, i32* %3, align 4
  br label %329

317:                                              ; preds = %304
  %318 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %319 = load i32, i32* @SYSTEM, align 4
  %320 = load i32, i32* @ANALOG_POWER_ON, align 4
  %321 = load i32, i32* @CPU_POWER_ON, align 4
  %322 = or i32 %320, %321
  %323 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %318, i32 %319, i32 %322)
  store i32 %323, i32* %7, align 4
  %324 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %325 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @enable_irq(i32 %326)
  %328 = load i32, i32* %7, align 4
  store i32 %328, i32* %3, align 4
  br label %329

329:                                              ; preds = %317, %315, %302, %287, %279, %270, %261, %252, %243, %231, %223, %212, %203, %194, %185, %176, %167, %158, %149, %140, %131, %122, %113, %104, %95, %86, %77, %68, %57, %48, %40, %32, %23
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @rohm_ts_load_firmware(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
