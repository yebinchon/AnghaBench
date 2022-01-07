; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_irq_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2-gpio.c_ps2_gpio_irq_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2_gpio_data = type { i8, i8, i32, i32, i32, i32, i32 }

@ps2_gpio_irq_tx.old_jiffies = internal global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"TX: timeout, probably we missed an interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"TX: start bit should have been sent already\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"TX: received NACK, retry\0A\00", align 1
@PS2_MODE_RX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"TX: got out of sync with the device\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps2_gpio_data*)* @ps2_gpio_irq_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_gpio_irq_tx(%struct.ps2_gpio_data* %0) #0 {
  %2 = alloca %struct.ps2_gpio_data*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.ps2_gpio_data* %0, %struct.ps2_gpio_data** %2, align 8
  %6 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %7 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  store i8 %8, i8* %4, align 1
  %9 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %10 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %3, align 1
  %12 = load i64, i64* @ps2_gpio_irq_tx.old_jiffies, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* @ps2_gpio_irq_tx.old_jiffies, align 8
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @ps2_gpio_irq_tx.old_jiffies, align 8
  %19 = sub i64 %17, %18
  %20 = call i64 @usecs_to_jiffies(i32 100)
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %24 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %104

27:                                               ; preds = %16
  %28 = load i64, i64* @jiffies, align 8
  store i64 %28, i64* @ps2_gpio_irq_tx.old_jiffies, align 8
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  switch i32 %30, label %92 [
    i32 130, label %31
    i32 139, label %36
    i32 138, label %36
    i32 137, label %36
    i32 136, label %36
    i32 135, label %36
    i32 134, label %36
    i32 133, label %36
    i32 132, label %36
    i32 131, label %51
    i32 129, label %63
    i32 128, label %68
    i32 140, label %69
  ]

31:                                               ; preds = %27
  %32 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %33 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %104

36:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, 1
  %42 = trunc i32 %41 to i8
  %43 = call zeroext i8 @BIT(i8 zeroext %42)
  %44 = zext i8 %43 to i32
  %45 = and i32 %38, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %47 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @gpiod_set_value(i32 %48, i32 %49)
  br label %101

51:                                               ; preds = %27
  %52 = load i8, i8* %3, align 1
  %53 = call i32 @hweight8(i8 zeroext %52)
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %59 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @gpiod_set_value(i32 %60, i32 %61)
  br label %101

63:                                               ; preds = %27
  %64 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %65 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gpiod_direction_input(i32 %66)
  br label %101

68:                                               ; preds = %27
  br label %101

69:                                               ; preds = %27
  %70 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %71 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gpiod_direction_input(i32 %72)
  %74 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %75 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gpiod_get_value(i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %82 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %104

85:                                               ; preds = %69
  %86 = load i32, i32* @PS2_MODE_RX, align 4
  %87 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %88 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %90 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %89, i32 0, i32 5
  %91 = call i32 @complete(i32* %90)
  store i8 1, i8* %4, align 1
  store i64 0, i64* @ps2_gpio_irq_tx.old_jiffies, align 8
  br label %116

92:                                               ; preds = %27
  %93 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %94 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @gpiod_direction_input(i32 %95)
  %97 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %98 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %104

101:                                              ; preds = %68, %63, %51, %36
  %102 = load i8, i8* %4, align 1
  %103 = add i8 %102, 1
  store i8 %103, i8* %4, align 1
  br label %116

104:                                              ; preds = %92, %80, %31, %22
  store i8 1, i8* %4, align 1
  store i64 0, i64* @ps2_gpio_irq_tx.old_jiffies, align 8
  %105 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %106 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @gpiod_direction_input(i32 %107)
  %109 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %110 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %113 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %112, i32 0, i32 1
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @__ps2_gpio_write(i32 %111, i8 zeroext %114)
  br label %116

116:                                              ; preds = %104, %101, %85
  %117 = load i8, i8* %4, align 1
  %118 = load %struct.ps2_gpio_data*, %struct.ps2_gpio_data** %2, align 8
  %119 = getelementptr inbounds %struct.ps2_gpio_data, %struct.ps2_gpio_data* %118, i32 0, i32 0
  store i8 %117, i8* %119, align 4
  %120 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %120
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local zeroext i8 @BIT(i8 zeroext) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @hweight8(i8 zeroext) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @__ps2_gpio_write(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
