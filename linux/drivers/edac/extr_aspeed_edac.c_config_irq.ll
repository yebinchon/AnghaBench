; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_config_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_config_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"got irq %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mcr_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to request irq %d\0A\00", align 1
@aspeed_regmap = common dso_local global i32 0, align 4
@ASPEED_MCR_INTR_CTRL = common dso_local global i32 0, align 4
@ASPEED_MCR_INTR_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.platform_device*)* @config_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_irq(i8* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = call i32 @platform_get_irq(%struct.platform_device* %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @mcr_isr, align 4
  %24 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %25 = load i32, i32* @DRV_NAME, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @devm_request_irq(i32* %21, i32 %22, i32 %23, i32 %24, i32 %25, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %19
  %37 = load i32, i32* @aspeed_regmap, align 4
  %38 = load i32, i32* @ASPEED_MCR_INTR_CTRL, align 4
  %39 = load i32, i32* @ASPEED_MCR_INTR_CTRL_ENABLE, align 4
  %40 = load i32, i32* @ASPEED_MCR_INTR_CTRL_ENABLE, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %30, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
