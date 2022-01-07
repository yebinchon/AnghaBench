; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-kingdisplay-kd097d04.c_kingdisplay_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-kingdisplay-kd097d04.c_kingdisplay_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kingdisplay_panel = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { %struct.device*, i32* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.device }

@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to get enable gpio: %d\0A\00", align 1
@kingdisplay_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kingdisplay_panel*)* @kingdisplay_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kingdisplay_panel_add(%struct.kingdisplay_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kingdisplay_panel*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.kingdisplay_panel* %0, %struct.kingdisplay_panel** %3, align 8
  %6 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %7 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32* @devm_regulator_get(%struct.device* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %13 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %12, i32 0, i32 4
  store i32* %11, i32** %13, align 8
  %14 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %15 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %21 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %2, align 4
  br label %77

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %27 = call i32* @devm_gpiod_get_optional(%struct.device* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %29 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %31 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %37 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %44 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %35, %24
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32* @devm_of_find_backlight(%struct.device* %46)
  %48 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %49 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %51 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %57 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @PTR_ERR(i32* %58)
  store i32 %59, i32* %2, align 4
  br label %77

60:                                               ; preds = %45
  %61 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %62 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %61, i32 0, i32 0
  %63 = call i32 @drm_panel_init(%struct.TYPE_5__* %62)
  %64 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %65 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32* @kingdisplay_panel_funcs, i32** %66, align 8
  %67 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %68 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %72 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store %struct.device* %70, %struct.device** %73, align 8
  %74 = load %struct.kingdisplay_panel*, %struct.kingdisplay_panel** %3, align 8
  %75 = getelementptr inbounds %struct.kingdisplay_panel, %struct.kingdisplay_panel* %74, i32 0, i32 0
  %76 = call i32 @drm_panel_add(%struct.TYPE_5__* %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %60, %55, %19
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32* @devm_of_find_backlight(%struct.device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
