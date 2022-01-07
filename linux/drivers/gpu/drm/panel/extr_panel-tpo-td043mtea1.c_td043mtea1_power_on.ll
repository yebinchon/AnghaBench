; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_td043mtea1_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td043mtea1_panel = type { i32, i32, i32, i32 }

@TPO_R02_NCLK_RISING = common dso_local global i32 0, align 4
@TPO_R03_VAL_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.td043mtea1_panel*)* @td043mtea1_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td043mtea1_power_on(%struct.td043mtea1_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.td043mtea1_panel*, align 8
  %4 = alloca i32, align 4
  store %struct.td043mtea1_panel* %0, %struct.td043mtea1_panel** %3, align 8
  %5 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %6 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %12 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regulator_enable(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %46

19:                                               ; preds = %10
  %20 = call i32 @msleep(i32 160)
  %21 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %22 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_set_value(i32 %23, i32 0)
  %25 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %26 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %27 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TPO_R02_MODE(i32 %28)
  %30 = load i32, i32* @TPO_R02_NCLK_RISING, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %25, i32 2, i32 %31)
  %33 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %34 = load i32, i32* @TPO_R03_VAL_NORMAL, align 4
  %35 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %33, i32 3, i32 %34)
  %36 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %37 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %36, i32 32, i32 240)
  %38 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %39 = call i32 @td043mtea1_write(%struct.td043mtea1_panel* %38, i32 33, i32 240)
  %40 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %41 = call i32 @td043mtea1_write_mirror(%struct.td043mtea1_panel* %40)
  %42 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %43 = call i32 @td043mtea1_write_gamma(%struct.td043mtea1_panel* %42)
  %44 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %3, align 8
  %45 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %19, %17, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @td043mtea1_write(%struct.td043mtea1_panel*, i32, i32) #1

declare dso_local i32 @TPO_R02_MODE(i32) #1

declare dso_local i32 @td043mtea1_write_mirror(%struct.td043mtea1_panel*) #1

declare dso_local i32 @td043mtea1_write_gamma(%struct.td043mtea1_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
