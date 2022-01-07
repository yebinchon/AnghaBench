; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_set_backlight_level_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_abm.c_dce_abm_set_backlight_level_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abm = type { i32 }
%struct.dce_abm = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"New Backlight level: %d (0x%X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abm*, i32, i32, i32, i32)* @dce_abm_set_backlight_level_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_abm_set_backlight_level_pwm(%struct.abm* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.abm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dce_abm*, align 8
  store %struct.abm* %0, %struct.abm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.abm*, %struct.abm** %6, align 8
  %13 = call %struct.dce_abm* @TO_DCE_ABM(%struct.abm* %12)
  store %struct.dce_abm* %13, %struct.dce_abm** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @DC_LOG_BACKLIGHT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.dce_abm*, %struct.dce_abm** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dmcu_set_backlight_level(%struct.dce_abm* %20, i32 %21, i32 %22, i32 %23)
  br label %29

25:                                               ; preds = %5
  %26 = load %struct.dce_abm*, %struct.dce_abm** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @driver_set_backlight_level(%struct.dce_abm* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %19
  ret i32 1
}

declare dso_local %struct.dce_abm* @TO_DCE_ABM(%struct.abm*) #1

declare dso_local i32 @DC_LOG_BACKLIGHT(i8*, i32, i32) #1

declare dso_local i32 @dmcu_set_backlight_level(%struct.dce_abm*, i32, i32, i32) #1

declare dso_local i32 @driver_set_backlight_level(%struct.dce_abm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
