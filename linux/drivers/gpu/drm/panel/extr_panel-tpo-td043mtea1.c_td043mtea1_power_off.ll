; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td043mtea1_panel = type { i32, i32, i32 }

@TPO_R03_VAL_STANDBY = common dso_local global i32 0, align 4
@TPO_R03_EN_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.td043mtea1_panel*)* @td043mtea1_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td043mtea1_power_off(%struct.td043mtea1_panel* %0) #0 {
  %2 = alloca %struct.td043mtea1_panel*, align 8
  store %struct.td043mtea1_panel* %0, %struct.td043mtea1_panel** %2, align 8
  %3 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %4 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %10 = load i32, i32* @TPO_R03_VAL_STANDBY, align 4
  %11 = load i32, i32* @TPO_R03_EN_PWM, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %9, i32 3, i32 %12)
  %14 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %15 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpiod_set_value(i32 %16, i32 1)
  %18 = call i32 @msleep(i32 50)
  %19 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %20 = load i32, i32* @TPO_R03_VAL_STANDBY, align 4
  %21 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %19, i32 3, i32 %20)
  %22 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %23 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regulator_disable(i32 %24)
  %26 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %2, align 8
  %27 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @td043mtea1_write(%struct.td043mtea1_panel*, i32, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
