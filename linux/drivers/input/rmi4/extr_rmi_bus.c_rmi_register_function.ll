; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_register_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_register_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.rmi_device* }
%struct.TYPE_10__ = type { i32*, i32*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.rmi_device = type { %struct.TYPE_10__ }

@.str = private unnamed_addr constant [10 x i8] c"%s.fn%02x\00", align 1
@rmi_function_type = common dso_local global i32 0, align 4
@rmi_bus_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed device_register function device %s\0A\00", align 1
@RMI_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Registered F%02X.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmi_register_function(%struct.rmi_function* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmi_function*, align 8
  %4 = alloca %struct.rmi_device*, align 8
  %5 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %3, align 8
  %6 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %7 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %6, i32 0, i32 2
  %8 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  store %struct.rmi_device* %8, %struct.rmi_device** %4, align 8
  %9 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %10 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %9, i32 0, i32 0
  %11 = call i32 @device_initialize(%struct.TYPE_10__* %10)
  %12 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %13 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %12, i32 0, i32 0
  %14 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %15 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %14, i32 0, i32 0
  %16 = call i32 @dev_name(%struct.TYPE_10__* %15)
  %17 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %18 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_set_name(%struct.TYPE_10__* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  %22 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %23 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %22, i32 0, i32 0
  %24 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %25 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %26, align 8
  %27 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %28 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i32* @rmi_function_type, i32** %29, align 8
  %30 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %31 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  store i32* @rmi_bus_type, i32** %32, align 8
  %33 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %34 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %33, i32 0, i32 0
  %35 = call i32 @device_add(%struct.TYPE_10__* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %40 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %39, i32 0, i32 0
  %41 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %42 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %41, i32 0, i32 0
  %43 = call i32 @dev_name(%struct.TYPE_10__* %42)
  %44 = call i32 @dev_err(%struct.TYPE_10__* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %54

45:                                               ; preds = %1
  %46 = load i32, i32* @RMI_DEBUG_CORE, align 4
  %47 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %48 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %47, i32 0, i32 0
  %49 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %50 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rmi_dbg(i32 %46, %struct.TYPE_10__* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 0, i32* %2, align 4
  br label %59

54:                                               ; preds = %38
  %55 = load %struct.rmi_function*, %struct.rmi_function** %3, align 8
  %56 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %55, i32 0, i32 0
  %57 = call i32 @put_device(%struct.TYPE_10__* %56)
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @device_initialize(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @rmi_dbg(i32, %struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
