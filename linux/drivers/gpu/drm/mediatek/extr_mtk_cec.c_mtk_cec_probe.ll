; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_cec = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to ioremap cec: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get cec clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to get cec irq: %d\0A\00", align 1
@mtk_cec_htplg_isr_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"hdmi hpd\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to register cec irq: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to enable cec clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_cec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtk_cec*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mtk_cec* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.mtk_cec* %12, %struct.mtk_cec** %5, align 8
  %13 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %14 = icmp ne %struct.mtk_cec* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %121

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %19, %struct.mtk_cec* %20)
  %22 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %23 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %22, i32 0, i32 3
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = call i32 @devm_ioremap_resource(%struct.device* %28, %struct.resource* %29)
  %31 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %18
  %39 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %40 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %121

47:                                               ; preds = %18
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @devm_clk_get(%struct.device* %48, i32* null)
  %50 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %53 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %59 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %121

66:                                               ; preds = %47
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = call i32 @platform_get_irq(%struct.platform_device* %67, i32 0)
  %69 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %70 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %72 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %66
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %78 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %82 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %2, align 4
  br label %121

84:                                               ; preds = %66
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %87 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @mtk_cec_htplg_isr_thread, align 4
  %90 = load i32, i32* @IRQF_SHARED, align 4
  %91 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @devm_request_threaded_irq(%struct.device* %85, i32 %88, i32* null, i32 %89, i32 %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.device* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %84
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %121

104:                                              ; preds = %84
  %105 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %106 = getelementptr inbounds %struct.mtk_cec, %struct.mtk_cec* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_prepare_enable(i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %121

116:                                              ; preds = %104
  %117 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %118 = call i32 @mtk_cec_htplg_irq_init(%struct.mtk_cec* %117)
  %119 = load %struct.mtk_cec*, %struct.mtk_cec** %5, align 8
  %120 = call i32 @mtk_cec_htplg_irq_enable(%struct.mtk_cec* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %116, %111, %99, %75, %57, %38, %15
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.mtk_cec* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_cec*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mtk_cec_htplg_irq_init(%struct.mtk_cec*) #1

declare dso_local i32 @mtk_cec_htplg_irq_enable(%struct.mtk_cec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
