; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_tc358767.c_tc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tc_data = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.device*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i8*, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get refclk: %d\0A\00", align 1
@tc_regmap_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to initialize regmap: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"toshiba,hpd-pin\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to parse HPD number\0A\00", align 1
@INTCTL_G = common dso_local global i32 0, align 4
@INT_SYSERR = common dso_local global i32 0, align 4
@tc_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"tc358767-irq\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to register dp interrupt\0A\00", align 1
@TC_IDREG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"can not read device ID: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"invalid device ID: 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SYSRSTENB = common dso_local global i32 0, align 4
@ENBLCD0 = common dso_local global i32 0, align 4
@ENBBM = common dso_local global i32 0, align 4
@ENBDSIRX = common dso_local global i32 0, align 4
@ENBREG = common dso_local global i32 0, align 4
@ENBHDCP = common dso_local global i32 0, align 4
@INT_GP0_LCNT = common dso_local global i32 0, align 4
@INT_GP1_LCNT = common dso_local global i32 0, align 4
@GPIOM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"TC358767 AUX i2c adapter\00", align 1
@tc_aux_transfer = common dso_local global i32 0, align 4
@tc_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.tc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tc_data* @devm_kzalloc(%struct.device* %13, i32 104, i32 %14)
  store %struct.tc_data* %15, %struct.tc_data** %7, align 8
  %16 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %17 = icmp ne %struct.tc_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %380

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %24 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %23, i32 0, i32 6
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %29 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %28, i32 0, i32 11
  %30 = call i32 @drm_of_find_panel_or_bridge(i32 %27, i32 2, i32 0, i32* %29, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %380

40:                                               ; preds = %33, %21
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %43 = call i8* @devm_gpiod_get_optional(%struct.device* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %45 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  %46 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %47 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %46, i32 0, i32 10
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %53 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %52, i32 0, i32 10
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %3, align 4
  br label %380

56:                                               ; preds = %40
  %57 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %58 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %57, i32 0, i32 10
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %63 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %62, i32 0, i32 10
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @gpiod_set_value_cansleep(i8* %64, i32 0)
  %66 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %67

67:                                               ; preds = %61, %56
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %70 = call i8* @devm_gpiod_get_optional(%struct.device* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %72 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  %73 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %74 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %73, i32 0, i32 9
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @IS_ERR(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %80 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %79, i32 0, i32 9
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %3, align 4
  br label %380

83:                                               ; preds = %67
  %84 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %85 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %84, i32 0, i32 9
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %90 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %89, i32 0, i32 9
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @gpiod_set_value_cansleep(i8* %91, i32 1)
  %93 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %94

94:                                               ; preds = %88, %83
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = call i8* @devm_clk_get(%struct.device* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %98 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  %99 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %100 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %99, i32 0, i32 8
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %94
  %105 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %106 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %105, i32 0, i32 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %3, align 4
  br label %380

113:                                              ; preds = %94
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %114, i32* @tc_regmap_config)
  %116 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %117 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  %118 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %119 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %118, i32 0, i32 7
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @IS_ERR(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %113
  %124 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %125 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %124, i32 0, i32 7
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @PTR_ERR(i8* %126)
  store i32 %127, i32* %8, align 4
  %128 = load %struct.device*, %struct.device** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %380

132:                                              ; preds = %113
  %133 = load %struct.device*, %struct.device** %6, align 8
  %134 = getelementptr inbounds %struct.device, %struct.device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %137 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %136, i32 0, i32 0
  %138 = call i32 @of_property_read_u32(i32 %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load i32, i32* @ENODEV, align 4
  %143 = sub nsw i32 0, %142
  %144 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %145 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %161

146:                                              ; preds = %132
  %147 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %148 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %153 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %156, label %160

156:                                              ; preds = %151, %146
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %380

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160, %141
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %161
  %167 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %168 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %167, i32 0, i32 7
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* @INTCTL_G, align 4
  %171 = load i32, i32* @INT_SYSERR, align 4
  %172 = call i32 @regmap_write(i8* %169, i32 %170, i32 %171)
  %173 = load %struct.device*, %struct.device** %6, align 8
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @tc_irq_handler, align 4
  %178 = load i32, i32* @IRQF_ONESHOT, align 4
  %179 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %180 = call i32 @devm_request_threaded_irq(%struct.device* %173, i32 %176, i32* null, i32 %177, i32 %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.tc_data* %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %166
  %184 = load %struct.device*, %struct.device** %6, align 8
  %185 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %380

187:                                              ; preds = %166
  %188 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %189 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %188, i32 0, i32 1
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %161
  %191 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %192 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %191, i32 0, i32 7
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* @TC_IDREG, align 4
  %195 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %196 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %195, i32 0, i32 2
  %197 = call i32 @regmap_read(i8* %193, i32 %194, i32* %196)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %190
  %201 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %202 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %201, i32 0, i32 6
  %203 = load %struct.device*, %struct.device** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %3, align 4
  br label %380

207:                                              ; preds = %190
  %208 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %209 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 26113
  br i1 %211, label %212, label %227

212:                                              ; preds = %207
  %213 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %214 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 26115
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %219 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %218, i32 0, i32 6
  %220 = load %struct.device*, %struct.device** %219, align 8
  %221 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %222 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %380

227:                                              ; preds = %212, %207
  %228 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %229 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 26113
  %232 = zext i1 %231 to i32
  %233 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %234 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 4
  %235 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %236 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %235, i32 0, i32 9
  %237 = load i8*, i8** %236, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %278, label %239

239:                                              ; preds = %227
  %240 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %241 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %240, i32 0, i32 7
  %242 = load i8*, i8** %241, align 8
  %243 = load i32, i32* @SYSRSTENB, align 4
  %244 = load i32, i32* @ENBLCD0, align 4
  %245 = load i32, i32* @ENBBM, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @ENBDSIRX, align 4
  %248 = or i32 %246, %247
  %249 = load i32, i32* @ENBREG, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @ENBHDCP, align 4
  %252 = or i32 %250, %251
  %253 = call i32 @regmap_update_bits(i8* %242, i32 %243, i32 %252, i32 0)
  %254 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %255 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %254, i32 0, i32 7
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* @SYSRSTENB, align 4
  %258 = load i32, i32* @ENBLCD0, align 4
  %259 = load i32, i32* @ENBBM, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @ENBDSIRX, align 4
  %262 = or i32 %260, %261
  %263 = load i32, i32* @ENBREG, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @ENBHDCP, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @ENBLCD0, align 4
  %268 = load i32, i32* @ENBBM, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @ENBDSIRX, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @ENBREG, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @ENBHDCP, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @regmap_update_bits(i8* %256, i32 %257, i32 %266, i32 %275)
  %277 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %278

278:                                              ; preds = %239, %227
  %279 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %280 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp sge i32 %281, 0
  br i1 %282, label %283, label %336

283:                                              ; preds = %278
  %284 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %285 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load i32, i32* @INT_GP0_LCNT, align 4
  br label %292

290:                                              ; preds = %283
  %291 = load i32, i32* @INT_GP1_LCNT, align 4
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  store i32 %293, i32* %9, align 4
  %294 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %295 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @INT_GPIO_H(i32 %296)
  %298 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %299 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @INT_GPIO_LC(i32 %300)
  %302 = or i32 %297, %301
  store i32 %302, i32* %10, align 4
  %303 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %304 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %303, i32 0, i32 7
  %305 = load i8*, i8** %304, align 8
  %306 = load i32, i32* %9, align 4
  %307 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %308 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %307, i32 0, i32 8
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @clk_get_rate(i8* %309)
  %311 = mul nsw i32 %310, 2
  %312 = sdiv i32 %311, 1000
  %313 = call i32 @regmap_write(i8* %305, i32 %306, i32 %312)
  %314 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %315 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %314, i32 0, i32 7
  %316 = load i8*, i8** %315, align 8
  %317 = load i32, i32* @GPIOM, align 4
  %318 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %319 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @BIT(i32 %320)
  %322 = call i32 @regmap_write(i8* %316, i32 %317, i32 %321)
  %323 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %324 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %292
  %328 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %329 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %328, i32 0, i32 7
  %330 = load i8*, i8** %329, align 8
  %331 = load i32, i32* @INTCTL_G, align 4
  %332 = load i32, i32* %10, align 4
  %333 = load i32, i32* %10, align 4
  %334 = call i32 @regmap_update_bits(i8* %330, i32 %331, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %327, %292
  br label %336

336:                                              ; preds = %335, %278
  %337 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %338 = call i32 @tc_aux_link_setup(%struct.tc_data* %337)
  store i32 %338, i32* %8, align 4
  %339 = load i32, i32* %8, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i32, i32* %8, align 4
  store i32 %342, i32* %3, align 4
  br label %380

343:                                              ; preds = %336
  %344 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %345 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %344, i32 0, i32 5
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8** %346, align 8
  %347 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %348 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %347, i32 0, i32 6
  %349 = load %struct.device*, %struct.device** %348, align 8
  %350 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %351 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 2
  store %struct.device* %349, %struct.device** %352, align 8
  %353 = load i32, i32* @tc_aux_transfer, align 4
  %354 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %355 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %354, i32 0, i32 5
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 1
  store i32 %353, i32* %356, align 8
  %357 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %358 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %357, i32 0, i32 5
  %359 = call i32 @drm_dp_aux_register(%struct.TYPE_3__* %358)
  store i32 %359, i32* %8, align 4
  %360 = load i32, i32* %8, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %343
  %363 = load i32, i32* %8, align 4
  store i32 %363, i32* %3, align 4
  br label %380

364:                                              ; preds = %343
  %365 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %366 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 1
  store i32* @tc_bridge_funcs, i32** %367, align 8
  %368 = load %struct.device*, %struct.device** %6, align 8
  %369 = getelementptr inbounds %struct.device, %struct.device* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %372 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %371, i32 0, i32 4
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 0
  store i32 %370, i32* %373, align 8
  %374 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %375 = getelementptr inbounds %struct.tc_data, %struct.tc_data* %374, i32 0, i32 4
  %376 = call i32 @drm_bridge_add(%struct.TYPE_4__* %375)
  %377 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %378 = load %struct.tc_data*, %struct.tc_data** %7, align 8
  %379 = call i32 @i2c_set_clientdata(%struct.i2c_client* %377, %struct.tc_data* %378)
  store i32 0, i32* %3, align 4
  br label %380

380:                                              ; preds = %364, %362, %341, %217, %200, %183, %156, %123, %104, %78, %51, %38, %18
  %381 = load i32, i32* %3, align 4
  ret i32 %381
}

declare dso_local %struct.tc_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @regmap_write(i8*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.tc_data*) #1

declare dso_local i32 @regmap_read(i8*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @INT_GPIO_H(i32) #1

declare dso_local i32 @INT_GPIO_LC(i32) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @tc_aux_link_setup(%struct.tc_data*) #1

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_3__*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_4__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
