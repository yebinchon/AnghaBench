; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_adm1026_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1026.c_adm1026_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adm1026_data = type { i32, i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Initializing device\0A\00", align 1
@ADM1026_REG_CONFIG1 = common dso_local global i64 0, align 8
@ADM1026_REG_CONFIG2 = common dso_local global i64 0, align 8
@ADM1026_REG_CONFIG3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"ADM1026_REG_CONFIG1 is: 0x%02x\0A\00", align 1
@CFG1_MONITOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Monitoring not currently enabled.\0A\00", align 1
@CFG1_INT_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"SMBALERT interrupts are enabled.\0A\00", align 1
@CFG1_AIN8_9 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"in8 and in9 enabled. temp3 disabled.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"temp3 enabled.  in8 and in9 disabled.\0A\00", align 1
@CFG1_THERM_HOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"Automatic THERM, PWM, and temp limits enabled.\0A\00", align 1
@CFG3_GPIO16_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"GPIO16 enabled.  THERM pin disabled.\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"THERM pin enabled.  GPIO16 disabled.\0A\00", align 1
@CFG3_VREF_250 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"Vref is 2.50 Volts.\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Vref is 1.82 Volts.\0A\00", align 1
@ADM1026_REG_GPIO_CFG_0_3 = common dso_local global i64 0, align 8
@gpio_input = common dso_local global i32* null, align 8
@gpio_output = common dso_local global i32* null, align 8
@gpio_inverted = common dso_local global i32* null, align 8
@gpio_normal = common dso_local global i32* null, align 8
@gpio_fan = common dso_local global i32* null, align 8
@CFG1_INT_CLEAR = common dso_local global i32 0, align 4
@CFG1_RESET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Setting CONFIG to: 0x%02x\0A\00", align 1
@ADM1026_REG_FAN_DIV_0_3 = common dso_local global i64 0, align 8
@ADM1026_REG_FAN_DIV_4_7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adm1026_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm1026_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.adm1026_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.adm1026_data* %7, %struct.adm1026_data** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = load i64, i64* @ADM1026_REG_CONFIG1, align 8
  %13 = call i32 @adm1026_read_value(%struct.i2c_client* %11, i64 %12)
  %14 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %15 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = load i64, i64* @ADM1026_REG_CONFIG2, align 8
  %18 = call i32 @adm1026_read_value(%struct.i2c_client* %16, i64 %17)
  %19 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %20 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = load i64, i64* @ADM1026_REG_CONFIG3, align 8
  %23 = call i32 @adm1026_read_value(%struct.i2c_client* %21, i64 %22)
  %24 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %25 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %29 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %33 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CFG1_MONITOR, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %1
  %43 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %44 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CFG1_INT_ENABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %55 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CFG1_AIN8_9, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %70 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CFG1_THERM_HOT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %81 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CFG3_GPIO16_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %94

90:                                               ; preds = %79
  %91 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %96 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CFG3_VREF_250, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %109

105:                                              ; preds = %94
  %106 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %101
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, i32* %4, align 4
  %112 = icmp sle i32 %111, 15
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, 3
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %119 = load i64, i64* @ADM1026_REG_GPIO_CFG_0_3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sdiv i32 %120, 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %119, %122
  %124 = call i32 @adm1026_read_value(%struct.i2c_client* %118, i64 %123)
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %113
  %126 = load i32, i32* %3, align 4
  %127 = and i32 %126, 3
  %128 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %129 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = load i32, i32* %3, align 4
  %135 = ashr i32 %134, 2
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %110

139:                                              ; preds = %110
  %140 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %141 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = ashr i32 %142, 6
  %144 = and i32 %143, 3
  %145 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %146 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 16
  store i32 %144, i32* %148, align 4
  %149 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %150 = call i32 @adm1026_print_gpio(%struct.i2c_client* %149)
  %151 = load i32*, i32** @gpio_input, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %175, label %155

155:                                              ; preds = %139
  %156 = load i32*, i32** @gpio_output, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %175, label %160

160:                                              ; preds = %155
  %161 = load i32*, i32** @gpio_inverted, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, -1
  br i1 %164, label %175, label %165

165:                                              ; preds = %160
  %166 = load i32*, i32** @gpio_normal, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, -1
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i32*, i32** @gpio_fan, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %178

175:                                              ; preds = %170, %165, %160, %155, %139
  %176 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %177 = call i32 @adm1026_fixup_gpio(%struct.i2c_client* %176)
  br label %178

178:                                              ; preds = %175, %170
  %179 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %180 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  store i32 255, i32* %181, align 8
  %182 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %183 = load i64, i64* @ADM1026_REG_CONFIG1, align 8
  %184 = call i32 @adm1026_read_value(%struct.i2c_client* %182, i64 %183)
  store i32 %184, i32* %3, align 4
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @CFG1_MONITOR, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @CFG1_INT_CLEAR, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* @CFG1_RESET, align 4
  %191 = xor i32 %190, -1
  %192 = and i32 %189, %191
  %193 = and i32 %187, %192
  store i32 %193, i32* %3, align 4
  %194 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load i32, i32* %3, align 4
  %197 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %3, align 4
  %199 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %200 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %202 = load i64, i64* @ADM1026_REG_CONFIG1, align 8
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @adm1026_write_value(%struct.i2c_client* %201, i64 %202, i32 %203)
  %205 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %206 = load i64, i64* @ADM1026_REG_FAN_DIV_0_3, align 8
  %207 = call i32 @adm1026_read_value(%struct.i2c_client* %205, i64 %206)
  %208 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %209 = load i64, i64* @ADM1026_REG_FAN_DIV_4_7, align 8
  %210 = call i32 @adm1026_read_value(%struct.i2c_client* %208, i64 %209)
  %211 = shl i32 %210, 8
  %212 = or i32 %207, %211
  store i32 %212, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %228, %178
  %214 = load i32, i32* %4, align 4
  %215 = icmp sle i32 %214, 7
  br i1 %215, label %216, label %231

216:                                              ; preds = %213
  %217 = load i32, i32* %3, align 4
  %218 = and i32 %217, 3
  %219 = call i32 @DIV_FROM_REG(i32 %218)
  %220 = load %struct.adm1026_data*, %struct.adm1026_data** %5, align 8
  %221 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %219, i32* %225, align 4
  %226 = load i32, i32* %3, align 4
  %227 = ashr i32 %226, 2
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %4, align 4
  br label %213

231:                                              ; preds = %213
  ret void
}

declare dso_local %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @adm1026_read_value(%struct.i2c_client*, i64) #1

declare dso_local i32 @adm1026_print_gpio(%struct.i2c_client*) #1

declare dso_local i32 @adm1026_fixup_gpio(%struct.i2c_client*) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
