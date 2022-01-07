; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-simple.c_panel_simple_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.panel_simple = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @panel_simple_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_simple_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.panel_simple*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %5 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %6 = call %struct.panel_simple* @to_panel_simple(%struct.drm_panel* %5)
  store %struct.panel_simple* %6, %struct.panel_simple** %4, align 8
  %7 = load %struct.panel_simple*, %struct.panel_simple** %4, align 8
  %8 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.panel_simple*, %struct.panel_simple** %4, align 8
  %14 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value_cansleep(i32 %15, i32 0)
  %17 = load %struct.panel_simple*, %struct.panel_simple** %4, align 8
  %18 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regulator_disable(i32 %19)
  %21 = load %struct.panel_simple*, %struct.panel_simple** %4, align 8
  %22 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %12
  %29 = load %struct.panel_simple*, %struct.panel_simple** %4, align 8
  %30 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @msleep(i64 %34)
  br label %36

36:                                               ; preds = %28, %12
  %37 = load %struct.panel_simple*, %struct.panel_simple** %4, align 8
  %38 = getelementptr inbounds %struct.panel_simple, %struct.panel_simple* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.panel_simple* @to_panel_simple(%struct.drm_panel*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
