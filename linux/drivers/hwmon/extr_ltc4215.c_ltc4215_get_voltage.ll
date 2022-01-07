; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4215.c_ltc4215_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4215.c_ltc4215_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ltc4215_data = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @ltc4215_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4215_get_voltage(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ltc4215_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ltc4215_data* @ltc4215_update_device(%struct.device* %8)
  store %struct.ltc4215_data* %9, %struct.ltc4215_data** %5, align 8
  %10 = load %struct.ltc4215_data*, %struct.ltc4215_data** %5, align 8
  %11 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i64, i64* %4, align 8
  switch i64 %16, label %33 [
    i64 129, label %17
    i64 128, label %22
    i64 130, label %27
  ]

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %18, 151
  %20 = udiv i64 %19, 1000
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = mul i64 %23, 605
  %25 = udiv i64 %24, 10
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = mul i64 %28, 482
  %30 = mul i64 %29, 125
  %31 = udiv i64 %30, 1000
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %35

33:                                               ; preds = %2
  %34 = call i32 @WARN_ON_ONCE(i32 1)
  br label %35

35:                                               ; preds = %33, %27, %22, %17
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local %struct.ltc4215_data* @ltc4215_update_device(%struct.device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
