; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-em.c_em_gio_irq_domain_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-em.c_em_gio_irq_domain_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.em_gio_priv* }
%struct.em_gio_priv = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"gio: map hw irq = %d, irq = %d\0A\00", align 1
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @em_gio_irq_domain_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_gio_irq_domain_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.em_gio_priv*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %9 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %8, i32 0, i32 0
  %10 = load %struct.em_gio_priv*, %struct.em_gio_priv** %9, align 8
  store %struct.em_gio_priv* %10, %struct.em_gio_priv** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %17 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %16, i32 0, i32 0
  %18 = load %struct.em_gio_priv*, %struct.em_gio_priv** %17, align 8
  %19 = call i32 @irq_set_chip_data(i32 %15, %struct.em_gio_priv* %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.em_gio_priv*, %struct.em_gio_priv** %7, align 8
  %22 = getelementptr inbounds %struct.em_gio_priv, %struct.em_gio_priv* %21, i32 0, i32 0
  %23 = load i32, i32* @handle_level_irq, align 4
  %24 = call i32 @irq_set_chip_and_handler(i32 %20, i32* %22, i32 %23)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.em_gio_priv*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
