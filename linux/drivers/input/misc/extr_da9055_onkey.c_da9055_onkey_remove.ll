; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9055_onkey.c_da9055_onkey_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9055_onkey.c_da9055_onkey_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.da9055_onkey = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ONKEY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9055_onkey_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_onkey_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.da9055_onkey*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.da9055_onkey* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.da9055_onkey* %6, %struct.da9055_onkey** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call i32 @platform_get_irq_byname(%struct.platform_device* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = load %struct.da9055_onkey*, %struct.da9055_onkey** %3, align 8
  %10 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @regmap_irq_get_virq(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.da9055_onkey*, %struct.da9055_onkey** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.da9055_onkey* %17)
  %19 = load %struct.da9055_onkey*, %struct.da9055_onkey** %3, align 8
  %20 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %19, i32 0, i32 1
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.da9055_onkey*, %struct.da9055_onkey** %3, align 8
  %23 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @input_unregister_device(i32 %24)
  ret i32 0
}

declare dso_local %struct.da9055_onkey* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.da9055_onkey*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
