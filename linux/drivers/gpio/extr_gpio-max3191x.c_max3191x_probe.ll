; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.max3191x_chip = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i64, i32, %struct.TYPE_5__*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, i32, i32 }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"#daisy-chained-devices\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"maxim,modesel\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"maxim,fault\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"maxim,db0\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"maxim,db1\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"maxim,modesel-8bit\00", align 1
@STATUS_BYTE_DISABLED = common dso_local global i32 0, align 4
@STATUS_BYTE_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"maxim,ignore-undervoltage\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ignoring maxim,db*-gpios: array len mismatch\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@MAX3191X_NGPIO = common dso_local global i32 0, align 4
@max3191x_get_direction = common dso_local global i32 0, align 4
@max3191x_direction_input = common dso_local global i32 0, align 4
@max3191x_direction_output = common dso_local global i32 0, align 4
@max3191x_set = common dso_local global i32 0, align 4
@max3191x_set_multiple = common dso_local global i32 0, align 4
@max3191x_get = common dso_local global i32 0, align 4
@max3191x_get_multiple = common dso_local global i32 0, align 4
@max3191x_set_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @max3191x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3191x_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.max3191x_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 1
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.max3191x_chip* @devm_kzalloc(%struct.device* %10, i32 184, i32 %11)
  store %struct.max3191x_chip* %12, %struct.max3191x_chip** %5, align 8
  %13 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %14 = icmp ne %struct.max3191x_chip* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %308

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.max3191x_chip* %20)
  %22 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %23 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %26 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %25, i32 0, i32 0
  %27 = call i32 @device_property_read_u32(%struct.device* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %26)
  %28 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %29 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BITS_TO_LONGS(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kcalloc(%struct.device* %32, i32 %33, i32 8, i32 %34)
  %36 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %37 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %36, i32 0, i32 15
  store i8* %35, i8** %37, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kcalloc(%struct.device* %38, i32 %39, i32 8, i32 %40)
  %42 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %43 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %42, i32 0, i32 14
  store i8* %41, i8** %43, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @devm_kcalloc(%struct.device* %44, i32 %45, i32 8, i32 %46)
  %48 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %49 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %48, i32 0, i32 12
  store i8* %47, i8** %49, align 8
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @devm_kcalloc(%struct.device* %50, i32 %51, i32 8, i32 %52)
  %54 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %55 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %54, i32 0, i32 13
  store i8* %53, i8** %55, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @devm_kcalloc(%struct.device* %56, i32 %57, i32 8, i32 %58)
  %60 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %61 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %60, i32 0, i32 11
  store i8* %59, i8** %61, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %64 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @devm_kcalloc(%struct.device* %62, i32 %65, i32 2, i32 %66)
  %68 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %69 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %72 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %71, i32 0, i32 15
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %18
  %76 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %77 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %76, i32 0, i32 14
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %82 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %81, i32 0, i32 13
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %101

85:                                               ; preds = %80
  %86 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %87 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %86, i32 0, i32 12
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %92 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %91, i32 0, i32 11
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %97 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %95, %90, %85, %80, %75, %18
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %308

104:                                              ; preds = %95
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* @GPIOD_ASIS, align 4
  %107 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %108 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @devm_gpiod_get_array_optional_count(%struct.device* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %109)
  %111 = bitcast i8* %110 to %struct.TYPE_5__*
  %112 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %113 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %112, i32 0, i32 9
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %113, align 8
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load i32, i32* @GPIOD_IN, align 4
  %116 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %117 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @devm_gpiod_get_array_optional_count(%struct.device* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %121 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %120, i32 0, i32 10
  store i8* %119, i8** %121, align 8
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %124 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %125 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @devm_gpiod_get_array_optional_count(%struct.device* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %123, i32 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_8__*
  %129 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %130 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %129, i32 0, i32 6
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %130, align 8
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %133 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %134 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @devm_gpiod_get_array_optional_count(%struct.device* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %135)
  %137 = bitcast i8* %136 to %struct.TYPE_8__*
  %138 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %139 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %138, i32 0, i32 5
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %139, align 8
  %140 = load %struct.device*, %struct.device** %4, align 8
  %141 = call i64 @device_property_read_bool(%struct.device* %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %104
  %144 = load i32, i32* @STATUS_BYTE_DISABLED, align 4
  br label %147

145:                                              ; preds = %104
  %146 = load i32, i32* @STATUS_BYTE_ENABLED, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %150 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 8
  %151 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %152 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %151, i32 0, i32 9
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = icmp ne %struct.TYPE_5__* %153, null
  br i1 %154, label %155, label %175

155:                                              ; preds = %147
  %156 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %157 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %156, i32 0, i32 9
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %162 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %161, i32 0, i32 9
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %167 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %166, i32 0, i32 9
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %172 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @gpiod_set_array_single_value_cansleep(i32 %160, i32 %165, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %155, %147
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = call i64 @device_property_read_bool(%struct.device* %176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %178 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %179 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %178, i32 0, i32 7
  store i64 %177, i64* %179, align 8
  %180 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %181 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %180, i32 0, i32 6
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = icmp ne %struct.TYPE_8__* %182, null
  br i1 %183, label %184, label %218

184:                                              ; preds = %175
  %185 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %186 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %185, i32 0, i32 5
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = icmp ne %struct.TYPE_8__* %187, null
  br i1 %188, label %189, label %218

189:                                              ; preds = %184
  %190 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %191 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %190, i32 0, i32 6
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %196 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %195, i32 0, i32 5
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %194, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %189
  %202 = load %struct.device*, %struct.device** %4, align 8
  %203 = call i32 @dev_err(%struct.device* %202, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %204 = load %struct.device*, %struct.device** %4, align 8
  %205 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %206 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %205, i32 0, i32 6
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %206, align 8
  %208 = call i32 @devm_gpiod_put_array(%struct.device* %204, %struct.TYPE_8__* %207)
  %209 = load %struct.device*, %struct.device** %4, align 8
  %210 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %211 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %210, i32 0, i32 5
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = call i32 @devm_gpiod_put_array(%struct.device* %209, %struct.TYPE_8__* %212)
  %214 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %215 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %214, i32 0, i32 6
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %215, align 8
  %216 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %217 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %216, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %217, align 8
  br label %218

218:                                              ; preds = %201, %189, %184, %175
  %219 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %220 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %223 = call i32 @max3191x_wordlen(%struct.max3191x_chip* %222)
  %224 = mul nsw i32 %221, %223
  %225 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %226 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %229 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %228, i32 0, i32 4
  %230 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %231 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %230, i32 0, i32 3
  %232 = call i32 @spi_message_init_with_transfers(i32* %229, %struct.TYPE_6__* %231, i32 1)
  %233 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %234 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %237 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 13
  store i32 %235, i32* %238, align 4
  %239 = load i32, i32* @THIS_MODULE, align 4
  %240 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %241 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 12
  store i32 %239, i32* %242, align 8
  %243 = load %struct.device*, %struct.device** %4, align 8
  %244 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %245 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 11
  store %struct.device* %243, %struct.device** %246, align 8
  %247 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %248 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  store i32 -1, i32* %249, align 8
  %250 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %251 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @MAX3191X_NGPIO, align 4
  %254 = mul nsw i32 %252, %253
  %255 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %256 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  store i32 %254, i32* %257, align 4
  %258 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %259 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  %261 = load i32, i32* @max3191x_get_direction, align 4
  %262 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %263 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 10
  store i32 %261, i32* %264, align 8
  %265 = load i32, i32* @max3191x_direction_input, align 4
  %266 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %267 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 9
  store i32 %265, i32* %268, align 4
  %269 = load i32, i32* @max3191x_direction_output, align 4
  %270 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %271 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 8
  store i32 %269, i32* %272, align 8
  %273 = load i32, i32* @max3191x_set, align 4
  %274 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %275 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 7
  store i32 %273, i32* %276, align 4
  %277 = load i32, i32* @max3191x_set_multiple, align 4
  %278 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %279 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 6
  store i32 %277, i32* %280, align 8
  %281 = load i32, i32* @max3191x_get, align 4
  %282 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %283 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 5
  store i32 %281, i32* %284, align 4
  %285 = load i32, i32* @max3191x_get_multiple, align 4
  %286 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %287 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 4
  store i32 %285, i32* %288, align 8
  %289 = load i32, i32* @max3191x_set_config, align 4
  %290 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %291 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 3
  store i32 %289, i32* %292, align 4
  %293 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %294 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %293, i32 0, i32 1
  %295 = call i32 @mutex_init(i32* %294)
  %296 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %297 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %296, i32 0, i32 2
  %298 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %299 = call i32 @gpiochip_add_data(%struct.TYPE_7__* %297, %struct.max3191x_chip* %298)
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %218
  %303 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %304 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %303, i32 0, i32 1
  %305 = call i32 @mutex_destroy(i32* %304)
  %306 = load i32, i32* %7, align 4
  store i32 %306, i32* %2, align 4
  br label %308

307:                                              ; preds = %218
  store i32 0, i32* %2, align 4
  br label %308

308:                                              ; preds = %307, %302, %101, %15
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local %struct.max3191x_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.max3191x_chip*) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @devm_gpiod_get_array_optional_count(%struct.device*, i8*, i32, i32) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @gpiod_set_array_single_value_cansleep(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_gpiod_put_array(%struct.device*, %struct.TYPE_8__*) #1

declare dso_local i32 @max3191x_wordlen(%struct.max3191x_chip*) #1

declare dso_local i32 @spi_message_init_with_transfers(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_7__*, %struct.max3191x_chip*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
