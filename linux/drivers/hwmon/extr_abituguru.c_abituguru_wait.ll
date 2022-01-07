; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i64 }

@ABIT_UGURU_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@ABIT_UGURU_DATA = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ABIT_UGURU_WAIT_TIMEOUT_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru_data*, i64)* @abituguru_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru_wait(%struct.abituguru_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.abituguru_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.abituguru_data* %0, %struct.abituguru_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @ABIT_UGURU_WAIT_TIMEOUT, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.abituguru_data*, %struct.abituguru_data** %4, align 8
  %10 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ABIT_UGURU_DATA, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @inb_p(i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ABIT_UGURU_WAIT_TIMEOUT_SLEEP, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @msleep(i32 0)
  br label %31

31:                                               ; preds = %29, %25
  br label %8

32:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @inb_p(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
