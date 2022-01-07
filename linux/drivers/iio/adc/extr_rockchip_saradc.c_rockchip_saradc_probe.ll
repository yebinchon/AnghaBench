; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rockchip_saradc.c_rockchip_saradc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_rockchip_saradc.c_rockchip_saradc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rockchip_saradc = type { i32*, i32*, i32*, %struct.TYPE_14__*, i32*, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.device_node*, %struct.TYPE_15__* }
%struct.resource = type { i32 }
%struct.of_device_id = type { %struct.TYPE_14__* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed allocating iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rockchip_saradc_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to match device\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"saradc-apb\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"no reset control found\0A\00", align 1
@rockchip_saradc_isr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"failed requesting irq %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"failed to get pclk\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"saradc\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to get adc clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to get regulator, %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to set adc clk rate, %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"failed to enable vref regulator\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"failed to enable pclk\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"failed to enable converter clock\0A\00", align 1
@rockchip_saradc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_saradc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_saradc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rockchip_saradc*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.of_device_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.rockchip_saradc* null, %struct.rockchip_saradc** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  store %struct.iio_dev* null, %struct.iio_dev** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %315

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_15__* %22, i32 56)
  store %struct.iio_dev* %23, %struct.iio_dev** %6, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = icmp ne %struct.iio_dev* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %315

32:                                               ; preds = %20
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = call %struct.rockchip_saradc* @iio_priv(%struct.iio_dev* %33)
  store %struct.rockchip_saradc* %34, %struct.rockchip_saradc** %4, align 8
  %35 = load i32, i32* @rockchip_saradc_match, align 4
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call %struct.of_device_id* @of_match_device(i32 %35, %struct.TYPE_15__* %37)
  store %struct.of_device_id* %38, %struct.of_device_id** %8, align 8
  %39 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %40 = icmp ne %struct.of_device_id* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %315

47:                                               ; preds = %32
  %48 = load %struct.of_device_id*, %struct.of_device_id** %8, align 8
  %49 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %52 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %51, i32 0, i32 3
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_MEM, align 4
  %55 = call %struct.resource* @platform_get_resource(%struct.platform_device* %53, i32 %54, i32 0)
  store %struct.resource* %55, %struct.resource** %7, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.resource*, %struct.resource** %7, align 8
  %59 = call i32* @devm_ioremap_resource(%struct.TYPE_15__* %57, %struct.resource* %58)
  %60 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %61 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %60, i32 0, i32 6
  store i32* %59, i32** %61, align 8
  %62 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %63 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %69 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %2, align 4
  br label %315

72:                                               ; preds = %47
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32* @devm_reset_control_get_exclusive(%struct.TYPE_15__* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %77 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %79 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @IS_ERR(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %72
  %84 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %85 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @PTR_ERR(i32* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %2, align 4
  br label %315

94:                                               ; preds = %83
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_dbg(%struct.TYPE_15__* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %99 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %98, i32 0, i32 4
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %94, %72
  %101 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %102 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %101, i32 0, i32 5
  %103 = call i32 @init_completion(i32* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = call i32 @platform_get_irq(%struct.platform_device* %104, i32 0)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %2, align 4
  br label %315

110:                                              ; preds = %100
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @rockchip_saradc_isr, align 4
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_name(%struct.TYPE_15__* %116)
  %118 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %119 = call i32 @devm_request_irq(%struct.TYPE_15__* %112, i32 %113, i32 %114, i32 0, i32 %117, %struct.rockchip_saradc* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %110
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %2, align 4
  br label %315

128:                                              ; preds = %110
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i8* @devm_clk_get(%struct.TYPE_15__* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %134 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %133, i32 0, i32 1
  store i32* %132, i32** %134, align 8
  %135 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %136 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i64 @IS_ERR(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %144 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %145 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @PTR_ERR(i32* %146)
  store i32 %147, i32* %2, align 4
  br label %315

148:                                              ; preds = %128
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i8* @devm_clk_get(%struct.TYPE_15__* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %154 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %153, i32 0, i32 2
  store i32* %152, i32** %154, align 8
  %155 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %156 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @IS_ERR(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %148
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %164 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %165 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @PTR_ERR(i32* %166)
  store i32 %167, i32* %2, align 4
  br label %315

168:                                              ; preds = %148
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32* @devm_regulator_get(%struct.TYPE_15__* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %172 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %173 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %172, i32 0, i32 0
  store i32* %171, i32** %173, align 8
  %174 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %175 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @IS_ERR(i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %168
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %183 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @PTR_ERR(i32* %184)
  %186 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %185)
  %187 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %188 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @PTR_ERR(i32* %189)
  store i32 %190, i32* %2, align 4
  br label %315

191:                                              ; preds = %168
  %192 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %193 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %198 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @rockchip_saradc_reset_controller(i32* %199)
  br label %201

201:                                              ; preds = %196, %191
  %202 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %203 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %206 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %205, i32 0, i32 3
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @clk_set_rate(i32* %204, i32 %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %201
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load i32, i32* %9, align 4
  %217 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %215, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %2, align 4
  br label %315

219:                                              ; preds = %201
  %220 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %221 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @regulator_enable(i32* %222)
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %219
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %228, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %2, align 4
  br label %315

231:                                              ; preds = %219
  %232 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %233 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @clk_prepare_enable(i32* %234)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %231
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %309

242:                                              ; preds = %231
  %243 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %244 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @clk_prepare_enable(i32* %245)
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %242
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %251, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %304

253:                                              ; preds = %242
  %254 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %255 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %256 = call i32 @platform_set_drvdata(%struct.platform_device* %254, %struct.iio_dev* %255)
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = call i32 @dev_name(%struct.TYPE_15__* %258)
  %260 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %261 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %260, i32 0, i32 5
  store i32 %259, i32* %261, align 8
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %262, i32 0, i32 0
  %264 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %265 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  store %struct.TYPE_15__* %263, %struct.TYPE_15__** %266, align 8
  %267 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %268 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = load %struct.device_node*, %struct.device_node** %269, align 8
  %271 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %272 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  store %struct.device_node* %270, %struct.device_node** %273, align 8
  %274 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %275 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %274, i32 0, i32 3
  store i32* @rockchip_saradc_iio_info, i32** %275, align 8
  %276 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %277 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %278 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %280 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %279, i32 0, i32 3
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %285 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %287 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %286, i32 0, i32 3
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %292 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %294 = call i32 @iio_device_register(%struct.iio_dev* %293)
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %253
  br label %299

298:                                              ; preds = %253
  store i32 0, i32* %2, align 4
  br label %315

299:                                              ; preds = %297
  %300 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %301 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = call i32 @clk_disable_unprepare(i32* %302)
  br label %304

304:                                              ; preds = %299, %249
  %305 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %306 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = call i32 @clk_disable_unprepare(i32* %307)
  br label %309

309:                                              ; preds = %304, %238
  %310 = load %struct.rockchip_saradc*, %struct.rockchip_saradc** %4, align 8
  %311 = getelementptr inbounds %struct.rockchip_saradc, %struct.rockchip_saradc* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = call i32 @regulator_disable(i32* %312)
  %314 = load i32, i32* %9, align 4
  store i32 %314, i32* %2, align 4
  br label %315

315:                                              ; preds = %309, %298, %226, %213, %179, %160, %140, %122, %108, %92, %67, %41, %26, %17
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.rockchip_saradc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_15__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_reset_control_get_exclusive(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.rockchip_saradc*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @devm_regulator_get(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @rockchip_saradc_reset_controller(i32*) #1

declare dso_local i32 @clk_set_rate(i32*, i32) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @regulator_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
