; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_actmon_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_tegra30-devfreq.c_tegra_actmon_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_devfreq = type { i32, i32* }

@ACTMON_SAMPLING_PERIOD = common dso_local global i64 0, align 8
@ACTMON_GLB_PERIOD_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_devfreq*)* @tegra_actmon_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_actmon_start(%struct.tegra_devfreq* %0) #0 {
  %2 = alloca %struct.tegra_devfreq*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_devfreq* %0, %struct.tegra_devfreq** %2, align 8
  %4 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @disable_irq(i32 %6)
  %8 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %2, align 8
  %9 = load i64, i64* @ACTMON_SAMPLING_PERIOD, align 8
  %10 = sub nsw i64 %9, 1
  %11 = load i32, i32* @ACTMON_GLB_PERIOD_CTRL, align 4
  %12 = call i32 @actmon_writel(%struct.tegra_devfreq* %8, i64 %10, i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %2, align 8
  %16 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %13
  %21 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %2, align 8
  %22 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %2, align 8
  %23 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @tegra_actmon_configure_device(%struct.tegra_devfreq* %21, i32* %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %2, align 8
  %34 = call i32 @actmon_write_barrier(%struct.tegra_devfreq* %33)
  %35 = load %struct.tegra_devfreq*, %struct.tegra_devfreq** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_devfreq, %struct.tegra_devfreq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @enable_irq(i32 %37)
  ret void
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @actmon_writel(%struct.tegra_devfreq*, i64, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tegra_actmon_configure_device(%struct.tegra_devfreq*, i32*) #1

declare dso_local i32 @actmon_write_barrier(%struct.tegra_devfreq*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
