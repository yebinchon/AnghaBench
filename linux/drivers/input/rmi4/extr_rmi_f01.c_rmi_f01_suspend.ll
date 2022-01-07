; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.f01_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@RMI_F01_CTRL0_NOSLEEP_BIT = common dso_local global i32 0, align 4
@RMI_F01_CTRL0_SLEEP_MODE_MASK = common dso_local global i32 0, align 4
@RMI_SLEEP_MODE_RESERVED1 = common dso_local global i32 0, align 4
@RMI_SLEEP_MODE_SENSOR_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to write sleep mode: %d.\0A\00", align 1
@RMI_SLEEP_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f01_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f01_suspend(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.f01_data*, align 8
  %5 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %6 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %7 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %6, i32 0, i32 0
  %8 = call %struct.f01_data* @dev_get_drvdata(i32* %7)
  store %struct.f01_data* %8, %struct.f01_data** %4, align 8
  %9 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %10 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RMI_F01_CTRL0_NOSLEEP_BIT, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %16 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @RMI_F01_CTRL0_NOSLEEP_BIT, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %20 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @RMI_F01_CTRL0_SLEEP_MODE_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %27 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %32 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @device_may_wakeup(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %1
  %41 = load i32, i32* @RMI_SLEEP_MODE_RESERVED1, align 4
  %42 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %43 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  br label %54

47:                                               ; preds = %1
  %48 = load i32, i32* @RMI_SLEEP_MODE_SENSOR_SLEEP, align 4
  %49 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %50 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %40
  %55 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %56 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %59 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %63 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rmi_write(%struct.TYPE_8__* %57, i32 %61, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %54
  %70 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %71 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %75 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load i32, i32* @RMI_F01_CTRL0_NOSLEEP_BIT, align 4
  %80 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %81 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %69
  %86 = load i32, i32* @RMI_F01_CTRL0_SLEEP_MODE_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %89 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @RMI_SLEEP_MODE_NORMAL, align 4
  %94 = load %struct.f01_data*, %struct.f01_data** %4, align 8
  %95 = getelementptr inbounds %struct.f01_data, %struct.f01_data* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %54
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.f01_data* @dev_get_drvdata(i32*) #1

declare dso_local i64 @device_may_wakeup(i32) #1

declare dso_local i32 @rmi_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
