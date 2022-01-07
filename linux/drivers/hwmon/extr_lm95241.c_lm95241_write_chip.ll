; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_write_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95241.c_lm95241_write_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm95241_data = type { i32, i32, i32, i32 }

@CFG_CRMASK = common dso_local global i32 0, align 4
@CFG_CR0076 = common dso_local global i32 0, align 4
@CFG_CR0182 = common dso_local global i32 0, align 4
@CFG_CR1000 = common dso_local global i32 0, align 4
@CFG_CR2700 = common dso_local global i32 0, align 4
@LM95241_REG_RW_CONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @lm95241_write_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95241_write_chip(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.lm95241_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.lm95241_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.lm95241_data* %14, %struct.lm95241_data** %9, align 8
  %15 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %16 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %65 [
    i32 128, label %19
  ]

19:                                               ; preds = %4
  %20 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %21 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CFG_CRMASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %11, align 4
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %26, 130
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  store i32 76, i32* %10, align 4
  %29 = load i32, i32* @CFG_CR0076, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %52

32:                                               ; preds = %19
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %33, 590
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  store i32 182, i32* %10, align 4
  %36 = load i32, i32* @CFG_CR0182, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %51

39:                                               ; preds = %32
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %40, 1850
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  store i32 1000, i32* %10, align 4
  %43 = load i32, i32* @CFG_CR1000, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %50

46:                                               ; preds = %39
  store i32 2700, i32* %10, align 4
  %47 = load i32, i32* @CFG_CR2700, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %55 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %58 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %60 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @LM95241_REG_RW_CONFIG, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %68

65:                                               ; preds = %4
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %52
  %69 = load %struct.lm95241_data*, %struct.lm95241_data** %9, align 8
  %70 = getelementptr inbounds %struct.lm95241_data, %struct.lm95241_data* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local %struct.lm95241_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
