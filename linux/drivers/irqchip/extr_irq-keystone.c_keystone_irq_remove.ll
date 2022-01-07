; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-keystone.c_keystone_irq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.keystone_irq_device = type { i32, i32 }

@KEYSTONE_N_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @keystone_irq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_irq_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.keystone_irq_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.keystone_irq_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.keystone_irq_device* %6, %struct.keystone_irq_device** %3, align 8
  %7 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %3, align 8
  %8 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.keystone_irq_device* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @KEYSTONE_N_IRQ, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %3, align 8
  %18 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @irq_find_mapping(i32 %19, i32 %20)
  %22 = call i32 @irq_dispose_mapping(i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %12

26:                                               ; preds = %12
  %27 = load %struct.keystone_irq_device*, %struct.keystone_irq_device** %3, align 8
  %28 = getelementptr inbounds %struct.keystone_irq_device, %struct.keystone_irq_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @irq_domain_remove(i32 %29)
  ret i32 0
}

declare dso_local %struct.keystone_irq_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.keystone_irq_device*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
