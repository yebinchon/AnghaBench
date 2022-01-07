; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f12.c_rmi_f12_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f12.c_rmi_f12_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.rmi_driver* }
%struct.rmi_driver = type { i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)* }
%struct.f12_data = type { i32, i32, %struct.rmi_2d_sensor }
%struct.rmi_2d_sensor = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Failed to write F12 control registers: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f12_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f12_config(%struct.rmi_function* %0) #0 {
  %2 = alloca %struct.rmi_function*, align 8
  %3 = alloca %struct.rmi_driver*, align 8
  %4 = alloca %struct.f12_data*, align 8
  %5 = alloca %struct.rmi_2d_sensor*, align 8
  %6 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %2, align 8
  %7 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %8 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.rmi_driver*, %struct.rmi_driver** %10, align 8
  store %struct.rmi_driver* %11, %struct.rmi_driver** %3, align 8
  %12 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %13 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %12, i32 0, i32 0
  %14 = call %struct.f12_data* @dev_get_drvdata(i32* %13)
  store %struct.f12_data* %14, %struct.f12_data** %4, align 8
  %15 = load %struct.f12_data*, %struct.f12_data** %4, align 8
  %16 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %15, i32 0, i32 2
  store %struct.rmi_2d_sensor* %16, %struct.rmi_2d_sensor** %5, align 8
  %17 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %5, align 8
  %18 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = load %struct.rmi_driver*, %struct.rmi_driver** %3, align 8
  %23 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %23, align 8
  %25 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %26 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.f12_data*, %struct.f12_data** %4, align 8
  %29 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %24(%struct.TYPE_4__* %27, i32 %30)
  br label %43

32:                                               ; preds = %1
  %33 = load %struct.rmi_driver*, %struct.rmi_driver** %3, align 8
  %34 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %33, i32 0, i32 1
  %35 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %34, align 8
  %36 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %37 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.f12_data*, %struct.f12_data** %4, align 8
  %40 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %35(%struct.TYPE_4__* %38, i32 %41)
  br label %43

43:                                               ; preds = %32, %21
  %44 = load %struct.rmi_driver*, %struct.rmi_driver** %3, align 8
  %45 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %45, align 8
  %47 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %48 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.f12_data*, %struct.f12_data** %4, align 8
  %51 = getelementptr inbounds %struct.f12_data, %struct.f12_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 %46(%struct.TYPE_4__* %49, i32 %52)
  %54 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %55 = call i32 @rmi_f12_write_control_regs(%struct.rmi_function* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %60 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %59, i32 0, i32 0
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @dev_warn(i32* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %43
  ret i32 0
}

declare dso_local %struct.f12_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_f12_write_control_regs(%struct.rmi_function*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
