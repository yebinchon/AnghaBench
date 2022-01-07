; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6697_data = type { i64, i32, i32, %struct.max6697_chip_data* }
%struct.max6697_chip_data = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.max6697_platform_data = type { i32, i32, i32, i32, i32, i64, i64, i64 }

@MAX6697_REG_CONFIG = common dso_local global i32 0, align 4
@max6581 = common dso_local global i64 0, align 8
@MAX6581_CONF_EXTENDED = common dso_local global i32 0, align 4
@MAX6581_REG_RESISTANCE = common dso_local global i32 0, align 4
@MAX6697_CONF_RESISTANCE = common dso_local global i32 0, align 4
@MAX6697_CONF_TIMEOUT = common dso_local global i32 0, align 4
@MAX6693_CONF_BETA = common dso_local global i32 0, align 4
@MAX6697_REG_ALERT_MASK = common dso_local global i32 0, align 4
@MAX6697_REG_OVERT_MASK = common dso_local global i32 0, align 4
@MAX6581_REG_IDEALITY = common dso_local global i32 0, align 4
@MAX6581_REG_IDEALITY_SELECT = common dso_local global i32 0, align 4
@MAX6697_CONV_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max6697_data*, %struct.i2c_client*)* @max6697_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6697_init_chip(%struct.max6697_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max6697_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.max6697_platform_data*, align 8
  %7 = alloca %struct.max6697_platform_data, align 8
  %8 = alloca %struct.max6697_chip_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max6697_data* %0, %struct.max6697_data** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call %struct.max6697_platform_data* @dev_get_platdata(%struct.TYPE_2__* %13)
  store %struct.max6697_platform_data* %14, %struct.max6697_platform_data** %6, align 8
  %15 = load %struct.max6697_data*, %struct.max6697_data** %4, align 8
  %16 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %15, i32 0, i32 3
  %17 = load %struct.max6697_chip_data*, %struct.max6697_chip_data** %16, align 8
  store %struct.max6697_chip_data* %17, %struct.max6697_chip_data** %8, align 8
  %18 = load %struct.max6697_chip_data*, %struct.max6697_chip_data** %8, align 8
  %19 = getelementptr inbounds %struct.max6697_chip_data, %struct.max6697_chip_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %22 = icmp ne %struct.max6697_platform_data* %21, null
  br i1 %22, label %76, label %23

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %23
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = load i32, i32* @MAX6697_REG_CONFIG, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %3, align 4
  br label %248

37:                                               ; preds = %29
  %38 = load %struct.max6697_data*, %struct.max6697_data** %4, align 8
  %39 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @max6581, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @MAX6581_CONF_EXTENDED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.max6697_data*, %struct.max6697_data** %4, align 8
  %50 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %49, i32 0, i32 1
  store i32 64, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %53 = load i32, i32* @MAX6581_REG_RESISTANCE, align 4
  %54 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %52, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %248

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @hweight8(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  br label %75

66:                                               ; preds = %37
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MAX6697_CONF_RESISTANCE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %59
  br label %242

76:                                               ; preds = %23, %2
  %77 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = call i32 @memset(%struct.max6697_platform_data* %7, i32 0, i32 48)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @max6697_get_config_of(i64 %87, %struct.max6697_platform_data* %7)
  store %struct.max6697_platform_data* %7, %struct.max6697_platform_data** %6, align 8
  br label %89

89:                                               ; preds = %82, %76
  store i32 0, i32* %11, align 4
  %90 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %91 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.max6697_chip_data*, %struct.max6697_chip_data** %8, align 8
  %96 = getelementptr inbounds %struct.max6697_chip_data, %struct.max6697_chip_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MAX6697_CONF_TIMEOUT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @MAX6697_CONF_TIMEOUT, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %101, %94, %89
  %106 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %107 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load %struct.max6697_chip_data*, %struct.max6697_chip_data** %8, align 8
  %112 = getelementptr inbounds %struct.max6697_chip_data, %struct.max6697_chip_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MAX6581_CONF_EXTENDED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32, i32* @MAX6581_CONF_EXTENDED, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.max6697_data*, %struct.max6697_data** %4, align 8
  %122 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %121, i32 0, i32 1
  store i32 64, i32* %122, align 8
  br label %123

123:                                              ; preds = %117, %110, %105
  %124 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %125 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.max6697_chip_data*, %struct.max6697_chip_data** %8, align 8
  %130 = getelementptr inbounds %struct.max6697_chip_data, %struct.max6697_chip_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MAX6697_CONF_RESISTANCE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @MAX6697_CONF_RESISTANCE, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %135, %128, %123
  %142 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %143 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %141
  %147 = load %struct.max6697_chip_data*, %struct.max6697_chip_data** %8, align 8
  %148 = getelementptr inbounds %struct.max6697_chip_data, %struct.max6697_chip_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MAX6693_CONF_BETA, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i32, i32* @MAX6693_CONF_BETA, align 4
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %153, %146, %141
  %158 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %159 = load i32, i32* @MAX6697_REG_CONFIG, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %158, i32 %159, i32 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %3, align 4
  br label %248

166:                                              ; preds = %157
  %167 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %168 = load i32, i32* @MAX6697_REG_ALERT_MASK, align 4
  %169 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %170 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @MAX6697_MAP_BITS(i32 %171)
  %173 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %167, i32 %168, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %166
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %3, align 4
  br label %248

178:                                              ; preds = %166
  %179 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %180 = load i32, i32* @MAX6697_REG_OVERT_MASK, align 4
  %181 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %182 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @MAX6697_MAP_BITS(i32 %183)
  %185 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %179, i32 %180, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %3, align 4
  br label %248

190:                                              ; preds = %178
  %191 = load %struct.max6697_data*, %struct.max6697_data** %4, align 8
  %192 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @max6581, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %241

196:                                              ; preds = %190
  %197 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %198 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = ashr i32 %199, 1
  %201 = call i64 @hweight8(i32 %200)
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %9, align 4
  %206 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %207 = load i32, i32* @MAX6581_REG_RESISTANCE, align 4
  %208 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %209 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = ashr i32 %210, 1
  %212 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %206, i32 %207, i32 %211)
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %10, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %196
  %216 = load i32, i32* %10, align 4
  store i32 %216, i32* %3, align 4
  br label %248

217:                                              ; preds = %196
  %218 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %219 = load i32, i32* @MAX6581_REG_IDEALITY, align 4
  %220 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %221 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %218, i32 %219, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %217
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %3, align 4
  br label %248

228:                                              ; preds = %217
  %229 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %230 = load i32, i32* @MAX6581_REG_IDEALITY_SELECT, align 4
  %231 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %6, align 8
  %232 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = ashr i32 %233, 1
  %235 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %229, i32 %230, i32 %234)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %228
  %239 = load i32, i32* %10, align 4
  store i32 %239, i32* %3, align 4
  br label %248

240:                                              ; preds = %228
  br label %241

241:                                              ; preds = %240, %190
  br label %242

242:                                              ; preds = %241, %75
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @MAX6697_CONV_TIME, align 4
  %245 = mul nsw i32 %243, %244
  %246 = load %struct.max6697_data*, %struct.max6697_data** %4, align 8
  %247 = getelementptr inbounds %struct.max6697_data, %struct.max6697_data* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %242, %238, %226, %215, %188, %176, %164, %57, %35
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local %struct.max6697_platform_data* @dev_get_platdata(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @hweight8(i32) #1

declare dso_local i32 @memset(%struct.max6697_platform_data*, i32, i32) #1

declare dso_local i32 @max6697_get_config_of(i64, %struct.max6697_platform_data*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MAX6697_MAP_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
