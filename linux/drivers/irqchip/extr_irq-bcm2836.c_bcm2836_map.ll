; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm2836.c_bcm2836_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-bcm2836.c_bcm2836_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i32 }
%struct.irq_domain = type { i32 }

@bcm2836_arm_irqchip_timer = common dso_local global %struct.irq_chip zeroinitializer, align 4
@bcm2836_arm_irqchip_gpu = common dso_local global %struct.irq_chip zeroinitializer, align 4
@bcm2836_arm_irqchip_pmu = common dso_local global %struct.irq_chip zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unexpected hw irq: %lu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@handle_percpu_devid_irq = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32)* @bcm2836_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2836_map(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %13 [
    i32 131, label %10
    i32 132, label %10
    i32 133, label %10
    i32 130, label %10
    i32 129, label %11
    i32 128, label %12
  ]

10:                                               ; preds = %3, %3, %3, %3
  store %struct.irq_chip* @bcm2836_arm_irqchip_timer, %struct.irq_chip** %8, align 8
  br label %18

11:                                               ; preds = %3
  store %struct.irq_chip* @bcm2836_arm_irqchip_gpu, %struct.irq_chip** %8, align 8
  br label %18

12:                                               ; preds = %3
  store %struct.irq_chip* @bcm2836_arm_irqchip_pmu, %struct.irq_chip** %8, align 8
  br label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @pr_warn_once(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %33

18:                                               ; preds = %12, %11, %10
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @irq_set_percpu_devid(i32 %19)
  %21 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %25 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %26 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @handle_percpu_devid_irq, align 4
  %29 = call i32 @irq_domain_set_info(%struct.irq_domain* %21, i32 %22, i32 %23, %struct.irq_chip* %24, i32 %27, i32 %28, i32* null, i32* null)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %32 = call i32 @irq_set_status_flags(i32 %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %18, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @pr_warn_once(i8*, i32) #1

declare dso_local i32 @irq_set_percpu_devid(i32) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, %struct.irq_chip*, i32, i32, i32*, i32*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
