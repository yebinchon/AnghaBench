; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-novatek-nt39016.c_nt39016_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.nt39016 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to enable power supply: %d\00", align 1
@nt39016_panel_regs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to init registers: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @nt39016_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nt39016_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.nt39016*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.nt39016* @to_nt39016(%struct.drm_panel* %6)
  store %struct.nt39016* %7, %struct.nt39016** %4, align 8
  %8 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %9 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regulator_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %16 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %23 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_set_value_cansleep(i32 %24, i32 1)
  %26 = call i32 @usleep_range(i32 100, i32 1000)
  %27 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %28 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpiod_set_value_cansleep(i32 %29, i32 0)
  %31 = call i32 @udelay(i32 2)
  %32 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %33 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @nt39016_panel_regs, align 4
  %36 = load i32, i32* @nt39016_panel_regs, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @regmap_multi_reg_write(i32 %34, i32 %35, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %21
  %42 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %43 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %48

47:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %54

48:                                               ; preds = %41
  %49 = load %struct.nt39016*, %struct.nt39016** %4, align 8
  %50 = getelementptr inbounds %struct.nt39016, %struct.nt39016* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regulator_disable(i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %47, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.nt39016* @to_nt39016(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_multi_reg_write(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
