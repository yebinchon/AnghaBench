; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.uniphier_fi2c_priv = type { i64, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_4__ = type { i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get IRQ number\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@UNIPHIER_FI2C_DEFAULT_SPEED = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_MAX_SPEED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid clock-frequency %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"input clock rate should not be zero\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@uniphier_fi2c_algo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"UniPhier FI2C\00", align 1
@uniphier_fi2c_bus_recovery_info = common dso_local global i32 0, align 4
@uniphier_fi2c_interrupt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_fi2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_fi2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_fi2c_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.uniphier_fi2c_priv* @devm_kzalloc(%struct.device* %12, i32 80, i32 %13)
  store %struct.uniphier_fi2c_priv* %14, %struct.uniphier_fi2c_priv** %5, align 8
  %15 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %16 = icmp ne %struct.uniphier_fi2c_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %179

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %21, i32 0)
  %23 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %24 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %26 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %32 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %179

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %179

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @of_property_read_u32(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64* %6)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @UNIPHIER_FI2C_DEFAULT_SPEED, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @UNIPHIER_FI2C_MAX_SPEED, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %52
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %179

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @devm_clk_get(%struct.device* %66, i32* null)
  %68 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %69 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %71 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %78 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %79 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %179

82:                                               ; preds = %65
  %83 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %84 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_prepare_enable(i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %179

91:                                               ; preds = %82
  %92 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %93 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @clk_get_rate(i32 %94)
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %169

103:                                              ; preds = %91
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %6, align 8
  %106 = udiv i64 %104, %105
  %107 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %108 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %110 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %109, i32 0, i32 4
  %111 = call i32 @init_completion(i32* %110)
  %112 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %113 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %112, i32 0, i32 3
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load i32, i32* @THIS_MODULE, align 4
  %116 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %117 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 8
  %119 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %120 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32* @uniphier_fi2c_algo, i32** %121, align 8
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %124 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store %struct.device* %122, %struct.device** %126, align 8
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %131 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 8
  %134 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %135 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @strlcpy(i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %139 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %140 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32* @uniphier_fi2c_bus_recovery_info, i32** %141, align 8
  %142 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %143 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %142, i32 0, i32 2
  %144 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %145 = call i32 @i2c_set_adapdata(%struct.TYPE_5__* %143, %struct.uniphier_fi2c_priv* %144)
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %148 = call i32 @platform_set_drvdata(%struct.platform_device* %146, %struct.uniphier_fi2c_priv* %147)
  %149 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %150 = call i32 @uniphier_fi2c_hw_init(%struct.uniphier_fi2c_priv* %149)
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @uniphier_fi2c_interrupt, align 4
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %158 = call i32 @devm_request_irq(%struct.device* %151, i32 %152, i32 %153, i32 0, i32 %156, %struct.uniphier_fi2c_priv* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %103
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  br label %169

165:                                              ; preds = %103
  %166 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %167 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %166, i32 0, i32 2
  %168 = call i32 @i2c_add_adapter(%struct.TYPE_5__* %167)
  store i32 %168, i32* %9, align 4
  br label %169

169:                                              ; preds = %165, %161, %98
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %5, align 8
  %174 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @clk_disable_unprepare(i32 %175)
  br label %177

177:                                              ; preds = %172, %169
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %89, %75, %59, %40, %30, %17
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.uniphier_fi2c_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_5__*, %struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @uniphier_fi2c_hw_init(%struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
