; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_set_odr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_set_odr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.bmc150_magn_data = type { i32 }

@bmc150_magn_samp_freq_table = common dso_local global %struct.TYPE_3__* null, align 8
@BMC150_MAGN_REG_OPMODE_ODR = common dso_local global i32 0, align 4
@BMC150_MAGN_MASK_ODR = common dso_local global i32 0, align 4
@BMC150_MAGN_SHIFT_ODR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_magn_data*, i32)* @bmc150_magn_set_odr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_set_odr(%struct.bmc150_magn_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmc150_magn_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bmc150_magn_data* %0, %struct.bmc150_magn_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_magn_samp_freq_table, align 8
  %11 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %10)
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_magn_samp_freq_table, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %4, align 8
  %23 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BMC150_MAGN_REG_OPMODE_ODR, align 4
  %26 = load i32, i32* @BMC150_MAGN_MASK_ODR, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bmc150_magn_samp_freq_table, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BMC150_MAGN_SHIFT_ODR, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %8

44:                                               ; preds = %8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %39, %37
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
