; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rk3x.c_rk3x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.rk3x_i2c = type { %struct.regmap*, %struct.regmap*, %struct.TYPE_13__, %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.regmap*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__, %struct.rk3x_i2c*, i32*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.device_node* }
%struct.regmap = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rk3x_i2c_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rk3x-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@rk3x_i2c_algorithm = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"rk3x-i2c needs 'rockchip,grf' property\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rk3x-i2c needs i2cX alias\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not write to GRF: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"cannot find rk3x IRQ\0A\00", align 1
@rk3x_i2c_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"cannot request IRQ\0A\00", align 1
@rk3x_i2c_v0_calc_timings = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Can't get bus clk: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Can't get periph clk: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Can't prepare bus clk: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Can't prepare periph clock: %d\0A\00", align 1
@rk3x_i2c_clk_notifier_cb = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"Unable to register clock notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk3x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3x_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.rk3x_i2c*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.regmap*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.rk3x_i2c* @devm_kzalloc(%struct.TYPE_16__* %19, i32 112, i32 %20)
  store %struct.rk3x_i2c* %21, %struct.rk3x_i2c** %6, align 8
  %22 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %23 = icmp ne %struct.rk3x_i2c* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %338

27:                                               ; preds = %1
  %28 = load i32, i32* @rk3x_i2c_match, align 4
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call %struct.of_device_id* @of_match_node(i32 %28, %struct.device_node* %29)
  store %struct.of_device_id* %30, %struct.of_device_id** %5, align 8
  %31 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %35 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %34, i32 0, i32 4
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %39 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %38, i32 0, i32 9
  %40 = call i32 @i2c_parse_fw_timings(%struct.TYPE_16__* %37, i32* %39, i32 1)
  %41 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %42 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strlcpy(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %48 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 8
  %50 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %51 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  store i32* @rk3x_i2c_algorithm, i32** %52, align 8
  %53 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %54 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i32 3, i32* %55, align 8
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %58 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store %struct.device_node* %56, %struct.device_node** %60, align 8
  %61 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %62 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %63 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  store %struct.rk3x_i2c* %61, %struct.rk3x_i2c** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %68 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %70, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %74 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %73, i32 0, i32 5
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** %74, align 8
  %75 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %76 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %75, i32 0, i32 8
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %79 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %78, i32 0, i32 7
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = load i32, i32* @IORESOURCE_MEM, align 4
  %83 = call %struct.resource* @platform_get_resource(%struct.platform_device* %81, i32 %82, i32 0)
  store %struct.resource* %83, %struct.resource** %7, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.resource*, %struct.resource** %7, align 8
  %87 = call %struct.regmap* @devm_ioremap_resource(%struct.TYPE_16__* %85, %struct.resource* %86)
  %88 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %89 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %88, i32 0, i32 6
  store %struct.regmap* %87, %struct.regmap** %89, align 8
  %90 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %91 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %90, i32 0, i32 6
  %92 = load %struct.regmap*, %struct.regmap** %91, align 8
  %93 = call i64 @IS_ERR(%struct.regmap* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %27
  %96 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %97 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %96, i32 0, i32 6
  %98 = load %struct.regmap*, %struct.regmap** %97, align 8
  %99 = call i32 @PTR_ERR(%struct.regmap* %98)
  store i32 %99, i32* %2, align 4
  br label %338

100:                                              ; preds = %27
  %101 = load %struct.device_node*, %struct.device_node** %4, align 8
  %102 = call i32 @of_alias_get_id(%struct.device_node* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %102, i32* %9, align 4
  %103 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %104 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %103, i32 0, i32 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %107, 0
  br i1 %108, label %109, label %156

109:                                              ; preds = %100
  %110 = load %struct.device_node*, %struct.device_node** %4, align 8
  %111 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.regmap* %111, %struct.regmap** %13, align 8
  %112 = load %struct.regmap*, %struct.regmap** %13, align 8
  %113 = call i64 @IS_ERR(%struct.regmap* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %119 = load %struct.regmap*, %struct.regmap** %13, align 8
  %120 = call i32 @PTR_ERR(%struct.regmap* %119)
  store i32 %120, i32* %2, align 4
  br label %338

121:                                              ; preds = %109
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %338

130:                                              ; preds = %121
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 27, %131
  %133 = call i32 @BIT(i32 %132)
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 11, %134
  %136 = call i32 @BIT(i32 %135)
  %137 = or i32 %133, %136
  store i32 %137, i32* %10, align 4
  %138 = load %struct.regmap*, %struct.regmap** %13, align 8
  %139 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %140 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %139, i32 0, i32 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @regmap_write(%struct.regmap* %138, i64 %143, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %130
  %149 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %150 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %149, i32 0, i32 5
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %338

155:                                              ; preds = %130
  br label %156

156:                                              ; preds = %155, %100
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = call i32 @platform_get_irq(%struct.platform_device* %157, i32 0)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %2, align 4
  br label %338

166:                                              ; preds = %156
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @rk3x_i2c_irq, align 4
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 @dev_name(%struct.TYPE_16__* %172)
  %174 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %175 = call i32 @devm_request_irq(%struct.TYPE_16__* %168, i32 %169, i32 %170, i32 0, i32 %173, %struct.rk3x_i2c* %174)
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %166
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %2, align 4
  br label %338

183:                                              ; preds = %166
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %186 = call i32 @platform_set_drvdata(%struct.platform_device* %184, %struct.rk3x_i2c* %185)
  %187 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %188 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %187, i32 0, i32 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @rk3x_i2c_v0_calc_timings, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %183
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = call i8* @devm_clk_get(%struct.TYPE_16__* %196, i8* null)
  %198 = bitcast i8* %197 to %struct.regmap*
  %199 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %200 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %199, i32 0, i32 0
  store %struct.regmap* %198, %struct.regmap** %200, align 8
  %201 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %202 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %201, i32 0, i32 0
  %203 = load %struct.regmap*, %struct.regmap** %202, align 8
  %204 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %205 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %204, i32 0, i32 1
  store %struct.regmap* %203, %struct.regmap** %205, align 8
  br label %219

206:                                              ; preds = %183
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = call i8* @devm_clk_get(%struct.TYPE_16__* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %210 = bitcast i8* %209 to %struct.regmap*
  %211 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %212 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %211, i32 0, i32 0
  store %struct.regmap* %210, %struct.regmap** %212, align 8
  %213 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %214 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %213, i32 0, i32 0
  %215 = call i8* @devm_clk_get(%struct.TYPE_16__* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %216 = bitcast i8* %215 to %struct.regmap*
  %217 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %218 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %217, i32 0, i32 1
  store %struct.regmap* %216, %struct.regmap** %218, align 8
  br label %219

219:                                              ; preds = %206, %194
  %220 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %221 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %220, i32 0, i32 0
  %222 = load %struct.regmap*, %struct.regmap** %221, align 8
  %223 = call i64 @IS_ERR(%struct.regmap* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %219
  %226 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %227 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %226, i32 0, i32 0
  %228 = load %struct.regmap*, %struct.regmap** %227, align 8
  %229 = call i32 @PTR_ERR(%struct.regmap* %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @EPROBE_DEFER, align 4
  %232 = sub nsw i32 0, %231
  %233 = icmp ne i32 %230, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %225
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = load i32, i32* %8, align 4
  %238 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %234, %225
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %2, align 4
  br label %338

241:                                              ; preds = %219
  %242 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %243 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %242, i32 0, i32 1
  %244 = load %struct.regmap*, %struct.regmap** %243, align 8
  %245 = call i64 @IS_ERR(%struct.regmap* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %241
  %248 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %249 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %248, i32 0, i32 1
  %250 = load %struct.regmap*, %struct.regmap** %249, align 8
  %251 = call i32 @PTR_ERR(%struct.regmap* %250)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %8, align 4
  %253 = load i32, i32* @EPROBE_DEFER, align 4
  %254 = sub nsw i32 0, %253
  %255 = icmp ne i32 %252, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %247
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = load i32, i32* %8, align 4
  %260 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %258, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %256, %247
  %262 = load i32, i32* %8, align 4
  store i32 %262, i32* %2, align 4
  br label %338

263:                                              ; preds = %241
  %264 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %265 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %264, i32 0, i32 0
  %266 = load %struct.regmap*, %struct.regmap** %265, align 8
  %267 = call i32 @clk_prepare(%struct.regmap* %266)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %263
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %271, i32 0, i32 0
  %273 = load i32, i32* %8, align 4
  %274 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %272, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* %8, align 4
  store i32 %275, i32* %2, align 4
  br label %338

276:                                              ; preds = %263
  %277 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %278 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %277, i32 0, i32 1
  %279 = load %struct.regmap*, %struct.regmap** %278, align 8
  %280 = call i32 @clk_prepare(%struct.regmap* %279)
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %8, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %276
  %284 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %285 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %284, i32 0, i32 0
  %286 = load i32, i32* %8, align 4
  %287 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %285, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %286)
  br label %332

288:                                              ; preds = %276
  %289 = load i32, i32* @rk3x_i2c_clk_notifier_cb, align 4
  %290 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %291 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  store i32 %289, i32* %292, align 8
  %293 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %294 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %293, i32 0, i32 0
  %295 = load %struct.regmap*, %struct.regmap** %294, align 8
  %296 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %297 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %296, i32 0, i32 2
  %298 = call i32 @clk_notifier_register(%struct.regmap* %295, %struct.TYPE_13__* %297)
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %8, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %288
  %302 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %303 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %302, i32 0, i32 0
  %304 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %303, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %327

305:                                              ; preds = %288
  %306 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %307 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %306, i32 0, i32 0
  %308 = load %struct.regmap*, %struct.regmap** %307, align 8
  %309 = call i64 @clk_get_rate(%struct.regmap* %308)
  store i64 %309, i64* %12, align 8
  %310 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %311 = load i64, i64* %12, align 8
  %312 = call i32 @rk3x_i2c_adapt_div(%struct.rk3x_i2c* %310, i64 %311)
  %313 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %314 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %313, i32 0, i32 3
  %315 = call i32 @i2c_add_adapter(%struct.TYPE_17__* %314)
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %305
  br label %320

319:                                              ; preds = %305
  store i32 0, i32* %2, align 4
  br label %338

320:                                              ; preds = %318
  %321 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %322 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %321, i32 0, i32 0
  %323 = load %struct.regmap*, %struct.regmap** %322, align 8
  %324 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %325 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %324, i32 0, i32 2
  %326 = call i32 @clk_notifier_unregister(%struct.regmap* %323, %struct.TYPE_13__* %325)
  br label %327

327:                                              ; preds = %320, %301
  %328 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %329 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %328, i32 0, i32 1
  %330 = load %struct.regmap*, %struct.regmap** %329, align 8
  %331 = call i32 @clk_unprepare(%struct.regmap* %330)
  br label %332

332:                                              ; preds = %327, %283
  %333 = load %struct.rk3x_i2c*, %struct.rk3x_i2c** %6, align 8
  %334 = getelementptr inbounds %struct.rk3x_i2c, %struct.rk3x_i2c* %333, i32 0, i32 0
  %335 = load %struct.regmap*, %struct.regmap** %334, align 8
  %336 = call i32 @clk_unprepare(%struct.regmap* %335)
  %337 = load i32, i32* %8, align 4
  store i32 %337, i32* %2, align 4
  br label %338

338:                                              ; preds = %332, %319, %270, %261, %239, %178, %161, %148, %124, %115, %95, %24
  %339 = load i32, i32* %2, align 4
  ret i32 %339
}

declare dso_local %struct.rk3x_i2c* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @i2c_parse_fw_timings(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.regmap* @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i32, %struct.rk3x_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_16__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rk3x_i2c*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @clk_prepare(%struct.regmap*) #1

declare dso_local i32 @clk_notifier_register(%struct.regmap*, %struct.TYPE_13__*) #1

declare dso_local i64 @clk_get_rate(%struct.regmap*) #1

declare dso_local i32 @rk3x_i2c_adapt_div(%struct.rk3x_i2c*, i64) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_17__*) #1

declare dso_local i32 @clk_notifier_unregister(%struct.regmap*, %struct.TYPE_13__*) #1

declare dso_local i32 @clk_unprepare(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
