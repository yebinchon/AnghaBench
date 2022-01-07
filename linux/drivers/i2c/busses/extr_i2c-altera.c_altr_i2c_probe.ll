; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-altera.c_altr_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.altr_i2c_dev = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"missing interrupt resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"missing clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fifo-size\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"FIFO size set to default of %d\0A\00", align 1
@ALTR_I2C_DFLT_FIFO_SZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Default to 100kHz\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"invalid clock-frequency %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@altr_i2c_isr_quick = common dso_local global i32 0, align 4
@altr_i2c_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to claim IRQ %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@altr_i2c_algo = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Altera SoftIP I2C Probe Complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altr_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altr_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altr_i2c_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.altr_i2c_dev* null, %struct.altr_i2c_dev** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.altr_i2c_dev* @devm_kzalloc(%struct.TYPE_13__* %10, i32 72, i32 %11)
  store %struct.altr_i2c_dev* %12, %struct.altr_i2c_dev** %4, align 8
  %13 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %14 = icmp ne %struct.altr_i2c_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %209

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i32 @devm_ioremap_resource(%struct.TYPE_13__* %23, %struct.resource* %24)
  %26 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %27 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %29 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %35 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %209

38:                                               ; preds = %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @platform_get_irq(%struct.platform_device* %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %209

48:                                               ; preds = %38
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @devm_clk_get(%struct.TYPE_13__* %50, i32* null)
  %52 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %53 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %55 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %48
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %64 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %209

67:                                               ; preds = %48
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %71 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %70, i32 0, i32 4
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %71, align 8
  %72 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %73 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %72, i32 0, i32 6
  %74 = call i32 @init_completion(i32* %73)
  %75 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %76 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %75, i32 0, i32 5
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %79 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %78, i32 0, i32 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %82 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %81, i32 0, i32 0
  %83 = call i64 @device_property_read_u32(%struct.TYPE_13__* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %82)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %67
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* @ALTR_I2C_DFLT_FIFO_SZ, align 4
  %90 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ALTR_I2C_DFLT_FIFO_SZ, align 4
  %92 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %93 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %86, %67
  %95 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %96 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %95, i32 0, i32 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %99 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %98, i32 0, i32 1
  %100 = call i64 @device_property_read_u32(%struct.TYPE_13__* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %99)
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %108 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %107, i32 0, i32 1
  store i32 100000, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %94
  %110 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %111 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 400000
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %118 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %209

123:                                              ; preds = %109
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @altr_i2c_isr_quick, align 4
  %128 = load i32, i32* @altr_i2c_isr, align 4
  %129 = load i32, i32* @IRQF_ONESHOT, align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %134 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %132, %struct.altr_i2c_dev* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %123
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load i32, i32* %6, align 4
  %141 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %2, align 4
  br label %209

143:                                              ; preds = %123
  %144 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %145 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @clk_prepare_enable(i32 %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %2, align 4
  br label %209

155:                                              ; preds = %143
  %156 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %157 = call i32 @altr_i2c_init(%struct.altr_i2c_dev* %156)
  %158 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %159 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %158, i32 0, i32 3
  %160 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %161 = call i32 @i2c_set_adapdata(%struct.TYPE_12__* %159, %struct.altr_i2c_dev* %160)
  %162 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %163 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @strlcpy(i32 %165, i32 %168, i32 4)
  %170 = load i32, i32* @THIS_MODULE, align 4
  %171 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %172 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 8
  %174 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %175 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  store i32* @altr_i2c_algo, i32** %176, align 8
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %180 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  store %struct.TYPE_13__* %178, %struct.TYPE_13__** %182, align 8
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %188 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store i32 %186, i32* %190, align 8
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %193 = call i32 @platform_set_drvdata(%struct.platform_device* %191, %struct.altr_i2c_dev* %192)
  %194 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %195 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %194, i32 0, i32 3
  %196 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %155
  %200 = load %struct.altr_i2c_dev*, %struct.altr_i2c_dev** %4, align 8
  %201 = getelementptr inbounds %struct.altr_i2c_dev, %struct.altr_i2c_dev* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @clk_disable_unprepare(i32 %202)
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %2, align 4
  br label %209

205:                                              ; preds = %155
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @dev_info(%struct.TYPE_13__* %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %209

209:                                              ; preds = %205, %199, %150, %137, %114, %59, %43, %33, %15
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.altr_i2c_dev* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @device_property_read_u32(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32, i32, i32, i32, %struct.altr_i2c_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @altr_i2c_init(%struct.altr_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_12__*, %struct.altr_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.altr_i2c_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
