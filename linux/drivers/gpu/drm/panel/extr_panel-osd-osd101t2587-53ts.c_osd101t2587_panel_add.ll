; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-osd-osd101t2587-53ts.c_osd101t2587_panel_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-osd-osd101t2587-53ts.c_osd101t2587_panel_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd101t2587_panel = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.device*, i32* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.device }

@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@osd101t2587_panel_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osd101t2587_panel*)* @osd101t2587_panel_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd101t2587_panel_add(%struct.osd101t2587_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.osd101t2587_panel*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.osd101t2587_panel* %0, %struct.osd101t2587_panel** %3, align 8
  %5 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %6 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @devm_regulator_get(%struct.device* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %12 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %14 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %20 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @devm_of_find_backlight(%struct.device* %24)
  %26 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %27 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %29 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %35 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %23
  %39 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %40 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %39, i32 0, i32 0
  %41 = call i32 @drm_panel_init(%struct.TYPE_5__* %40)
  %42 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %43 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32* @osd101t2587_panel_funcs, i32** %44, align 8
  %45 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %46 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %50 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store %struct.device* %48, %struct.device** %51, align 8
  %52 = load %struct.osd101t2587_panel*, %struct.osd101t2587_panel** %3, align 8
  %53 = getelementptr inbounds %struct.osd101t2587_panel, %struct.osd101t2587_panel* %52, i32 0, i32 0
  %54 = call i32 @drm_panel_add(%struct.TYPE_5__* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %38, %33, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
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
