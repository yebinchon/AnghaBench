; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_exynos_adc.c_exynos_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.exynos_adc = type { i32, i32, i32, i8*, %struct.TYPE_12__*, i32, i8*, i8*, i32, %struct.TYPE_13__*, i8*, i8* }
%struct.TYPE_12__ = type { i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)*, i32, i64, i64 }
%struct.s3c2410_ts_mach_info = type { i32 }
%struct.iio_dev = type { %struct.TYPE_11__, i32, i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { %struct.device_node*, %struct.TYPE_13__* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed allocating iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed getting exynos_adc_data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"syscon regmap lookup failed.\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed getting clock, err = %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed getting sclk clock, err = %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"failed getting regulator, err = %ld\0A\00", align 1
@exynos_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@exynos_adc_iio_channels = common dso_local global i32 0, align 4
@exynos_adc_isr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"failed requesting irq, irq = %d\0A\00", align 1
@CONFIG_INPUT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"has-touchscreen\00", align 1
@exynos_adc_match = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"failed adding child nodes\0A\00", align 1
@exynos_adc_remove_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_adc*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.s3c2410_ts_mach_info*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.exynos_adc* null, %struct.exynos_adc** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.s3c2410_ts_mach_info* @dev_get_platdata(%struct.TYPE_13__* %17)
  store %struct.s3c2410_ts_mach_info* %18, %struct.s3c2410_ts_mach_info** %6, align 8
  store %struct.iio_dev* null, %struct.iio_dev** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_13__* %22, i32 88)
  store %struct.iio_dev* %23, %struct.iio_dev** %7, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = icmp ne %struct.iio_dev* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %406

32:                                               ; preds = %1
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = call %struct.exynos_adc* @iio_priv(%struct.iio_dev* %33)
  store %struct.exynos_adc* %34, %struct.exynos_adc** %4, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call %struct.TYPE_12__* @exynos_adc_get_data(%struct.platform_device* %35)
  %37 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %38 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %37, i32 0, i32 4
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %38, align 8
  %39 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %39, i32 0, i32 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %32
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %406

49:                                               ; preds = %32
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %8, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %8, align 8
  %56 = call i8* @devm_ioremap_resource(%struct.TYPE_13__* %54, %struct.resource* %55)
  %57 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %58 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %57, i32 0, i32 11
  store i8* %56, i8** %58, align 8
  %59 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %60 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %59, i32 0, i32 11
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @IS_ERR(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %66 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %65, i32 0, i32 11
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @PTR_ERR(i8* %67)
  store i32 %68, i32* %2, align 4
  br label %406

69:                                               ; preds = %49
  %70 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %71 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %69
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.device_node*, %struct.device_node** %79, align 8
  %81 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %83 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %82, i32 0, i32 10
  store i8* %81, i8** %83, align 8
  %84 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %85 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %84, i32 0, i32 10
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %76
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %94 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %93, i32 0, i32 10
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %406

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97, %69
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 @platform_get_irq(%struct.platform_device* %99, i32 0)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %2, align 4
  br label %406

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %108 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = call i32 @platform_get_irq(%struct.platform_device* %109, i32 1)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @EPROBE_DEFER, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %2, align 4
  br label %406

117:                                              ; preds = %105
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %120 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %124 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %123, i32 0, i32 9
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %124, align 8
  %125 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %126 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %125, i32 0, i32 8
  %127 = call i32 @init_completion(i32* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i8* @devm_clk_get(%struct.TYPE_13__* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %132 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %131, i32 0, i32 7
  store i8* %130, i8** %132, align 8
  %133 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %134 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %133, i32 0, i32 7
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_ERR(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %117
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %142 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %141, i32 0, i32 7
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @PTR_ERR(i8* %143)
  %145 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  %146 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %147 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %146, i32 0, i32 7
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @PTR_ERR(i8* %148)
  store i32 %149, i32* %2, align 4
  br label %406

150:                                              ; preds = %117
  %151 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %152 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %151, i32 0, i32 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %181

157:                                              ; preds = %150
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i8* @devm_clk_get(%struct.TYPE_13__* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %161 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %162 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %164 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %163, i32 0, i32 6
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @IS_ERR(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %157
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %172 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %171, i32 0, i32 6
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @PTR_ERR(i8* %173)
  %175 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %170, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  %176 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %177 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %176, i32 0, i32 6
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @PTR_ERR(i8* %178)
  store i32 %179, i32* %2, align 4
  br label %406

180:                                              ; preds = %157
  br label %181

181:                                              ; preds = %180, %150
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i8* @devm_regulator_get(%struct.TYPE_13__* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %185 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %186 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %188 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @IS_ERR(i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %181
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %196 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @PTR_ERR(i8* %197)
  %199 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %198)
  %200 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %201 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @PTR_ERR(i8* %202)
  store i32 %203, i32* %2, align 4
  br label %406

204:                                              ; preds = %181
  %205 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %206 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %205, i32 0, i32 3
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @regulator_enable(i8* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %2, align 4
  br label %406

213:                                              ; preds = %204
  %214 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %215 = call i32 @exynos_adc_prepare_clk(%struct.exynos_adc* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  br label %400

219:                                              ; preds = %213
  %220 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %221 = call i32 @exynos_adc_enable_clk(%struct.exynos_adc* %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %397

225:                                              ; preds = %219
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %228 = call i32 @platform_set_drvdata(%struct.platform_device* %226, %struct.iio_dev* %227)
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = call i32 @dev_name(%struct.TYPE_13__* %230)
  %232 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %233 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 8
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %237 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 1
  store %struct.TYPE_13__* %235, %struct.TYPE_13__** %238, align 8
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load %struct.device_node*, %struct.device_node** %241, align 8
  %243 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %244 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  store %struct.device_node* %242, %struct.device_node** %245, align 8
  %246 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %247 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %246, i32 0, i32 4
  store i32* @exynos_adc_iio_info, i32** %247, align 8
  %248 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %249 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %250 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* @exynos_adc_iio_channels, align 4
  %252 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %253 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 4
  %254 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %255 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %254, i32 0, i32 4
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %260 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 8
  %261 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %262 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @exynos_adc_isr, align 4
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %265, i32 0, i32 0
  %267 = call i32 @dev_name(%struct.TYPE_13__* %266)
  %268 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %269 = call i32 @request_irq(i32 %263, i32 %264, i32 0, i32 %267, %struct.exynos_adc* %268)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %225
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %276 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %274, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %277)
  br label %379

279:                                              ; preds = %225
  %280 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %281 = call i32 @iio_device_register(%struct.iio_dev* %280)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %279
  br label %373

285:                                              ; preds = %279
  %286 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %287 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %286, i32 0, i32 4
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 1
  %290 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %289, align 8
  %291 = icmp ne i32 (%struct.exynos_adc*)* %290, null
  br i1 %291, label %292, label %300

292:                                              ; preds = %285
  %293 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %294 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %293, i32 0, i32 4
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  %297 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %296, align 8
  %298 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %299 = call i32 %297(%struct.exynos_adc* %298)
  br label %300

300:                                              ; preds = %292, %285
  %301 = load i32, i32* @CONFIG_INPUT, align 4
  %302 = call i64 @IS_REACHABLE(i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %300
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 0
  %308 = load %struct.device_node*, %struct.device_node** %307, align 8
  %309 = call i64 @of_property_read_bool(%struct.device_node* %308, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %304
  %312 = load %struct.s3c2410_ts_mach_info*, %struct.s3c2410_ts_mach_info** %6, align 8
  %313 = icmp ne %struct.s3c2410_ts_mach_info* %312, null
  br label %314

314:                                              ; preds = %311, %304
  %315 = phi i1 [ true, %304 ], [ %313, %311 ]
  %316 = zext i1 %315 to i32
  store i32 %316, i32* %9, align 4
  br label %317

317:                                              ; preds = %314, %300
  %318 = load %struct.s3c2410_ts_mach_info*, %struct.s3c2410_ts_mach_info** %6, align 8
  %319 = icmp ne %struct.s3c2410_ts_mach_info* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load %struct.s3c2410_ts_mach_info*, %struct.s3c2410_ts_mach_info** %6, align 8
  %322 = getelementptr inbounds %struct.s3c2410_ts_mach_info, %struct.s3c2410_ts_mach_info* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %325 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 8
  br label %329

326:                                              ; preds = %317
  %327 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %328 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %327, i32 0, i32 2
  store i32 10000, i32* %328, align 8
  br label %329

329:                                              ; preds = %326, %320
  %330 = load i32, i32* %9, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %329
  %333 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %334 = call i32 @exynos_adc_ts_init(%struct.exynos_adc* %333)
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %332, %329
  %336 = load i32, i32* %10, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  br label %370

339:                                              ; preds = %335
  %340 = load %struct.device_node*, %struct.device_node** %5, align 8
  %341 = load i32, i32* @exynos_adc_match, align 4
  %342 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %343 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %342, i32 0, i32 0
  %344 = call i32 @of_platform_populate(%struct.device_node* %340, i32 %341, i32* null, %struct.TYPE_11__* %343)
  store i32 %344, i32* %10, align 4
  %345 = load i32, i32* %10, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %339
  %348 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %349 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %348, i32 0, i32 0
  %350 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %349, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %352

351:                                              ; preds = %339
  store i32 0, i32* %2, align 4
  br label %406

352:                                              ; preds = %347
  %353 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %354 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %353, i32 0, i32 0
  %355 = load i32, i32* @exynos_adc_remove_devices, align 4
  %356 = call i32 @device_for_each_child(%struct.TYPE_11__* %354, i32* null, i32 %355)
  %357 = load i32, i32* %9, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %369

359:                                              ; preds = %352
  %360 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %361 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @input_unregister_device(i32 %362)
  %364 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %365 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %368 = call i32 @free_irq(i32 %366, %struct.exynos_adc* %367)
  br label %369

369:                                              ; preds = %359, %352
  br label %370

370:                                              ; preds = %369, %338
  %371 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %372 = call i32 @iio_device_unregister(%struct.iio_dev* %371)
  br label %373

373:                                              ; preds = %370, %284
  %374 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %375 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %378 = call i32 @free_irq(i32 %376, %struct.exynos_adc* %377)
  br label %379

379:                                              ; preds = %373, %272
  %380 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %381 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %380, i32 0, i32 4
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %383, align 8
  %385 = icmp ne i32 (%struct.exynos_adc*)* %384, null
  br i1 %385, label %386, label %394

386:                                              ; preds = %379
  %387 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %388 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %387, i32 0, i32 4
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  %391 = load i32 (%struct.exynos_adc*)*, i32 (%struct.exynos_adc*)** %390, align 8
  %392 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %393 = call i32 %391(%struct.exynos_adc* %392)
  br label %394

394:                                              ; preds = %386, %379
  %395 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %396 = call i32 @exynos_adc_disable_clk(%struct.exynos_adc* %395)
  br label %397

397:                                              ; preds = %394, %224
  %398 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %399 = call i32 @exynos_adc_unprepare_clk(%struct.exynos_adc* %398)
  br label %400

400:                                              ; preds = %397, %218
  %401 = load %struct.exynos_adc*, %struct.exynos_adc** %4, align 8
  %402 = getelementptr inbounds %struct.exynos_adc, %struct.exynos_adc* %401, i32 0, i32 3
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @regulator_disable(i8* %403)
  %405 = load i32, i32* %10, align 4
  store i32 %405, i32* %2, align 4
  br label %406

406:                                              ; preds = %400, %351, %211, %192, %168, %138, %115, %103, %89, %64, %43, %26
  %407 = load i32, i32* %2, align 4
  ret i32 %407
}

declare dso_local %struct.s3c2410_ts_mach_info* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local %struct.exynos_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_12__* @exynos_adc_get_data(%struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @exynos_adc_prepare_clk(%struct.exynos_adc*) #1

declare dso_local i32 @exynos_adc_enable_clk(%struct.exynos_adc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.exynos_adc*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i64 @IS_REACHABLE(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @exynos_adc_ts_init(%struct.exynos_adc*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @device_for_each_child(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @free_irq(i32, %struct.exynos_adc*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @exynos_adc_disable_clk(%struct.exynos_adc*) #1

declare dso_local i32 @exynos_adc_unprepare_clk(%struct.exynos_adc*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
