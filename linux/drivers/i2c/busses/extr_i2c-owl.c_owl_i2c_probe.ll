; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.owl_i2c_dev = type { i64, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32*, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get IRQ number\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@OWL_I2C_DEF_SPEED_HZ = common dso_local global i64 0, align 8
@OWL_I2C_MAX_SPEED_HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid clock-frequency %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"input clock rate should not be zero\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@owl_i2c_algorithm = common dso_local global i32 0, align 4
@OWL_I2C_TIMEOUT = common dso_local global i32 0, align 4
@owl_i2c_quirks = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"OWL I2C adapter\00", align 1
@owl_i2c_interrupt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @owl_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.owl_i2c_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.owl_i2c_dev* @devm_kzalloc(%struct.device* %11, i32 88, i32 %12)
  store %struct.owl_i2c_dev* %13, %struct.owl_i2c_dev** %5, align 8
  %14 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %15 = icmp ne %struct.owl_i2c_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %190

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = call i32 @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %27 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %29 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %35 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %190

38:                                               ; preds = %19
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @platform_get_irq(%struct.platform_device* %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %190

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %52 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %51, i32 0, i32 0
  %53 = call i64 @of_property_read_u32(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load i64, i64* @OWL_I2C_DEF_SPEED_HZ, align 8
  %57 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %58 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %61 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @OWL_I2C_DEF_SPEED_HZ, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %67 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @OWL_I2C_MAX_SPEED_HZ, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %74 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %190

79:                                               ; preds = %65, %59
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = call i32 @devm_clk_get(%struct.device* %80, i32* null)
  %82 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %83 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %85 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %93 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %190

96:                                               ; preds = %79
  %97 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %98 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @clk_prepare_enable(i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %190

105:                                              ; preds = %96
  %106 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %107 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @clk_get_rate(i32 %108)
  %110 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %111 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %113 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %105
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %117, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  br label %184

121:                                              ; preds = %105
  %122 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %123 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %122, i32 0, i32 4
  %124 = call i32 @init_completion(i32* %123)
  %125 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %126 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %125, i32 0, i32 3
  %127 = call i32 @spin_lock_init(i32* %126)
  %128 = load i32, i32* @THIS_MODULE, align 4
  %129 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %130 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 5
  store i32 %128, i32* %131, align 8
  %132 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %133 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  store i32* @owl_i2c_algorithm, i32** %134, align 8
  %135 = load i32, i32* @OWL_I2C_TIMEOUT, align 4
  %136 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %137 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 8
  %139 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %140 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i32* @owl_i2c_quirks, i32** %141, align 8
  %142 = load %struct.device*, %struct.device** %4, align 8
  %143 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %144 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store %struct.device* %142, %struct.device** %146, align 8
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = getelementptr inbounds %struct.device, %struct.device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %151 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 %149, i32* %153, align 8
  %154 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %155 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @snprintf(i32 %157, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %159 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %160 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %159, i32 0, i32 2
  %161 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %162 = call i32 @i2c_set_adapdata(%struct.TYPE_5__* %160, %struct.owl_i2c_dev* %161)
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %165 = call i32 @platform_set_drvdata(%struct.platform_device* %163, %struct.owl_i2c_dev* %164)
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @owl_i2c_interrupt, align 4
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %173 = call i32 @devm_request_irq(%struct.device* %166, i32 %167, i32 %168, i32 0, i32 %171, %struct.owl_i2c_dev* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %121
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  br label %184

180:                                              ; preds = %121
  %181 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %182 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %181, i32 0, i32 2
  %183 = call i32 @i2c_add_adapter(%struct.TYPE_5__* %182)
  store i32 %183, i32* %2, align 4
  br label %190

184:                                              ; preds = %176, %116
  %185 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %5, align 8
  %186 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @clk_disable_unprepare(i32 %187)
  %189 = load i32, i32* %7, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %184, %180, %103, %89, %71, %43, %33, %16
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.owl_i2c_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_5__*, %struct.owl_i2c_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.owl_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.owl_i2c_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
