; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_read_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_read_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ltc4245_data = type { i32*, i32* }

@ltc4245_in_regs = common dso_local global i32* null, align 8
@LTC4245_FAULT1 = common dso_local global i64 0, align 8
@LTC4245_FAULT2 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @ltc4245_read_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4245_read_in(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ltc4245_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.ltc4245_data* @ltc4245_update_device(%struct.device* %12)
  store %struct.ltc4245_data* %13, %struct.ltc4245_data** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %83 [
    i32 129, label %15
    i32 128, label %46
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32*, i32** @ltc4245_in_regs, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ltc4245_get_voltage(%struct.device* %19, i32 %24)
  %26 = load i64*, i64** %9, align 8
  store i64 %25, i64* %26, align 8
  br label %45

27:                                               ; preds = %15
  %28 = load %struct.ltc4245_data*, %struct.ltc4245_data** %10, align 8
  %29 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %86

40:                                               ; preds = %27
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 10
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %18
  store i32 0, i32* %5, align 4
  br label %86

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %65

49:                                               ; preds = %46
  %50 = load %struct.ltc4245_data*, %struct.ltc4245_data** %10, align 8
  %51 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @LTC4245_FAULT1, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  br label %82

65:                                               ; preds = %46
  %66 = load %struct.ltc4245_data*, %struct.ltc4245_data** %10, align 8
  %67 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @LTC4245_FAULT2, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 4
  %74 = call i32 @BIT(i32 %73)
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %9, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %65, %49
  store i32 0, i32* %5, align 4
  br label %86

83:                                               ; preds = %4
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %82, %45, %38
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.ltc4245_data* @ltc4245_update_device(%struct.device*) #1

declare dso_local i64 @ltc4245_get_voltage(%struct.device*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
