; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_get_als.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_get_als.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us5182d_data = type { i32, i32 }

@US5182D_REG_ADL = common dso_local global i32 0, align 4
@US5182D_GA_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us5182d_data*)* @us5182d_get_als to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_get_als(%struct.us5182d_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us5182d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.us5182d_data* %0, %struct.us5182d_data** %3, align 8
  %6 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %7 = call i32 @us5182d_als_enable(%struct.us5182d_data* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %14 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @US5182D_REG_ADL, align 4
  %17 = call i32 @i2c_smbus_read_word_data(i32 %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.us5182d_data*, %struct.us5182d_data** %3, align 8
  %25 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* @US5182D_GA_RESOLUTION, align 4
  %29 = sdiv i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %31, 65535
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i64 65535, i64* %5, align 8
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %20, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @us5182d_als_enable(%struct.us5182d_data*) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
