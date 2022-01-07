; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi4_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_hdmi = type { i32, i32, i32, i32, i32, i32, %struct.platform_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@hdmi_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"OMAP HDMI\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"HDMI IRQ request failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"can't get VDDA regulator\0A\00", align 1
@hdmi4_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hdmi4_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi4_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_hdmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.omap_hdmi* @kzalloc(i32 32, i32 %7)
  store %struct.omap_hdmi* %8, %struct.omap_hdmi** %4, align 8
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %10 = icmp ne %struct.omap_hdmi* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %129

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %17 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %16, i32 0, i32 6
  store %struct.platform_device* %15, %struct.platform_device** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %21 = call i32 @dev_set_drvdata(i32* %19, %struct.omap_hdmi* %20)
  %22 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %23 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %22, i32 0, i32 5
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %26 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %25, i32 0, i32 4
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %29 = call i32 @hdmi4_probe_of(%struct.omap_hdmi* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %125

33:                                               ; preds = %14
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %36 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %35, i32 0, i32 3
  %37 = call i32 @hdmi_wp_init(%struct.platform_device* %34, i32* %36, i32 4)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %125

41:                                               ; preds = %33
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %44 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %43, i32 0, i32 2
  %45 = call i32 @hdmi_phy_init(%struct.platform_device* %42, i32* %44, i32 4)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %125

49:                                               ; preds = %41
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %52 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %51, i32 0, i32 1
  %53 = call i32 @hdmi4_core_init(%struct.platform_device* %50, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %125

57:                                               ; preds = %49
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @platform_get_irq(%struct.platform_device* %58, i32 0)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %125

66:                                               ; preds = %57
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @hdmi_irq_handler, align 4
  %71 = load i32, i32* @IRQF_ONESHOT, align 4
  %72 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %73 = call i32 @devm_request_threaded_irq(i32* %68, i32 %69, i32* null, i32 %70, i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.omap_hdmi* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %125

78:                                               ; preds = %66
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i32 @devm_regulator_get(i32* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %83 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %85 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %78
  %90 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %91 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @EPROBE_DEFER, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = call i32 @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %89
  br label %125

101:                                              ; preds = %78
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @pm_runtime_enable(i32* %103)
  %105 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %106 = call i32 @hdmi4_init_output(%struct.omap_hdmi* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %121

110:                                              ; preds = %101
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @component_add(i32* %112, i32* @hdmi4_component_ops)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %118

117:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %129

118:                                              ; preds = %116
  %119 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %120 = call i32 @hdmi4_uninit_output(%struct.omap_hdmi* %119)
  br label %121

121:                                              ; preds = %118, %109
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @pm_runtime_disable(i32* %123)
  br label %125

125:                                              ; preds = %121, %100, %76, %62, %56, %48, %40, %32
  %126 = load %struct.omap_hdmi*, %struct.omap_hdmi** %4, align 8
  %127 = call i32 @kfree(%struct.omap_hdmi* %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %125, %117, %11
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.omap_hdmi* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.omap_hdmi*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hdmi4_probe_of(%struct.omap_hdmi*) #1

declare dso_local i32 @hdmi_wp_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @hdmi_phy_init(%struct.platform_device*, i32*, i32) #1

declare dso_local i32 @hdmi4_core_init(%struct.platform_device*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.omap_hdmi*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @hdmi4_init_output(%struct.omap_hdmi*) #1

declare dso_local i32 @component_add(i32*, i32*) #1

declare dso_local i32 @hdmi4_uninit_output(%struct.omap_hdmi*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @kfree(%struct.omap_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
