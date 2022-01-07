; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpio_sysfs_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-sysfs.c_gpio_sysfs_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.gpiod_data = type { i64, i8, i32, %struct.gpio_desc* }
%struct.gpio_desc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@GPIO_IRQF_TRIGGER_FALLING = common dso_local global i8 0, align 1
@FLAG_ACTIVE_LOW = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@GPIO_IRQF_TRIGGER_RISING = common dso_local global i8 0, align 1
@gpio_sysfs_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"gpiolib\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8)* @gpio_sysfs_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_sysfs_request_irq(%struct.device* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.gpiod_data*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.gpiod_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.gpiod_data* %11, %struct.gpiod_data** %6, align 8
  %12 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %13 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %12, i32 0, i32 3
  %14 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  store %struct.gpio_desc* %14, %struct.gpio_desc** %7, align 8
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %16 = call i64 @gpiod_to_irq(%struct.gpio_desc* %15)
  %17 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %18 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %20 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %126

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sysfs_get_dirent(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %33 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %35 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %126

41:                                               ; preds = %26
  %42 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %42, i64* %8, align 8
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @GPIO_IRQF_TRIGGER_FALLING, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %41
  %50 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %51 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %52 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %51, i32 0, i32 1
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  br label %59

57:                                               ; preds = %49
  %58 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  %61 = load i64, i64* %8, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %59, %41
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @GPIO_IRQF_TRIGGER_RISING, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load i32, i32* @FLAG_ACTIVE_LOW, align 4
  %72 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %73 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %72, i32 0, i32 1
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  br label %80

78:                                               ; preds = %70
  %79 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  %82 = load i64, i64* %8, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %80, %63
  %85 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %86 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %91 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %90)
  %92 = call i32 @gpiochip_lock_as_irq(i32 %89, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %120

96:                                               ; preds = %84
  %97 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %98 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @gpio_sysfs_irq, align 4
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %103 = call i32 @request_any_context_irq(i64 %99, i32 %100, i64 %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.gpiod_data* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %111

107:                                              ; preds = %96
  %108 = load i8, i8* %5, align 1
  %109 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %110 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %109, i32 0, i32 1
  store i8 %108, i8* %110, align 8
  store i32 0, i32* %3, align 4
  br label %126

111:                                              ; preds = %106
  %112 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %113 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %118 = call i32 @gpio_chip_hwgpio(%struct.gpio_desc* %117)
  %119 = call i32 @gpiochip_unlock_as_irq(i32 %116, i32 %118)
  br label %120

120:                                              ; preds = %111, %95
  %121 = load %struct.gpiod_data*, %struct.gpiod_data** %6, align 8
  %122 = getelementptr inbounds %struct.gpiod_data, %struct.gpiod_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @sysfs_put(i32 %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %120, %107, %38, %23
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.gpiod_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @sysfs_get_dirent(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @gpiochip_lock_as_irq(i32, i32) #1

declare dso_local i32 @gpio_chip_hwgpio(%struct.gpio_desc*) #1

declare dso_local i32 @request_any_context_irq(i64, i32, i64, i8*, %struct.gpiod_data*) #1

declare dso_local i32 @gpiochip_unlock_as_irq(i32, i32) #1

declare dso_local i32 @sysfs_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
