; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_read_curr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_read_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ltc4245_data = type { i32* }

@ltc4245_curr_regs = common dso_local global i32* null, align 8
@LTC4245_FAULT1 = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64*)* @ltc4245_read_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4245_read_curr(%struct.device* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ltc4245_data*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.ltc4245_data* @ltc4245_update_device(%struct.device* %11)
  store %struct.ltc4245_data* %12, %struct.ltc4245_data** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %23
  ]

14:                                               ; preds = %4
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = load i32*, i32** @ltc4245_curr_regs, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ltc4245_get_current(%struct.device* %15, i32 %20)
  %22 = load i64*, i64** %9, align 8
  store i64 %21, i64* %22, align 8
  store i32 0, i32* %5, align 4
  br label %43

23:                                               ; preds = %4
  %24 = load %struct.ltc4245_data*, %struct.ltc4245_data** %10, align 8
  %25 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @LTC4245_FAULT1, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 4
  %32 = call i32 @BIT(i32 %31)
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %43

40:                                               ; preds = %4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %23, %14
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.ltc4245_data* @ltc4245_update_device(%struct.device*) #1

declare dso_local i64 @ltc4245_get_current(%struct.device*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
