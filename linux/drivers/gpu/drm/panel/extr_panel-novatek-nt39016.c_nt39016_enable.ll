; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.nt39016 = type { i64, i32, i32 }

@NT39016_REG_SYSTEM = common dso_local global i32 0, align 4
@NT39016_SYSTEM_RESET_N = common dso_local global i32 0, align 4
@NT39016_SYSTEM_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to enable panel: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @nt39016_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt39016_enable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.nt39016*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.nt39016* @to_nt39016(%struct.drm_panel* %6)
  store %struct.nt39016* %7, %struct.nt39016** %4, align 8
  %8 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %9 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NT39016_REG_SYSTEM, align 4
  %12 = load i32, i32* @NT39016_SYSTEM_RESET_N, align 4
  %13 = load i32, i32* @NT39016_SYSTEM_STANDBY, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @regmap_write(i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %20 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %1
  %26 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %27 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = call i32 @msleep(i32 150)
  %32 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %33 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @backlight_enable(i64 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.nt39016* @to_nt39016(%struct.drm_panel*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @backlight_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
