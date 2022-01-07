; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-ls043t1le01.c_sharp_nt_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sharp_nt_panel = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { %struct.device*, i32* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.device }

@default_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot get reset-gpios %ld\0A\00", align 1
@sharp_nt_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sharp_nt_panel*)* @sharp_nt_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_nt_panel_add(%struct.sharp_nt_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sharp_nt_panel*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.sharp_nt_panel* %0, %struct.sharp_nt_panel** %3, align 8
  %5 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %6 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %10 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %9, i32 0, i32 5
  store i32* @default_mode, i32** %10, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32* @devm_regulator_get(%struct.device* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %14 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %13, i32 0, i32 4
  store i32* %12, i32** %14, align 8
  %15 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %16 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %22 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @PTR_ERR(i32* %23)
  store i32 %24, i32* %2, align 4
  br label %82

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %28 = call i32* @devm_gpiod_get(%struct.device* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %30 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %32 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %39 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  %42 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %44 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  br label %50

45:                                               ; preds = %25
  %46 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %47 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @gpiod_set_value(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %45, %36
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32* @devm_of_find_backlight(%struct.device* %51)
  %53 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %54 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %56 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @IS_ERR(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %62 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @PTR_ERR(i32* %63)
  store i32 %64, i32* %2, align 4
  br label %82

65:                                               ; preds = %50
  %66 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %67 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %66, i32 0, i32 0
  %68 = call i32 @drm_panel_init(%struct.TYPE_5__* %67)
  %69 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %70 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32* @sharp_nt_panel_funcs, i32** %71, align 8
  %72 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %73 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %77 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store %struct.device* %75, %struct.device** %78, align 8
  %79 = load %struct.sharp_nt_panel*, %struct.sharp_nt_panel** %3, align 8
  %80 = getelementptr inbounds %struct.sharp_nt_panel, %struct.sharp_nt_panel* %79, i32 0, i32 0
  %81 = call i32 @drm_panel_add(%struct.TYPE_5__* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %65, %60, %20
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_set_value(i32*, i32) #1

declare dso_local i32* @devm_of_find_backlight(%struct.device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
