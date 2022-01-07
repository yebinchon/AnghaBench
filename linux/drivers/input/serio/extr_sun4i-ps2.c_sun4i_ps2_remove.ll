; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sun4i-ps2.c_sun4i_ps2_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sun4i_ps2data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_ps2_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_ps2_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sun4i_ps2data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.sun4i_ps2data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.sun4i_ps2data* %5, %struct.sun4i_ps2data** %3, align 8
  %6 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %7 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @serio_unregister_port(i32 %8)
  %10 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %11 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.sun4i_ps2data* %13)
  %15 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %16 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %20 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_put(i32 %21)
  %23 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %24 = getelementptr inbounds %struct.sun4i_ps2data, %struct.sun4i_ps2data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iounmap(i32 %25)
  %27 = load %struct.sun4i_ps2data*, %struct.sun4i_ps2data** %3, align 8
  %28 = call i32 @kfree(%struct.sun4i_ps2data* %27)
  ret i32 0
}

declare dso_local %struct.sun4i_ps2data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @serio_unregister_port(i32) #1

declare dso_local i32 @free_irq(i32, %struct.sun4i_ps2data*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.sun4i_ps2data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
