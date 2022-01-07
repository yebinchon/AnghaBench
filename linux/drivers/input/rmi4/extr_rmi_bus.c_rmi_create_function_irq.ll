; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_create_function_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_bus.c_rmi_create_function_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, i32, i32*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rmi_function_handler = type { i32 }
%struct.rmi_driver_data = type { i32 }

@rmi_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error %d registering IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*, %struct.rmi_function_handler*)* @rmi_create_function_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_create_function_irq(%struct.rmi_function* %0, %struct.rmi_function_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmi_function*, align 8
  %5 = alloca %struct.rmi_function_handler*, align 8
  %6 = alloca %struct.rmi_driver_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %4, align 8
  store %struct.rmi_function_handler* %1, %struct.rmi_function_handler** %5, align 8
  %9 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %10 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %12)
  store %struct.rmi_driver_data* %13, %struct.rmi_driver_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %100, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %17 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %103

20:                                               ; preds = %14
  %21 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %22 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %28 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @set_bit(i64 %26, i32 %29)
  %31 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %32 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %35 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @irq_create_mapping(i32 %33, i64 %39)
  %41 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %42 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %48 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %55 = call i32 @irq_set_chip_data(i32 %53, %struct.rmi_function* %54)
  %56 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %57 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @handle_simple_irq, align 4
  %64 = call i32 @irq_set_chip_and_handler(i32 %62, i32* @rmi_irq_chip, i32 %63)
  %65 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %66 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @irq_set_nested_thread(i32 %71, i32 1)
  %73 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %74 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %73, i32 0, i32 1
  %75 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %76 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rmi_function_handler*, %struct.rmi_function_handler** %5, align 8
  %83 = getelementptr inbounds %struct.rmi_function_handler, %struct.rmi_function_handler* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @IRQF_ONESHOT, align 4
  %86 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %87 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %86, i32 0, i32 1
  %88 = call i32 @dev_name(i32* %87)
  %89 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %90 = call i32 @devm_request_threaded_irq(i32* %74, i32 %81, i32* null, i32 %84, i32 %85, i32 %88, %struct.rmi_function* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %20
  %94 = load %struct.rmi_function*, %struct.rmi_function** %4, align 8
  %95 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %94, i32 0, i32 1
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %104

99:                                               ; preds = %20
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %14

103:                                              ; preds = %14
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %93
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @irq_create_mapping(i32, i64) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.rmi_function*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_nested_thread(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.rmi_function*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
