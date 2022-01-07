; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-xgene-sb.c_xgene_gpio_sb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_gpio_sb = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xgene_gpio_sb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_gpio_sb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xgene_gpio_sb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.xgene_gpio_sb* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.xgene_gpio_sb* %5, %struct.xgene_gpio_sb** %3, align 8
  %6 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %3, align 8
  %7 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %3, align 8
  %12 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %11, i32 0, i32 2
  %13 = call i32 @acpi_gpiochip_free_interrupts(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.xgene_gpio_sb*, %struct.xgene_gpio_sb** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_gpio_sb, %struct.xgene_gpio_sb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @irq_domain_remove(i32 %17)
  ret i32 0
}

declare dso_local %struct.xgene_gpio_sb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @acpi_gpiochip_free_interrupts(i32*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
