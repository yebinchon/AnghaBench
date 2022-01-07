; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, i32 }
%struct.highlander_i2c_dev = type { i32, i64, %struct.i2c_adapter, i32, i32* }
%struct.i2c_adapter = type { i32, %struct.TYPE_2__, i32*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no mem resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@iic_force_poll = common dso_local global i64 0, align 8
@highlander_i2c_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no IRQ, using polling mode\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"HL FPGA I2C adapter\00", align 1
@highlander_i2c_algo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"controller didn't come up\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failure adding adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @highlander_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highlander_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.highlander_i2c_dev*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = load %struct.resource*, %struct.resource** %6, align 8
  %12 = icmp ne %struct.resource* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %174

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.highlander_i2c_dev* @kzalloc(i32 72, i32 %24)
  store %struct.highlander_i2c_dev* %25, %struct.highlander_i2c_dev** %4, align 8
  %26 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %27 = icmp ne %struct.highlander_i2c_dev* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %174

35:                                               ; preds = %23
  %36 = load %struct.resource*, %struct.resource** %6, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = call i32 @resource_size(%struct.resource* %39)
  %41 = call i32 @ioremap_nocache(i32 %38, i32 %40)
  %42 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %43 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %45 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %170

55:                                               ; preds = %35
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %59 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %62 = call i32 @platform_set_drvdata(%struct.platform_device* %60, %struct.highlander_i2c_dev* %61)
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i64 @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %66 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* @iic_force_poll, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %71 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %55
  %73 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %74 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %79 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @highlander_i2c_irq, align 4
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %86 = call i32 @request_irq(i64 %80, i32 %81, i32 0, i32 %84, %struct.highlander_i2c_dev* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %165

91:                                               ; preds = %77
  %92 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %93 = call i32 @highlander_i2c_irq_enable(%struct.highlander_i2c_dev* %92)
  br label %100

94:                                               ; preds = %72
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_notice(i32* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %99 = call i32 @highlander_i2c_irq_disable(%struct.highlander_i2c_dev* %98)
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* @jiffies, align 4
  %102 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %103 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %105 = call i32 @highlander_i2c_setup(%struct.highlander_i2c_dev* %104)
  %106 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %107 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %106, i32 0, i32 2
  store %struct.i2c_adapter* %107, %struct.i2c_adapter** %5, align 8
  %108 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %109 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %110 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %108, %struct.highlander_i2c_dev* %109)
  %111 = load i32, i32* @THIS_MODULE, align 4
  %112 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %113 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %115 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %116 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %118 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @strlcpy(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %121 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %121, i32 0, i32 2
  store i32* @highlander_i2c_algo, i32** %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %126 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32* %124, i32** %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %132 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %134 = call i32 @highlander_i2c_reset(%struct.highlander_i2c_dev* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %100
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %153

142:                                              ; preds = %100
  %143 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %144 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_err(i32* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %153

152:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %174

153:                                              ; preds = %148, %138
  %154 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %155 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %160 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %163 = call i32 @free_irq(i64 %161, %struct.highlander_i2c_dev* %162)
  br label %164

164:                                              ; preds = %158, %153
  br label %165

165:                                              ; preds = %164, %90
  %166 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %167 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @iounmap(i32 %168)
  br label %170

170:                                              ; preds = %165, %52
  %171 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %172 = call i32 @kfree(%struct.highlander_i2c_dev* %171)
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %152, %32, %17
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.highlander_i2c_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.highlander_i2c_dev*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_irq_enable(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @highlander_i2c_irq_disable(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @highlander_i2c_setup(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.highlander_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @highlander_i2c_reset(%struct.highlander_i2c_dev*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @free_irq(i64, %struct.highlander_i2c_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.highlander_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
