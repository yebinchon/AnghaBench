; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_port_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_port_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_port = type { i32 }
%struct.platform_device = type { i32 }
%struct.omap_ssi_port = type { i32 }

@ssi_pio_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SSI PORT\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Request IRQ %d failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_port*, %struct.platform_device*)* @ssi_port_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_port_irq(%struct.hsi_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.omap_ssi_port*, align 8
  %7 = alloca i32, align 4
  store %struct.hsi_port* %0, %struct.hsi_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %9 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %8)
  store %struct.omap_ssi_port* %9, %struct.omap_ssi_port** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = call i32 @platform_get_irq(%struct.platform_device* %10, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %19 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %21 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %20, i32 0, i32 0
  %22 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %23 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ssi_pio_thread, align 4
  %26 = load i32, i32* @IRQF_ONESHOT, align 4
  %27 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %28 = call i32 @devm_request_threaded_irq(i32* %21, i32 %24, i32* null, i32 %25, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.hsi_port* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %16
  %32 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %33 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %32, i32 0, i32 0
  %34 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %35 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %16
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.hsi_port*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
