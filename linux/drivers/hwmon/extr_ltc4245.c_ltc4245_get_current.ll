; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_get_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ltc4245_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ltc4245_get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4245_get_current(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ltc4245_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.ltc4245_data* @ltc4245_update_device(%struct.device* %9)
  store %struct.ltc4245_data* %10, %struct.ltc4245_data** %5, align 8
  %11 = load %struct.ltc4245_data*, %struct.ltc4245_data** %5, align 8
  %12 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 16
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %42 [
    i32 131, label %20
    i32 129, label %25
    i32 130, label %31
    i32 128, label %37
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 250
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = udiv i32 %23, 50
  store i32 %24, i32* %8, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 125
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul i32 %28, 10
  %30 = udiv i32 %29, 35
  store i32 %30, i32* %8, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 125
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %34, 10
  %36 = udiv i32 %35, 25
  store i32 %36, i32* %8, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 250
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = udiv i32 %40, 100
  store i32 %41, i32* %8, align 4
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %37, %31, %25, %20
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.ltc4245_data* @ltc4245_update_device(%struct.device*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
