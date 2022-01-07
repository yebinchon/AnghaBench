; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adxl34x = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@adxl34x_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unregistered accelerometer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adxl34x_remove(%struct.adxl34x* %0) #0 {
  %2 = alloca %struct.adxl34x*, align 8
  store %struct.adxl34x* %0, %struct.adxl34x** %2, align 8
  %3 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %4 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @sysfs_remove_group(i32* %6, i32* @adxl34x_attr_group)
  %8 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %9 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.adxl34x* %11)
  %13 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %14 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @input_unregister_device(i32 %15)
  %17 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %18 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @dev_dbg(%struct.TYPE_2__* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.adxl34x*, %struct.adxl34x** %2, align 8
  %22 = call i32 @kfree(%struct.adxl34x* %21)
  ret i32 0
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.adxl34x*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @kfree(%struct.adxl34x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
