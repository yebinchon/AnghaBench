; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_wait_for_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_wait_for_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru3_data = type { i64 }

@ABIT_UGURU3_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@ABIT_UGURU3_DATA = common dso_local global i64 0, align 8
@ABIT_UGURU3_STATUS_READY_FOR_READ = common dso_local global i32 0, align 4
@ABIT_UGURU3_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru3_data*)* @abituguru3_wait_for_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru3_wait_for_read(%struct.abituguru3_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abituguru3_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.abituguru3_data* %0, %struct.abituguru3_data** %3, align 8
  %6 = load i32, i32* @ABIT_UGURU3_WAIT_TIMEOUT, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %9 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ABIT_UGURU3_DATA, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @inb_p(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @ABIT_UGURU3_STATUS_READY_FOR_READ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %31

18:                                               ; preds = %7
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @msleep(i32 1)
  br label %30

30:                                               ; preds = %28, %25
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
