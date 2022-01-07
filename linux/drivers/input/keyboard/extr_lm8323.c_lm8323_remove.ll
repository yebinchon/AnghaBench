; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm8323_chip = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@dev_attr_disable_kp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @lm8323_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm8323_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.lm8323_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.lm8323_chip* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.lm8323_chip* %6, %struct.lm8323_chip** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @disable_irq_wake(i32 %9)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.lm8323_chip* %14)
  %16 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %17 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @input_unregister_device(i32 %18)
  %20 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %21 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @device_remove_file(i32* %23, i32* @dev_attr_disable_kp)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %48, %1
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %30 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %40 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @led_classdev_unregister(i32* %45)
  br label %47

47:                                               ; preds = %38, %28
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %25

51:                                               ; preds = %25
  %52 = load %struct.lm8323_chip*, %struct.lm8323_chip** %3, align 8
  %53 = call i32 @kfree(%struct.lm8323_chip* %52)
  ret i32 0
}

declare dso_local %struct.lm8323_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, %struct.lm8323_chip*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.lm8323_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
