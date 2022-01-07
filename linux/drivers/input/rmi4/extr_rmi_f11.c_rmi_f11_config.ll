; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { %struct.TYPE_6__, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.rmi_driver* }
%struct.rmi_driver = type { i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)* }
%struct.f11_data = type { i32, i32, i32, i32, %struct.rmi_2d_sensor }
%struct.rmi_2d_sensor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*)* @rmi_f11_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f11_config(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.f11_data*, align 8
  %5 = alloca %struct.rmi_driver*, align 8
  %6 = alloca %struct.rmi_2d_sensor*, align 8
  %7 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %8 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %9 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %8, i32 0, i32 2
  %10 = call %struct.f11_data* @dev_get_drvdata(i32* %9)
  store %struct.f11_data* %10, %struct.f11_data** %4, align 8
  %11 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %12 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.rmi_driver*, %struct.rmi_driver** %14, align 8
  store %struct.rmi_driver* %15, %struct.rmi_driver** %5, align 8
  %16 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %17 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %16, i32 0, i32 4
  store %struct.rmi_2d_sensor* %17, %struct.rmi_2d_sensor** %6, align 8
  %18 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %6, align 8
  %19 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %1
  %23 = load %struct.rmi_driver*, %struct.rmi_driver** %5, align 8
  %24 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %24, align 8
  %26 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %27 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %30 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(%struct.TYPE_7__* %28, i32 %31)
  br label %44

33:                                               ; preds = %1
  %34 = load %struct.rmi_driver*, %struct.rmi_driver** %5, align 8
  %35 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %35, align 8
  %37 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %38 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %41 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %36(%struct.TYPE_7__* %39, i32 %42)
  br label %44

44:                                               ; preds = %33, %22
  %45 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %6, align 8
  %46 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = load %struct.rmi_driver*, %struct.rmi_driver** %5, align 8
  %51 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %51, align 8
  %53 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %54 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %57 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 %52(%struct.TYPE_7__* %55, i32 %58)
  br label %71

60:                                               ; preds = %44
  %61 = load %struct.rmi_driver*, %struct.rmi_driver** %5, align 8
  %62 = getelementptr inbounds %struct.rmi_driver, %struct.rmi_driver* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %62, align 8
  %64 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %65 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %68 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %63(%struct.TYPE_7__* %66, i32 %69)
  br label %71

71:                                               ; preds = %60, %49
  %72 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %73 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %74 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %73, i32 0, i32 1
  %75 = load %struct.f11_data*, %struct.f11_data** %4, align 8
  %76 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %75, i32 0, i32 0
  %77 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %78 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @f11_write_control_regs(%struct.rmi_function* %72, i32* %74, i32* %76, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %87

86:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %84
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.f11_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @f11_write_control_regs(%struct.rmi_function*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
