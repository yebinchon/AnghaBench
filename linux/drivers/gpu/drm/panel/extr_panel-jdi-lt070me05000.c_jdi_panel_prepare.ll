; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-jdi-lt070me05000.c_jdi_panel_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.jdi_panel = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"regulator enable failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to init panel: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to set panel on: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"regulator disable failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @jdi_panel_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdi_panel_prepare(%struct.drm_panel* %0) #0 {
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
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %20 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %24 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @regulator_bulk_enable(i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %100

34:                                               ; preds = %18
  %35 = call i32 @msleep(i32 20)
  %36 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %37 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpiod_set_value(i32 %38, i32 1)
  %40 = call i32 @usleep_range(i32 10, i32 20)
  %41 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %42 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gpiod_set_value(i32 %43, i32 0)
  %45 = call i32 @usleep_range(i32 10, i32 20)
  %46 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %47 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gpiod_set_value(i32 %48, i32 1)
  %50 = call i32 @usleep_range(i32 10, i32 20)
  %51 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %52 = call i32 @jdi_panel_init(%struct.jdi_panel* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %71

59:                                               ; preds = %34
  %60 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %61 = call i32 @jdi_panel_on(%struct.jdi_panel* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %71

68:                                               ; preds = %59
  %69 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %70 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  store i32 0, i32* %2, align 4
  br label %100

71:                                               ; preds = %64, %55
  %72 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %73 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %77 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @regulator_bulk_disable(i32 %75, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %71
  %87 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %88 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gpiod_set_value(i32 %89, i32 0)
  %91 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %92 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @gpiod_set_value(i32 %93, i32 1)
  %95 = load %struct.jdi_panel*, %struct.jdi_panel** %4, align 8
  %96 = getelementptr inbounds %struct.jdi_panel, %struct.jdi_panel* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @gpiod_set_value(i32 %97, i32 0)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %86, %68, %29, %17
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.jdi_panel* @to_jdi_panel(%struct.drm_panel*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @jdi_panel_init(%struct.jdi_panel*) #1

declare dso_local i32 @jdi_panel_on(%struct.jdi_panel*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
