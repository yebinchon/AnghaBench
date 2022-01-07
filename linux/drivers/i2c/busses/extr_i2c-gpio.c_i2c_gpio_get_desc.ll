; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-gpio.c_i2c_gpio_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-gpio.c_i2c_gpio_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"got GPIO from name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"got GPIO from index %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"error trying to get descriptor: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device*, i8*, i32, i32)* @i2c_gpio_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @i2c_gpio_get_desc(%struct.device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gpio_desc*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %12, i8* %13, i32 %14)
  store %struct.gpio_desc* %15, %struct.gpio_desc** %10, align 8
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %17 = call i32 @IS_ERR(%struct.gpio_desc* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %23, %struct.gpio_desc** %5, align 8
  br label %68

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %25, i32* null, i32 %26, i32 %27)
  store %struct.gpio_desc* %28, %struct.gpio_desc** %10, align 8
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %30 = call i32 @IS_ERR(%struct.gpio_desc* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %36, %struct.gpio_desc** %5, align 8
  br label %68

37:                                               ; preds = %24
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.gpio_desc* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @EPROBE_DEFER, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.gpio_desc* @ERR_PTR(i32 %46)
  store %struct.gpio_desc* %47, %struct.gpio_desc** %10, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @EPROBE_DEFER, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.gpio_desc* @ERR_PTR(i32 %55)
  store %struct.gpio_desc* %56, %struct.gpio_desc** %10, align 8
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @EPROBE_DEFER, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  store %struct.gpio_desc* %67, %struct.gpio_desc** %5, align 8
  br label %68

68:                                               ; preds = %66, %32, %19
  %69 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  ret %struct.gpio_desc* %69
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @ERR_PTR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
