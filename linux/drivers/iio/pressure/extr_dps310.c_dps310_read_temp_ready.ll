; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_temp_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_read_temp_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i32, i32 }

@DPS310_TMP_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*)* @dps310_read_temp_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_read_temp_ready(%struct.dps310_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dps310_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %3, align 8
  %7 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %8 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DPS310_TMP_BASE, align 4
  %11 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %12 = call i32 @regmap_bulk_read(i32 %9, i32 %10, i32* %11, i32 12)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %20, %23
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sign_extend32(i32 %28, i32 23)
  %30 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %31 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
