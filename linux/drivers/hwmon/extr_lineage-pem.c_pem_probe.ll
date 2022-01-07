; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lineage-pem.c_pem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lineage-pem.c_pem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pem_data = type { i32, i32**, i64*, i32, i64*, i64*, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PEM_READ_FIRMWARE_REV = common dso_local global i32 0, align 4
@PEM_CLEAR_INFO_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Firmware revision %d.%d.%d\0A\00", align 1
@pem_group = common dso_local global i32 0, align 4
@PEM_READ_INPUT_STRING = common dso_local global i32 0, align 4
@pem_input_group = common dso_local global i32 0, align 4
@PEM_READ_FAN_SPEED = common dso_local global i32 0, align 4
@pem_fan_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pem_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.pem_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_DATA, align 4
  %19 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %234

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.pem_data* @devm_kzalloc(%struct.device* %27, i32 64, i32 %28)
  store %struct.pem_data* %29, %struct.pem_data** %9, align 8
  %30 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %31 = icmp ne %struct.pem_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %234

35:                                               ; preds = %26
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %38 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %37, i32 0, i32 7
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %40 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %39, i32 0, i32 6
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @PEM_READ_FIRMWARE_REV, align 4
  %44 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %45 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %44, i32 0, i32 5
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @pem_read_block(%struct.i2c_client* %42, i32 %43, i64* %46, i32 8)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %234

52:                                               ; preds = %35
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @PEM_CLEAR_INFO_FLAGS, align 4
  %55 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %234

60:                                               ; preds = %52
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %63 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %62, i32 0, i32 5
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %68 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %67, i32 0, i32 5
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %73 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %72, i32 0, i32 5
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @dev_info(%struct.device* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %66, i64 %71, i64 %76)
  %78 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %79 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32*, i32** %80, i64 %83
  store i32* @pem_group, i32** %84, align 8
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = load i32, i32* @PEM_READ_INPUT_STRING, align 4
  %87 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %88 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = call i32 @pem_read_block(%struct.i2c_client* %85, i32 %86, i64* %89, i32 7)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %117, label %93

93:                                               ; preds = %60
  %94 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %95 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %94, i32 0, i32 4
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %93
  %101 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %102 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %109 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %108, i32 0, i32 4
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107, %100, %93
  %115 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %116 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %115, i32 0, i32 3
  store i32 7, i32* %116, align 8
  br label %162

117:                                              ; preds = %107, %60
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %161

120:                                              ; preds = %117
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load i32, i32* @PEM_READ_INPUT_STRING, align 4
  %123 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %124 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = call i32 @pem_read_block(%struct.i2c_client* %121, i32 %122, i64* %125, i32 8)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %160, label %129

129:                                              ; preds = %120
  %130 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %131 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %130, i32 0, i32 4
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %129
  %137 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %138 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %137, i32 0, i32 4
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %136
  %144 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %145 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %144, i32 0, i32 4
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %152 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %151, i32 0, i32 4
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150, %143, %136, %129
  %158 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %159 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %158, i32 0, i32 3
  store i32 8, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %150, %120
  br label %161

161:                                              ; preds = %160, %117
  br label %162

162:                                              ; preds = %161, %114
  %163 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %164 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %169 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %168, i32 0, i32 1
  %170 = load i32**, i32*** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32*, i32** %170, i64 %173
  store i32* @pem_input_group, i32** %174, align 8
  br label %175

175:                                              ; preds = %167, %162
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = load i32, i32* @PEM_READ_FAN_SPEED, align 4
  %178 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %179 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %178, i32 0, i32 2
  %180 = load i64*, i64** %179, align 8
  %181 = call i32 @pem_read_block(%struct.i2c_client* %176, i32 %177, i64* %180, i32 8)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %222, label %184

184:                                              ; preds = %175
  %185 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %186 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %212, label %191

191:                                              ; preds = %184
  %192 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %193 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %212, label %198

198:                                              ; preds = %191
  %199 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %200 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %199, i32 0, i32 2
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %198
  %206 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %207 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %206, i32 0, i32 2
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %205, %198, %191, %184
  %213 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %214 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  %215 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %216 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %215, i32 0, i32 1
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32*, i32** %217, i64 %220
  store i32* @pem_fan_group, i32** %221, align 8
  br label %222

222:                                              ; preds = %212, %205, %175
  %223 = load %struct.device*, %struct.device** %7, align 8
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %228 = load %struct.pem_data*, %struct.pem_data** %9, align 8
  %229 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %228, i32 0, i32 1
  %230 = load i32**, i32*** %229, align 8
  %231 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %223, i32 %226, %struct.pem_data* %227, i32** %230)
  store %struct.device* %231, %struct.device** %8, align 8
  %232 = load %struct.device*, %struct.device** %8, align 8
  %233 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %232)
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %222, %58, %50, %32, %23
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.pem_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pem_read_block(%struct.i2c_client*, i32, i64*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64, i64) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.pem_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
