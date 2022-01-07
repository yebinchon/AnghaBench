; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_domain_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_domain_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.xgene_gpio_sb* }
%struct.xgene_gpio_sb = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.irq_data = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Unable to configure XGene GPIO standby pin %d as IRQ\0A\00", align 1
@MPA_GPIO_SEL_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_data*, i32)* @xgene_gpio_sb_domain_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_gpio_sb_domain_activate(%struct.irq_domain* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xgene_gpio_sb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store %struct.irq_data* %1, %struct.irq_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %12, align 8
  store %struct.xgene_gpio_sb* %13, %struct.xgene_gpio_sb** %8, align 8
  %14 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %8, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb* %14, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %8, align 8
  %20 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %19, i32 0, i32 1
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @gpiochip_lock_as_irq(%struct.TYPE_3__* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %8, align 8
  %27 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %8, align 8
  %35 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %34, i32 0, i32 1
  %36 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %8, align 8
  %37 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MPA_GPIO_SEL_LO, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 2
  %43 = call i32 @xgene_gpio_set_bit(%struct.TYPE_3__* %35, i64 %40, i32 %42, i32 1)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %33, %25
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @HWIRQ_TO_GPIO(%struct.xgene_gpio_sb*, i32) #1

declare dso_local i32 @gpiochip_lock_as_irq(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @xgene_gpio_set_bit(%struct.TYPE_3__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
