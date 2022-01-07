; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16400.c_adis16400_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis16400_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ADIS16400_SMPL_PRD_TIME_BASE = common dso_local global i32 0, align 4
@ADIS16400_SPI_SLOW = common dso_local global i32 0, align 4
@ADIS16400_SPI_FAST = common dso_local global i32 0, align 4
@ADIS16400_SMPL_PRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adis16400_state*, i32)* @adis16400_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16400_set_freq(%struct.adis16400_state* %0, i32 %1) #0 {
  %3 = alloca %struct.adis16400_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adis16400_state* %0, %struct.adis16400_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = udiv i32 1638404, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp uge i32 %9, 128
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* @ADIS16400_SMPL_PRD_TIME_BASE, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = udiv i32 52851, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp uge i32 %17, 128
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 127, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %11
  br label %28

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp uge i32 %32, 10
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ADIS16400_SMPL_PRD_TIME_BASE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34, %28
  %40 = load i32, i32* @ADIS16400_SPI_SLOW, align 4
  %41 = load %struct.adis16400_state*, %struct.adis16400_state** %3, align 8
  %42 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  br label %53

46:                                               ; preds = %34
  %47 = load i32, i32* @ADIS16400_SPI_FAST, align 4
  %48 = load %struct.adis16400_state*, %struct.adis16400_state** %3, align 8
  %49 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.adis16400_state*, %struct.adis16400_state** %3, align 8
  %55 = getelementptr inbounds %struct.adis16400_state, %struct.adis16400_state* %54, i32 0, i32 0
  %56 = load i32, i32* @ADIS16400_SMPL_PRD, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @adis_write_reg_8(%struct.TYPE_4__* %55, i32 %56, i32 %57)
  ret i32 %58
}

declare dso_local i32 @adis_write_reg_8(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
