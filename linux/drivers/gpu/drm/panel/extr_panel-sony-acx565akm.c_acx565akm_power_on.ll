; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sony-acx565akm.c_acx565akm_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acx565akm_panel = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"panel already enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acx565akm_panel*)* @acx565akm_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acx565akm_power_on(%struct.acx565akm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acx565akm_panel*, align 8
  store %struct.acx565akm_panel* %0, %struct.acx565akm_panel** %3, align 8
  %4 = call i32 @msleep(i32 50)
  %5 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %6 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @gpiod_set_value(i32 %7, i32 1)
  %9 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %10 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %15 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = call i32 @msleep(i32 120)
  %21 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %22 = call i32 @acx565akm_set_sleep_mode(%struct.acx565akm_panel* %21, i32 0)
  %23 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %24 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = call i32 @usleep_range(i32 5000, i32 10000)
  %26 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %27 = call i32 @acx565akm_set_display_state(%struct.acx565akm_panel* %26, i32 1)
  %28 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %29 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %30 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @acx565akm_set_cabc_mode(%struct.acx565akm_panel* %28, i32 %31)
  %33 = load %struct.acx565akm_panel*, %struct.acx565akm_panel** %3, align 8
  %34 = getelementptr inbounds %struct.acx565akm_panel, %struct.acx565akm_panel* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @acx565akm_bl_update_status_locked(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @acx565akm_set_sleep_mode(%struct.acx565akm_panel*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @acx565akm_set_display_state(%struct.acx565akm_panel*, i32) #1

declare dso_local i32 @acx565akm_set_cabc_mode(%struct.acx565akm_panel*, i32) #1

declare dso_local i32 @acx565akm_bl_update_status_locked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
