; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i64 }
%struct.of_device_id = type { %struct.platform_device_id* }
%struct.platform_device_id = type { i32 }
%struct.mxs_i2c_dev = type { i64, %struct.i2c_adapter, i32, i32, %struct.device*, i32 }
%struct.i2c_adapter = type { %struct.TYPE_2__, i32, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.device* }

@mxs_i2c_dt_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mxs_i2c_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rx-tx\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to request dma\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"MXS I2C adapter\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@mxs_i2c_algo = common dso_local global i32 0, align 4
@mxs_i2c_quirks = common dso_local global i32 0, align 4
@MXS_I2C_CTRL0_SFTRST = common dso_local global i32 0, align 4
@MXS_I2C_CTRL0_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mxs_i2c_dev*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.platform_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @mxs_i2c_dt_ids, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.of_device_id* @of_match_device(i32 %11, %struct.device* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mxs_i2c_dev* @devm_kzalloc(%struct.device* %17, i32 80, i32 %18)
  store %struct.mxs_i2c_dev* %19, %struct.mxs_i2c_dev** %6, align 8
  %20 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %21 = icmp ne %struct.mxs_i2c_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %161

25:                                               ; preds = %1
  %26 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %27 = icmp ne %struct.of_device_id* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %30 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %29, i32 0, i32 0
  %31 = load %struct.platform_device_id*, %struct.platform_device_id** %30, align 8
  store %struct.platform_device_id* %31, %struct.platform_device_id** %10, align 8
  %32 = load %struct.platform_device_id*, %struct.platform_device_id** %10, align 8
  %33 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %36 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %28, %25
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %38, i32 0)
  %40 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %41 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %43 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @IS_ERR(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %49 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @PTR_ERR(i64 %50)
  store i32 %51, i32* %2, align 4
  br label %161

52:                                               ; preds = %37
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = call i32 @platform_get_irq(%struct.platform_device* %53, i32 0)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %161

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @mxs_i2c_isr, align 4
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i32 @dev_name(%struct.device* %63)
  %65 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %66 = call i32 @devm_request_irq(%struct.device* %60, i32 %61, i32 %62, i32 0, i32 %64, %struct.mxs_i2c_dev* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %161

71:                                               ; preds = %59
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %74 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %73, i32 0, i32 4
  store %struct.device* %72, %struct.device** %74, align 8
  %75 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %76 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %75, i32 0, i32 3
  %77 = call i32 @init_completion(i32* %76)
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %84 = call i32 @mxs_i2c_get_ofdata(%struct.mxs_i2c_dev* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %161

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %71
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = call i32 @dma_request_slave_channel(%struct.device* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %94 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %96 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %90
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %161

104:                                              ; preds = %90
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %107 = call i32 @platform_set_drvdata(%struct.platform_device* %105, %struct.mxs_i2c_dev* %106)
  %108 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %109 = call i32 @mxs_i2c_reset(%struct.mxs_i2c_dev* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %161

114:                                              ; preds = %104
  %115 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %116 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %115, i32 0, i32 1
  store %struct.i2c_adapter* %116, %struct.i2c_adapter** %7, align 8
  %117 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %118 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strlcpy(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %121 = load i32, i32* @THIS_MODULE, align 4
  %122 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %123 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %125 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %124, i32 0, i32 3
  store i32* @mxs_i2c_algo, i32** %125, align 8
  %126 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %127 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %126, i32 0, i32 2
  store i32* @mxs_i2c_quirks, i32** %127, align 8
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %130 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store %struct.device* %128, %struct.device** %131, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %136 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.device, %struct.device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %142 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %145 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %146 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %144, %struct.mxs_i2c_dev* %145)
  %147 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %148 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %114
  %152 = load i32, i32* @MXS_I2C_CTRL0_SFTRST, align 4
  %153 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %6, align 8
  %154 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MXS_I2C_CTRL0_SET, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 %152, i64 %157)
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %114
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %151, %112, %99, %87, %69, %57, %47, %22
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.mxs_i2c_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.mxs_i2c_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mxs_i2c_get_ofdata(%struct.mxs_i2c_dev*) #1

declare dso_local i32 @dma_request_slave_channel(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxs_i2c_dev*) #1

declare dso_local i32 @mxs_i2c_reset(%struct.mxs_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.mxs_i2c_dev*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
