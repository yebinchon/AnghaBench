; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_reinitialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa.c_cyapa_reinitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i64, %struct.TYPE_4__*, %struct.input_dev*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.cyapa*, i32, i32, i32)* }
%struct.input_dev = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@PWR_MODE_FULL_ACTIVE = common dso_local global i32 0, align 4
@CYAPA_PM_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"create input_dev instance failed: %d\0A\00", align 1
@PWR_MODE_OFF = common dso_local global i32 0, align 4
@CYAPA_PM_DEACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_reinitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_reinitialize(%struct.cyapa* %0) #0 {
  %2 = alloca %struct.cyapa*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %2, align 8
  %6 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %7 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %11 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %10, i32 0, i32 2
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i64 @pm_runtime_enabled(%struct.device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @pm_runtime_disable(%struct.device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %21 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %26 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.cyapa*, i32, i32, i32)*, i32 (%struct.cyapa*, i32, i32, i32)** %28, align 8
  %30 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %31 = load i32, i32* @PWR_MODE_FULL_ACTIVE, align 4
  %32 = load i32, i32* @CYAPA_PM_ACTIVE, align 4
  %33 = call i32 %29(%struct.cyapa* %30, i32 %31, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %24, %19
  %35 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %36 = call i32 @cyapa_detect(%struct.cyapa* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %59

40:                                               ; preds = %34
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = icmp ne %struct.input_dev* %41, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %45 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %50 = call i32 @cyapa_create_input_dev(%struct.cyapa* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %59

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43, %40
  br label %59

59:                                               ; preds = %58, %53, %39
  %60 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %61 = icmp ne %struct.input_dev* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %69 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %74 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32 (%struct.cyapa*, i32, i32, i32)*, i32 (%struct.cyapa*, i32, i32, i32)** %76, align 8
  %78 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %79 = load i32, i32* @PWR_MODE_OFF, align 4
  %80 = load i32, i32* @CYAPA_PM_DEACTIVE, align 4
  %81 = call i32 %77(%struct.cyapa* %78, i32 %79, i32 0, i32 %80)
  br label %82

82:                                               ; preds = %72, %67
  br label %103

83:                                               ; preds = %62
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %83
  %87 = load %struct.cyapa*, %struct.cyapa** %2, align 8
  %88 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = call i32 @pm_runtime_set_active(%struct.device* %92)
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = call i32 @pm_runtime_enable(%struct.device* %94)
  %96 = load %struct.device*, %struct.device** %3, align 8
  %97 = call i32 @pm_runtime_get_sync(%struct.device* %96)
  %98 = load %struct.device*, %struct.device** %3, align 8
  %99 = call i32 @pm_runtime_mark_last_busy(%struct.device* %98)
  %100 = load %struct.device*, %struct.device** %3, align 8
  %101 = call i32 @pm_runtime_put_sync_autosuspend(%struct.device* %100)
  br label %102

102:                                              ; preds = %91, %86, %83
  br label %103

103:                                              ; preds = %102, %82
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @cyapa_detect(%struct.cyapa*) #1

declare dso_local i32 @cyapa_create_input_dev(%struct.cyapa*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
