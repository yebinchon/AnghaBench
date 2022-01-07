; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_set_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_af9013.c_af9013_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af9013_state = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"gpio %u, gpioval %02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.af9013_state*, i32, i32)* @af9013_set_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_set_gpio(%struct.af9013_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.af9013_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.af9013_state* %0, %struct.af9013_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.af9013_state*, %struct.af9013_state** %5, align 8
  %13 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %23 [
    i32 0, label %21
    i32 1, label %21
    i32 2, label %22
    i32 3, label %22
  ]

21:                                               ; preds = %3, %3
  store i32 55093, i32* %11, align 4
  br label %26

22:                                               ; preds = %3, %3
  store i32 55094, i32* %11, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %46

26:                                               ; preds = %22, %21
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %30 [
    i32 0, label %28
    i32 2, label %28
    i32 1, label %29
    i32 3, label %29
  ]

28:                                               ; preds = %26, %26
  store i32 0, i32* %10, align 4
  br label %31

29:                                               ; preds = %26, %26
  br label %30

30:                                               ; preds = %26, %29
  store i32 4, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load %struct.af9013_state*, %struct.af9013_state** %5, align 8
  %33 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 15, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @regmap_update_bits(i32 %34, i32 %35, i32 %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %52

46:                                               ; preds = %44, %23
  %47 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
