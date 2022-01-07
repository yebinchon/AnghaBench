; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sharp-lq101r1sx01.c_sharp_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sharp_panel = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.device*, i32* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.device }

@default_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@sharp_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sharp_panel*)* @sharp_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_panel_add(%struct.sharp_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sharp_panel*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.sharp_panel* %0, %struct.sharp_panel** %3, align 8
  %5 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %6 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %10 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %9, i32 0, i32 4
  store i32* @default_mode, i32** %10, align 8
  %11 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %12 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @devm_regulator_get(%struct.device* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %17 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %19 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %25 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PTR_ERR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %60

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @devm_of_find_backlight(%struct.device* %29)
  %31 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %32 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %34 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %40 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %60

43:                                               ; preds = %28
  %44 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %45 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %44, i32 0, i32 0
  %46 = call i32 @drm_panel_init(%struct.TYPE_5__* %45)
  %47 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %48 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32* @sharp_panel_funcs, i32** %49, align 8
  %50 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %51 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %55 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load %struct.sharp_panel*, %struct.sharp_panel** %3, align 8
  %58 = getelementptr inbounds %struct.sharp_panel, %struct.sharp_panel* %57, i32 0, i32 0
  %59 = call i32 @drm_panel_add(%struct.TYPE_5__* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %43, %38, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_of_find_backlight(%struct.device*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_5__*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
