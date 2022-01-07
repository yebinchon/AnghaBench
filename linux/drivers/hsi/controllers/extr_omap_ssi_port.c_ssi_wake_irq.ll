; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_wake_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_wake_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_port = type { i32 }
%struct.platform_device = type { i32 }
%struct.omap_ssi_port = type { i32, i32 }

@ssi_wake_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SSI cawake\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Request Wake in IRQ %d failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Enable wake on the wakeline in irq %d failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_port*, %struct.platform_device*)* @ssi_wake_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_wake_irq(%struct.hsi_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.omap_ssi_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hsi_port* %0, %struct.hsi_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %10 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %9)
  store %struct.omap_ssi_port* %10, %struct.omap_ssi_port** %6, align 8
  %11 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %12 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %17 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %20 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpiod_to_irq(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %25 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %27 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ssi_wake_thread, align 4
  %30 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %31 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @IRQF_ONESHOT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %36 = call i32 @devm_request_threaded_irq(i32* %27, i32 %28, i32* null, i32 %29, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.hsi_port* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %18
  %40 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %41 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %18
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @enable_irq_wake(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %52 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local i32 @gpiod_to_irq(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.hsi_port*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
