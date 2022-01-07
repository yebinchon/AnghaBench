; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-imx-irqsteer.c_imx_irqsteer_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.irqsteer_data = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_irqsteer_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_irqsteer_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.irqsteer_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.irqsteer_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.irqsteer_data* %6, %struct.irqsteer_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %10 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %15 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @irq_set_chained_handler_and_data(i32 %20, i32* null, i32* null)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %27 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @irq_domain_remove(i32 %28)
  %30 = load %struct.irqsteer_data*, %struct.irqsteer_data** %3, align 8
  %31 = getelementptr inbounds %struct.irqsteer_data, %struct.irqsteer_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  ret i32 0
}

declare dso_local %struct.irqsteer_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32*, i32*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
