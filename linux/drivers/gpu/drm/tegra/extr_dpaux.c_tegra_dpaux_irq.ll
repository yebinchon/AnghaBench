; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_tegra_dpaux_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_tegra_dpaux_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dpaux = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@DPAUX_INTR_AUX = common dso_local global i32 0, align 4
@DPAUX_INTR_PLUG_EVENT = common dso_local global i32 0, align 4
@DPAUX_INTR_UNPLUG_EVENT = common dso_local global i32 0, align 4
@DPAUX_INTR_IRQ_EVENT = common dso_local global i32 0, align 4
@DPAUX_INTR_AUX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_dpaux_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dpaux_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_dpaux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.tegra_dpaux*
  store %struct.tegra_dpaux* %9, %struct.tegra_dpaux** %5, align 8
  %10 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %5, align 8
  %12 = load i32, i32* @DPAUX_INTR_AUX, align 4
  %13 = call i32 @tegra_dpaux_readl(%struct.tegra_dpaux* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DPAUX_INTR_AUX, align 4
  %17 = call i32 @tegra_dpaux_writel(%struct.tegra_dpaux* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DPAUX_INTR_PLUG_EVENT, align 4
  %20 = load i32, i32* @DPAUX_INTR_UNPLUG_EVENT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %25, i32 0, i32 1
  %27 = call i32 @schedule_work(i32* %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DPAUX_INTR_IRQ_EVENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DPAUX_INTR_AUX_DONE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %40, i32 0, i32 0
  %42 = call i32 @complete(i32* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @tegra_dpaux_readl(%struct.tegra_dpaux*, i32) #1

declare dso_local i32 @tegra_dpaux_writel(%struct.tegra_dpaux*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
