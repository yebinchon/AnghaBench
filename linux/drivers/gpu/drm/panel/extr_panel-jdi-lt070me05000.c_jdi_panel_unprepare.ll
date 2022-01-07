; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.jdi_panel = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"regulator disable failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @jdi_panel_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdi_panel_unprepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.jdi_panel*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %7 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %8 = call %struct.jdi_panel* @to_jdi_panel(%struct.drm_panel* %7)
  store %struct.jdi_panel* %8, %struct.jdi_panel** %4, align 8
  %9 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %10 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %14 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %20 = call i32 @jdi_panel_off(%struct.jdi_panel* %19)
  %21 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %22 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %26 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regulator_bulk_disable(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %18
  %36 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %37 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpiod_set_value(i32 %38, i32 0)
  %40 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %41 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gpiod_set_value(i32 %42, i32 1)
  %44 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %45 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gpiod_set_value(i32 %46, i32 0)
  %48 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %49 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %35, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.jdi_panel* @to_jdi_panel(%struct.drm_panel*) #1

declare dso_local i32 @jdi_panel_off(%struct.jdi_panel*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
