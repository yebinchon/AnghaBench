; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus.c_pmbus_find_sensor_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus.c_pmbus_find_sensor_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pmbus_driver_info = type { i32*, i32 }

@PMBUS_READ_VIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_VIN = common dso_local global i32 0, align 4
@PMBUS_READ_VCAP = common dso_local global i32 0, align 4
@PMBUS_HAVE_VCAP = common dso_local global i32 0, align 4
@PMBUS_READ_IIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_IIN = common dso_local global i32 0, align 4
@PMBUS_READ_PIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_PIN = common dso_local global i32 0, align 4
@PMBUS_STATUS_INPUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_INPUT = common dso_local global i32 0, align 4
@PMBUS_FAN_CONFIG_12 = common dso_local global i32 0, align 4
@PMBUS_READ_FAN_SPEED_1 = common dso_local global i32 0, align 4
@PMBUS_HAVE_FAN12 = common dso_local global i32 0, align 4
@PMBUS_STATUS_FAN_12 = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_FAN12 = common dso_local global i32 0, align 4
@PMBUS_FAN_CONFIG_34 = common dso_local global i32 0, align 4
@PMBUS_READ_FAN_SPEED_3 = common dso_local global i32 0, align 4
@PMBUS_HAVE_FAN34 = common dso_local global i32 0, align 4
@PMBUS_STATUS_FAN_34 = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_FAN34 = common dso_local global i32 0, align 4
@PMBUS_READ_TEMPERATURE_1 = common dso_local global i32 0, align 4
@PMBUS_HAVE_TEMP = common dso_local global i32 0, align 4
@PMBUS_READ_TEMPERATURE_2 = common dso_local global i32 0, align 4
@PMBUS_HAVE_TEMP2 = common dso_local global i32 0, align 4
@PMBUS_READ_TEMPERATURE_3 = common dso_local global i32 0, align 4
@PMBUS_HAVE_TEMP3 = common dso_local global i32 0, align 4
@PMBUS_STATUS_TEMPERATURE = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_TEMP = common dso_local global i32 0, align 4
@PMBUS_READ_VOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_VOUT = common dso_local global i32 0, align 4
@PMBUS_STATUS_VOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_VOUT = common dso_local global i32 0, align 4
@PMBUS_READ_IOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_IOUT = common dso_local global i32 0, align 4
@PMBUS_STATUS_IOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_IOUT = common dso_local global i32 0, align 4
@PMBUS_READ_POUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_POUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.pmbus_driver_info*)* @pmbus_find_sensor_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmbus_find_sensor_groups(%struct.i2c_client* %0, %struct.pmbus_driver_info* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.pmbus_driver_info*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.pmbus_driver_info* %1, %struct.pmbus_driver_info** %4, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i32, i32* @PMBUS_READ_VIN, align 4
  %8 = call i64 @pmbus_check_word_register(%struct.i2c_client* %6, i32 0, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @PMBUS_HAVE_VIN, align 4
  %12 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %13 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %11
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %10, %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = load i32, i32* @PMBUS_READ_VCAP, align 4
  %21 = call i64 @pmbus_check_word_register(%struct.i2c_client* %19, i32 0, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* @PMBUS_HAVE_VCAP, align 4
  %25 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %26 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23, %18
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load i32, i32* @PMBUS_READ_IIN, align 4
  %34 = call i64 @pmbus_check_word_register(%struct.i2c_client* %32, i32 0, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* @PMBUS_HAVE_IIN, align 4
  %38 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %39 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = load i32, i32* @PMBUS_READ_PIN, align 4
  %47 = call i64 @pmbus_check_word_register(%struct.i2c_client* %45, i32 0, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i32, i32* @PMBUS_HAVE_PIN, align 4
  %51 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %52 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %50
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %59 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %66 = load i32, i32* @PMBUS_STATUS_INPUT, align 4
  %67 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %65, i32 0, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* @PMBUS_HAVE_STATUS_INPUT, align 4
  %71 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %72 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %64, %57
  %78 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %79 = load i32, i32* @PMBUS_FAN_CONFIG_12, align 4
  %80 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %78, i32 0, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %77
  %83 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %84 = load i32, i32* @PMBUS_READ_FAN_SPEED_1, align 4
  %85 = call i64 @pmbus_check_word_register(%struct.i2c_client* %83, i32 0, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %82
  %88 = load i32, i32* @PMBUS_HAVE_FAN12, align 4
  %89 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %90 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = load i32, i32* @PMBUS_STATUS_FAN_12, align 4
  %97 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %95, i32 0, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %87
  %100 = load i32, i32* @PMBUS_HAVE_STATUS_FAN12, align 4
  %101 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %102 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %99, %87
  br label %108

108:                                              ; preds = %107, %82, %77
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = load i32, i32* @PMBUS_FAN_CONFIG_34, align 4
  %111 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %109, i32 0, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %108
  %114 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %115 = load i32, i32* @PMBUS_READ_FAN_SPEED_3, align 4
  %116 = call i64 @pmbus_check_word_register(%struct.i2c_client* %114, i32 0, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %113
  %119 = load i32, i32* @PMBUS_HAVE_FAN34, align 4
  %120 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %121 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %119
  store i32 %125, i32* %123, align 4
  %126 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %127 = load i32, i32* @PMBUS_STATUS_FAN_34, align 4
  %128 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %126, i32 0, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %118
  %131 = load i32, i32* @PMBUS_HAVE_STATUS_FAN34, align 4
  %132 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %133 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %130, %118
  br label %139

139:                                              ; preds = %138, %113, %108
  %140 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %141 = load i32, i32* @PMBUS_READ_TEMPERATURE_1, align 4
  %142 = call i64 @pmbus_check_word_register(%struct.i2c_client* %140, i32 0, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load i32, i32* @PMBUS_HAVE_TEMP, align 4
  %146 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %147 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %139
  %153 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %154 = load i32, i32* @PMBUS_READ_TEMPERATURE_2, align 4
  %155 = call i64 @pmbus_check_word_register(%struct.i2c_client* %153, i32 0, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load i32, i32* @PMBUS_HAVE_TEMP2, align 4
  %159 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %160 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %158
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %157, %152
  %166 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %167 = load i32, i32* @PMBUS_READ_TEMPERATURE_3, align 4
  %168 = call i64 @pmbus_check_word_register(%struct.i2c_client* %166, i32 0, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load i32, i32* @PMBUS_HAVE_TEMP3, align 4
  %172 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %173 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %170, %165
  %179 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %180 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @PMBUS_HAVE_TEMP, align 4
  %185 = load i32, i32* @PMBUS_HAVE_TEMP2, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @PMBUS_HAVE_TEMP3, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %183, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %178
  %192 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %193 = load i32, i32* @PMBUS_STATUS_TEMPERATURE, align 4
  %194 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %192, i32 0, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load i32, i32* @PMBUS_HAVE_STATUS_TEMP, align 4
  %198 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %199 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %197
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %196, %191, %178
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %291, %204
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %208 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %294

211:                                              ; preds = %205
  %212 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @PMBUS_READ_VOUT, align 4
  %215 = call i64 @pmbus_check_word_register(%struct.i2c_client* %212, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %243

217:                                              ; preds = %211
  %218 = load i32, i32* @PMBUS_HAVE_VOUT, align 4
  %219 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %220 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %218
  store i32 %226, i32* %224, align 4
  %227 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* @PMBUS_STATUS_VOUT, align 4
  %230 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %227, i32 %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %217
  %233 = load i32, i32* @PMBUS_HAVE_STATUS_VOUT, align 4
  %234 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %235 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %233
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %232, %217
  br label %243

243:                                              ; preds = %242, %211
  %244 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* @PMBUS_READ_IOUT, align 4
  %247 = call i64 @pmbus_check_word_register(%struct.i2c_client* %244, i32 %245, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %274

249:                                              ; preds = %243
  %250 = load i32, i32* @PMBUS_HAVE_IOUT, align 4
  %251 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %252 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = or i32 %257, %250
  store i32 %258, i32* %256, align 4
  %259 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %260 = load i32, i32* @PMBUS_STATUS_IOUT, align 4
  %261 = call i64 @pmbus_check_byte_register(%struct.i2c_client* %259, i32 0, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %249
  %264 = load i32, i32* @PMBUS_HAVE_STATUS_IOUT, align 4
  %265 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %266 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %264
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %263, %249
  br label %274

274:                                              ; preds = %273, %243
  %275 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* @PMBUS_READ_POUT, align 4
  %278 = call i64 @pmbus_check_word_register(%struct.i2c_client* %275, i32 %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %274
  %281 = load i32, i32* @PMBUS_HAVE_POUT, align 4
  %282 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %283 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %281
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %280, %274
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %5, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %5, align 4
  br label %205

294:                                              ; preds = %205
  ret void
}

declare dso_local i64 @pmbus_check_word_register(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @pmbus_check_byte_register(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
