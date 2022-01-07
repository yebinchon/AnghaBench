; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-s3c2410.c_s3c24xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__* }
%struct.s3c24xx_i2c = type { i32, i32, i32, %struct.TYPE_18__, i32, %struct.TYPE_17__*, i32, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__, i32, %struct.s3c24xx_i2c*, i32, i32*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 (i32)* }
%struct.s3c2410_platform_i2c = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"s3c2410-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@s3c24xx_i2c_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_DEPRECATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"clock source %p\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"registers %p (%p)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"I2C clock enable failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"I2C controller init failed\0A\00", align 1
@QUIRK_POLL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"cannot find IRQ\0A\00", align 1
@s3c24xx_i2c_irq = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"failed to register cpufreq notifier\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%s: S3C I2C adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c24xx_i2c*, align 8
  %5 = alloca %struct.s3c2410_platform_i2c*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.s3c2410_platform_i2c* null, %struct.s3c2410_platform_i2c** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.s3c2410_platform_i2c* @dev_get_platdata(%struct.TYPE_16__* %15)
  store %struct.s3c2410_platform_i2c* %16, %struct.s3c2410_platform_i2c** %5, align 8
  %17 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %18 = icmp ne %struct.s3c2410_platform_i2c* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %344

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @devm_kzalloc(%struct.TYPE_16__* %28, i32 128, i32 %29)
  %31 = bitcast i8* %30 to %struct.s3c24xx_i2c*
  store %struct.s3c24xx_i2c* %31, %struct.s3c24xx_i2c** %4, align 8
  %32 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %33 = icmp ne %struct.s3c24xx_i2c* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %344

37:                                               ; preds = %26
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kzalloc(%struct.TYPE_16__* %39, i32 4, i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_17__*
  %43 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %44 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %43, i32 0, i32 5
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %44, align 8
  %45 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %45, i32 0, i32 5
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = icmp ne %struct.TYPE_17__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %344

52:                                               ; preds = %37
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @s3c24xx_get_device_quirks(%struct.platform_device* %53)
  %55 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %56 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = call i32 @ERR_PTR(i32 %58)
  %60 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %61 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 8
  %62 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %63 = icmp ne %struct.s3c2410_platform_i2c* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %66 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %65, i32 0, i32 5
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = load %struct.s3c2410_platform_i2c*, %struct.s3c2410_platform_i2c** %5, align 8
  %69 = call i32 @memcpy(%struct.TYPE_17__* %67, %struct.s3c2410_platform_i2c* %68, i32 4)
  br label %77

70:                                               ; preds = %52
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %76 = call i32 @s3c24xx_i2c_parse_dt(i64 %74, %struct.s3c24xx_i2c* %75)
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %79 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @strlcpy(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %83 = load i32, i32* @THIS_MODULE, align 4
  %84 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %85 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 6
  store i32 %83, i32* %86, align 8
  %87 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %88 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 5
  store i32* @s3c24xx_i2c_algorithm, i32** %89, align 8
  %90 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %91 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 2, i32* %92, align 8
  %93 = load i32, i32* @I2C_CLASS_DEPRECATED, align 4
  %94 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %95 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %98 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %97, i32 0, i32 1
  store i32 50, i32* %98, align 4
  %99 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %100 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %99, i32 0, i32 9
  %101 = call i32 @init_waitqueue_head(i32* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %105 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %104, i32 0, i32 7
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %105, align 8
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @devm_clk_get(%struct.TYPE_16__* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %110 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %112 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %77
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %344

122:                                              ; preds = %77
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %126 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_16__* %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = load i32, i32* @IORESOURCE_MEM, align 4
  %131 = call %struct.resource* @platform_get_resource(%struct.platform_device* %129, i32 %130, i32 0)
  store %struct.resource* %131, %struct.resource** %6, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load %struct.resource*, %struct.resource** %6, align 8
  %135 = call i32 @devm_ioremap_resource(%struct.TYPE_16__* %133, %struct.resource* %134)
  %136 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %137 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 8
  %138 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %139 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @IS_ERR(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %122
  %144 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %145 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @PTR_ERR(i32 %146)
  store i32 %147, i32* %2, align 4
  br label %344

148:                                              ; preds = %122
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %152 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.resource*, %struct.resource** %6, align 8
  %155 = call i32 (%struct.TYPE_16__*, i8*, i32, ...) @dev_dbg(%struct.TYPE_16__* %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %153, %struct.resource* %154)
  %156 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %157 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %158 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 3
  store %struct.s3c24xx_i2c* %156, %struct.s3c24xx_i2c** %159, align 8
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %163 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  store %struct.TYPE_16__* %161, %struct.TYPE_16__** %165, align 8
  %166 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %167 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %166, i32 0, i32 7
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = call i32 @devm_pinctrl_get_select_default(%struct.TYPE_16__* %168)
  %170 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %171 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 8
  %172 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %173 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %172, i32 0, i32 5
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32 (i32)*, i32 (i32)** %175, align 8
  %177 = icmp ne i32 (i32)* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %148
  %179 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %180 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %179, i32 0, i32 5
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i32 (i32)*, i32 (i32)** %182, align 8
  %184 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %185 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %184, i32 0, i32 7
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = call i32 @to_platform_device(%struct.TYPE_16__* %186)
  %188 = call i32 %183(i32 %187)
  br label %203

189:                                              ; preds = %148
  %190 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %191 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @IS_ERR(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %189
  %196 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %197 = call i64 @s3c24xx_i2c_parse_dt_gpio(%struct.s3c24xx_i2c* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %2, align 4
  br label %344

202:                                              ; preds = %195, %189
  br label %203

203:                                              ; preds = %202, %178
  %204 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %205 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @clk_prepare_enable(i32 %206)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %212, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %2, align 4
  br label %344

215:                                              ; preds = %203
  %216 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %217 = call i32 @s3c24xx_i2c_init(%struct.s3c24xx_i2c* %216)
  store i32 %217, i32* %7, align 4
  %218 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %219 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @clk_disable(i32 %220)
  %222 = load i32, i32* %7, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %215
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %226, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %228 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %229 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @clk_unprepare(i32 %230)
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %2, align 4
  br label %344

233:                                              ; preds = %215
  %234 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %235 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @QUIRK_POLL, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %283, label %240

240:                                              ; preds = %233
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = call i32 @platform_get_irq(%struct.platform_device* %241, i32 0)
  store i32 %242, i32* %7, align 4
  %243 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %244 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* %7, align 4
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %240
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %249, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %251 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %252 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @clk_unprepare(i32 %253)
  %255 = load i32, i32* %7, align 4
  store i32 %255, i32* %2, align 4
  br label %344

256:                                              ; preds = %240
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %260 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @s3c24xx_i2c_irq, align 4
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = call i32 @dev_name(%struct.TYPE_16__* %264)
  %266 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %267 = call i32 @devm_request_irq(%struct.TYPE_16__* %258, i32 %261, i32 %262, i32 0, i32 %265, %struct.s3c24xx_i2c* %266)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %256
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %271, i32 0, i32 0
  %273 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %274 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %272, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %275)
  %277 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %278 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @clk_unprepare(i32 %279)
  %281 = load i32, i32* %7, align 4
  store i32 %281, i32* %2, align 4
  br label %344

282:                                              ; preds = %256
  br label %283

283:                                              ; preds = %282, %233
  %284 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %285 = call i32 @s3c24xx_i2c_register_cpufreq(%struct.s3c24xx_i2c* %284)
  store i32 %285, i32* %7, align 4
  %286 = load i32, i32* %7, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %283
  %289 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %290, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %292 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %293 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @clk_unprepare(i32 %294)
  %296 = load i32, i32* %7, align 4
  store i32 %296, i32* %2, align 4
  br label %344

297:                                              ; preds = %283
  %298 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %299 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %298, i32 0, i32 5
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %304 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 2
  store i32 %302, i32* %305, align 8
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %311 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %310, i32 0, i32 3
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 0
  store i64 %309, i64* %313, align 8
  %314 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %315 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %316 = call i32 @platform_set_drvdata(%struct.platform_device* %314, %struct.s3c24xx_i2c* %315)
  %317 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %318 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %317, i32 0, i32 0
  %319 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %318)
  %320 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %321 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %320, i32 0, i32 3
  %322 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_18__* %321)
  store i32 %322, i32* %7, align 4
  %323 = load i32, i32* %7, align 4
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %297
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %326, i32 0, i32 0
  %328 = call i32 @pm_runtime_disable(%struct.TYPE_16__* %327)
  %329 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %330 = call i32 @s3c24xx_i2c_deregister_cpufreq(%struct.s3c24xx_i2c* %329)
  %331 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %332 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @clk_unprepare(i32 %333)
  %335 = load i32, i32* %7, align 4
  store i32 %335, i32* %2, align 4
  br label %344

336:                                              ; preds = %297
  %337 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %338 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %337, i32 0, i32 0
  %339 = load %struct.s3c24xx_i2c*, %struct.s3c24xx_i2c** %4, align 8
  %340 = getelementptr inbounds %struct.s3c24xx_i2c, %struct.s3c24xx_i2c* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 1
  %342 = call i32 @dev_name(%struct.TYPE_16__* %341)
  %343 = call i32 @dev_info(%struct.TYPE_16__* %338, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %342)
  store i32 0, i32* %2, align 4
  br label %344

344:                                              ; preds = %336, %325, %288, %270, %247, %224, %210, %199, %143, %116, %49, %34, %19
  %345 = load i32, i32* %2, align 4
  ret i32 %345
}

declare dso_local %struct.s3c2410_platform_i2c* @dev_get_platdata(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @s3c24xx_get_device_quirks(%struct.platform_device*) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_17__*, %struct.s3c2410_platform_i2c*, i32) #1

declare dso_local i32 @s3c24xx_i2c_parse_dt(i64, %struct.s3c24xx_i2c*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_16__*, i8*, i32, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_pinctrl_get_select_default(%struct.TYPE_16__*) #1

declare dso_local i32 @to_platform_device(%struct.TYPE_16__*) #1

declare dso_local i64 @s3c24xx_i2c_parse_dt_gpio(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @s3c24xx_i2c_init(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i32, %struct.s3c24xx_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_16__*) #1

declare dso_local i32 @s3c24xx_i2c_register_cpufreq(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c24xx_i2c*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_16__*) #1

declare dso_local i32 @s3c24xx_i2c_deregister_cpufreq(%struct.s3c24xx_i2c*) #1

declare dso_local i32 @dev_info(%struct.TYPE_16__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
