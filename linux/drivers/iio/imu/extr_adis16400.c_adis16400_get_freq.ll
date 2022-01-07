; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis16400_state = type { i32 }

@ADIS16400_SMPL_PRD = common dso_local global i32 0, align 4
@ADIS16400_SMPL_PRD_TIME_BASE = common dso_local global i32 0, align 4
@ADIS16400_SMPL_PRD_DIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adis16400_state*)* @adis16400_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16400_get_freq(%struct.adis16400_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adis16400_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adis16400_state* %0, %struct.adis16400_state** %3, align 8
  %7 = load %struct.adis16400_state*, %struct.adis16400_state** %3, align 8
  %8 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %7, i32 0, i32 0
  %9 = load i32, i32* @ADIS16400_SMPL_PRD, align 4
  %10 = call i32 @adis_read_reg_16(i32* %8, i32 %9, i32* %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ADIS16400_SMPL_PRD_TIME_BASE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 52851, i32 1638404
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ADIS16400_SMPL_PRD_DIV_MASK, align 4
  %24 = and i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = sdiv i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %15, %13
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @adis_read_reg_16(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
