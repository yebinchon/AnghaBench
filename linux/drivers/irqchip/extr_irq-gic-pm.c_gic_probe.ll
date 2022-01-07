; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-pm.c_gic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-pm.c_gic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gic_clk_data = type { i32, i32* }
%struct.gic_chip_pm = type { i32, %struct.gic_clk_data*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"no device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no parent interrupt found!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"GIC IRQ controller registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gic_clk_data*, align 8
  %6 = alloca %struct.gic_chip_pm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.gic_clk_data* @of_device_get_match_data(%struct.device* %13)
  store %struct.gic_clk_data* %14, %struct.gic_clk_data** %5, align 8
  %15 = load %struct.gic_clk_data*, %struct.gic_clk_data** %5, align 8
  %16 = icmp ne %struct.gic_clk_data* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %135

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.gic_chip_pm* @devm_kzalloc(%struct.device* %24, i32 24, i32 %25)
  store %struct.gic_chip_pm* %26, %struct.gic_chip_pm** %6, align 8
  %27 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %28 = icmp ne %struct.gic_chip_pm* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %135

32:                                               ; preds = %23
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @irq_of_parse_and_map(i32 %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %135

44:                                               ; preds = %32
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.gic_clk_data*, %struct.gic_clk_data** %5, align 8
  %47 = getelementptr inbounds %struct.gic_clk_data, %struct.gic_clk_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.TYPE_3__* @devm_kcalloc(%struct.device* %45, i32 %48, i32 4, i32 %49)
  %51 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %52 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %51, i32 0, i32 2
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  %53 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %54 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %135

60:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.gic_clk_data*, %struct.gic_clk_data** %5, align 8
  %64 = getelementptr inbounds %struct.gic_clk_data, %struct.gic_clk_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.gic_clk_data*, %struct.gic_clk_data** %5, align 8
  %69 = getelementptr inbounds %struct.gic_clk_data, %struct.gic_clk_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %76 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.gic_clk_data*, %struct.gic_clk_data** %5, align 8
  %88 = getelementptr inbounds %struct.gic_clk_data, %struct.gic_clk_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %91 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = call i32 @devm_clk_bulk_get(%struct.device* %86, i32 %89, %struct.TYPE_3__* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %131

97:                                               ; preds = %85
  %98 = load %struct.gic_clk_data*, %struct.gic_clk_data** %5, align 8
  %99 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %100 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %99, i32 0, i32 1
  store %struct.gic_clk_data* %98, %struct.gic_clk_data** %100, align 8
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %103 = call i32 @dev_set_drvdata(%struct.device* %101, %struct.gic_chip_pm* %102)
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = call i32 @pm_runtime_enable(%struct.device* %104)
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @pm_runtime_get_sync(%struct.device* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %128

111:                                              ; preds = %97
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %6, align 8
  %114 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @gic_of_init_child(%struct.device* %112, i32* %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %125

120:                                              ; preds = %111
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @pm_runtime_put(%struct.device* %121)
  %123 = load %struct.device*, %struct.device** %4, align 8
  %124 = call i32 @dev_info(%struct.device* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %135

125:                                              ; preds = %119
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 @pm_runtime_put_sync(%struct.device* %126)
  br label %128

128:                                              ; preds = %125, %110
  %129 = load %struct.device*, %struct.device** %4, align 8
  %130 = call i32 @pm_runtime_disable(%struct.device* %129)
  br label %131

131:                                              ; preds = %128, %96
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @irq_dispose_mapping(i32 %132)
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %131, %120, %57, %39, %29, %17
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.gic_clk_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.gic_chip_pm* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local %struct.TYPE_3__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_clk_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.gic_chip_pm*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @gic_of_init_child(%struct.device*, i32*, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
