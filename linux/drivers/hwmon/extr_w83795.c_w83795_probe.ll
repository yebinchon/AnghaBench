; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.w83795_data = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@W83795_REG_BANKSEL = common dso_local global i32 0, align 4
@W83795_REG_VOLT_CTRL1 = common dso_local global i32 0, align 4
@W83795_REG_VOLT_CTRL2 = common dso_local global i32 0, align 4
@W83795_REG_FANIN_CTRL1 = common dso_local global i32 0, align 4
@W83795_REG_FANIN_CTRL2 = common dso_local global i32 0, align 4
@W83795_REG_TEMP_CTRL1 = common dso_local global i32 0, align 4
@W83795_REG_TEMP_CTRL2 = common dso_local global i32 0, align 4
@W83795_REG_DTSC = common dso_local global i32 0, align 4
@W83795_REG_DTSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PECI agent %d Tbase temperature: %u\0A\00", align 1
@W83795_REG_VMIGB_CTRL = common dso_local global i32 0, align 4
@w83795g = common dso_local global i64 0, align 8
@W83795_REG_OVT_CFG = common dso_local global i32 0, align 4
@OVT_CFG_SEL = common dso_local global i32 0, align 4
@device_create_file = common dso_local global i32 0, align 4
@device_remove_file_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83795_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83795_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.w83795_data*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.w83795_data* @devm_kzalloc(%struct.device* %13, i32 48, i32 %14)
  store %struct.w83795_data* %15, %struct.w83795_data** %9, align 8
  %16 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %17 = icmp ne %struct.w83795_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %231

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %24 = call i32 @i2c_set_clientdata(%struct.i2c_client* %22, %struct.w83795_data* %23)
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %29 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @W83795_REG_BANKSEL, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  %33 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %34 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %36 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %35, i32 0, i32 9
  %37 = call i32 @mutex_init(i32* %36)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @w83795_init_client(%struct.i2c_client* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @W83795_REG_VOLT_CTRL1, align 4
  %42 = call i32 @w83795_read(%struct.i2c_client* %40, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* @W83795_REG_VOLT_CTRL2, align 4
  %45 = call i32 @w83795_read(%struct.i2c_client* %43, i32 %44)
  %46 = shl i32 %45, 8
  %47 = or i32 %42, %46
  %48 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %49 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @W83795_REG_FANIN_CTRL1, align 4
  %52 = call i32 @w83795_read(%struct.i2c_client* %50, i32 %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @W83795_REG_FANIN_CTRL2, align 4
  %55 = call i32 @w83795_read(%struct.i2c_client* %53, i32 %54)
  %56 = shl i32 %55, 8
  %57 = or i32 %52, %56
  %58 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %59 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @W83795_REG_TEMP_CTRL1, align 4
  %62 = call i32 @w83795_read(%struct.i2c_client* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %21
  %67 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %68 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %67, i32 0, i32 3
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %21
  %70 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 2
  %73 = and i32 %72, 3
  %74 = call i32 @w83795_apply_temp_config(%struct.w83795_data* %70, i32 %73, i32 5, i32 16)
  %75 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 3
  %78 = call i32 @w83795_apply_temp_config(%struct.w83795_data* %75, i32 %77, i32 4, i32 15)
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load i32, i32* @W83795_REG_TEMP_CTRL2, align 4
  %81 = call i32 @w83795_read(%struct.i2c_client* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 6
  %85 = call i32 @w83795_apply_temp_config(%struct.w83795_data* %82, i32 %84, i32 3, i32 20)
  %86 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 4
  %89 = and i32 %88, 3
  %90 = call i32 @w83795_apply_temp_config(%struct.w83795_data* %86, i32 %89, i32 2, i32 19)
  %91 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 2
  %94 = and i32 %93, 3
  %95 = call i32 @w83795_apply_temp_config(%struct.w83795_data* %91, i32 %94, i32 1, i32 18)
  %96 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 3
  %99 = call i32 @w83795_apply_temp_config(%struct.w83795_data* %96, i32 %98, i32 0, i32 17)
  %100 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %101 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %69
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load i32, i32* @W83795_REG_DTSC, align 4
  %107 = call i32 @w83795_read(%struct.i2c_client* %105, i32 %106)
  %108 = and i32 1, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %112 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, 2
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %110, %104
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = load i32, i32* @W83795_REG_DTSE, align 4
  %118 = call i32 @w83795_read(%struct.i2c_client* %116, i32 %117)
  %119 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %120 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115, %69
  %122 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %123 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %155

126:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %151, %126
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %130, label %154

130:                                              ; preds = %127
  %131 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %132 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = shl i32 1, %134
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %130
  br label %151

139:                                              ; preds = %130
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @W83795_REG_PECI_TBASE(i32 %141)
  %143 = call i32 @w83795_read(%struct.i2c_client* %140, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %7, align 4
  %149 = and i32 %148, 127
  %150 = call i32 @dev_info(%struct.device* %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %147, i32 %149)
  br label %151

151:                                              ; preds = %139, %138
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %127

154:                                              ; preds = %127
  br label %155

155:                                              ; preds = %154, %121
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = load i32, i32* @W83795_REG_VMIGB_CTRL, align 4
  %158 = call i32 @w83795_read(%struct.i2c_client* %156, i32 %157)
  %159 = and i32 %158, 15
  %160 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %161 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 8
  %162 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %163 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @w83795g, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %155
  %168 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %169 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %168, i32 0, i32 6
  store i32 8, i32* %169, align 4
  br label %173

170:                                              ; preds = %155
  %171 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %172 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %171, i32 0, i32 6
  store i32 2, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %175 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @w83795g, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %181 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %180, i32 0, i32 7
  store i32 1, i32* %181, align 8
  br label %194

182:                                              ; preds = %173
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = load i32, i32* @W83795_REG_OVT_CFG, align 4
  %185 = call i32 @w83795_read(%struct.i2c_client* %183, i32 %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @OVT_CFG_SEL, align 4
  %188 = and i32 %186, %187
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %192 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %191, i32 0, i32 7
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %182
  br label %194

194:                                              ; preds = %193, %179
  %195 = load %struct.device*, %struct.device** %8, align 8
  %196 = load i32, i32* @device_create_file, align 4
  %197 = call i32 @w83795_handle_files(%struct.device* %195, i32 %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %226

201:                                              ; preds = %194
  %202 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %203 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @w83795g, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = call i32 @w83795_check_dynamic_in_limits(%struct.i2c_client* %208)
  br label %210

210:                                              ; preds = %207, %201
  %211 = load %struct.device*, %struct.device** %8, align 8
  %212 = call i32 @hwmon_device_register(%struct.device* %211)
  %213 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %214 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %213, i32 0, i32 8
  store i32 %212, i32* %214, align 4
  %215 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %216 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @IS_ERR(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %210
  %221 = load %struct.w83795_data*, %struct.w83795_data** %9, align 8
  %222 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @PTR_ERR(i32 %223)
  store i32 %224, i32* %10, align 4
  br label %226

225:                                              ; preds = %210
  store i32 0, i32* %3, align 4
  br label %231

226:                                              ; preds = %220, %200
  %227 = load %struct.device*, %struct.device** %8, align 8
  %228 = load i32, i32* @device_remove_file_wrapper, align 4
  %229 = call i32 @w83795_handle_files(%struct.device* %227, i32 %228)
  %230 = load i32, i32* %10, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %226, %225, %18
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.w83795_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83795_data*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83795_init_client(%struct.i2c_client*) #1

declare dso_local i32 @w83795_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83795_apply_temp_config(%struct.w83795_data*, i32, i32, i32) #1

declare dso_local i32 @W83795_REG_PECI_TBASE(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @w83795_handle_files(%struct.device*, i32) #1

declare dso_local i32 @w83795_check_dynamic_in_limits(%struct.i2c_client*) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
