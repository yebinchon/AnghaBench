; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-hix5hd2.c_hix5hd2_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.hix5hd2_i2c_priv = type { i32, i32, %struct.TYPE_18__*, %struct.TYPE_19__, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, %struct.hix5hd2_i2c_priv*, i32*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__*, %struct.device_node* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@HIX5I2C_MAX_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"use max freq %d instead\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot find HS-I2C IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"hix5hd2-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@hix5hd2_i2c_algorithm = common dso_local global i32 0, align 4
@hix5hd2_i2c_irq = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"cannot request HS-I2C IRQ %d\0A\00", align 1
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hix5hd2_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.hix5hd2_i2c_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.hix5hd2_i2c_priv* @devm_kzalloc(%struct.TYPE_18__* %15, i32 80, i32 %16)
  store %struct.hix5hd2_i2c_priv* %17, %struct.hix5hd2_i2c_priv** %5, align 8
  %18 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %19 = icmp ne %struct.hix5hd2_i2c_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %209

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call i64 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %29 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %28, i32 0, i32 0
  store i32 100000, i32* %29, align 8
  br label %48

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @HIX5I2C_MAX_FREQ, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* @HIX5I2C_MAX_FREQ, align 4
  %36 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %37 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %39 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = load i32, i32* @HIX5I2C_MAX_FREQ, align 4
  %42 = call i32 @dev_warn(%struct.TYPE_18__* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %47

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %46 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %6, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = call i32 @devm_ioremap_resource(%struct.TYPE_18__* %53, %struct.resource* %54)
  %56 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %57 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %59 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %65 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %209

68:                                               ; preds = %48
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @platform_get_irq(%struct.platform_device* %69, i32 0)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %209

78:                                               ; preds = %68
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @devm_clk_get(%struct.TYPE_18__* %80, i32* null)
  %82 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %83 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %85 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %94 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %2, align 4
  br label %209

97:                                               ; preds = %78
  %98 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %99 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clk_prepare_enable(i32 %100)
  %102 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %103 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @strlcpy(i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %110 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %109, i32 0, i32 2
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %110, align 8
  %111 = load i32, i32* @THIS_MODULE, align 4
  %112 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %113 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 4
  store i32 %111, i32* %114, align 8
  %115 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %116 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  store i32* @hix5hd2_i2c_algorithm, i32** %117, align 8
  %118 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %119 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  store i32 3, i32* %120, align 8
  %121 = load %struct.device_node*, %struct.device_node** %4, align 8
  %122 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %123 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  store %struct.device_node* %121, %struct.device_node** %125, align 8
  %126 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %127 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %128 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  store %struct.hix5hd2_i2c_priv* %126, %struct.hix5hd2_i2c_priv** %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %133 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store %struct.TYPE_18__* %131, %struct.TYPE_18__** %135, align 8
  %136 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %137 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %136, i32 0, i32 3
  %138 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %139 = call i32 @i2c_set_adapdata(%struct.TYPE_19__* %137, %struct.hix5hd2_i2c_priv* %138)
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %142 = call i32 @platform_set_drvdata(%struct.platform_device* %140, %struct.hix5hd2_i2c_priv* %141)
  %143 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %144 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %143, i32 0, i32 5
  %145 = call i32 @spin_lock_init(i32* %144)
  %146 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %147 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %146, i32 0, i32 4
  %148 = call i32 @init_completion(i32* %147)
  %149 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %150 = call i32 @hix5hd2_i2c_init(%struct.hix5hd2_i2c_priv* %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @hix5hd2_i2c_irq, align 4
  %155 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @dev_name(%struct.TYPE_18__* %157)
  %159 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %160 = call i32 @devm_request_irq(%struct.TYPE_18__* %152, i32 %153, i32 %154, i32 %155, i32 %158, %struct.hix5hd2_i2c_priv* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %97
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %203

168:                                              ; preds = %97
  %169 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %170 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %169, i32 0, i32 2
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = load i32, i32* @MSEC_PER_SEC, align 4
  %173 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__* %171, i32 %172)
  %174 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %175 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %174, i32 0, i32 2
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__* %176)
  %178 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %179 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %178, i32 0, i32 2
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = call i32 @pm_runtime_set_active(%struct.TYPE_18__* %180)
  %182 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %183 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %182, i32 0, i32 2
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %184)
  %186 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %187 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %186, i32 0, i32 3
  %188 = call i32 @i2c_add_adapter(%struct.TYPE_19__* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %168
  br label %194

192:                                              ; preds = %168
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %2, align 4
  br label %209

194:                                              ; preds = %191
  %195 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %196 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %195, i32 0, i32 2
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %197)
  %199 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %200 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %199, i32 0, i32 2
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %200, align 8
  %202 = call i32 @pm_runtime_set_suspended(%struct.TYPE_18__* %201)
  br label %203

203:                                              ; preds = %194, %163
  %204 = load %struct.hix5hd2_i2c_priv*, %struct.hix5hd2_i2c_priv** %5, align 8
  %205 = getelementptr inbounds %struct.hix5hd2_i2c_priv, %struct.hix5hd2_i2c_priv* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @clk_disable_unprepare(i32 %206)
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %203, %192, %89, %73, %63, %20
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.hix5hd2_i2c_priv* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_19__*, %struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hix5hd2_i2c_init(%struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.hix5hd2_i2c_priv*) #1

declare dso_local i32 @dev_name(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_18__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
