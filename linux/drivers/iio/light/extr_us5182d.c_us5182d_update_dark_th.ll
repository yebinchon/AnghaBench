; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_update_dark_th.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_update_dark_th.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us5182d_data = type { i32, i32* }

@US5182D_REG_UDARK_TH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us5182d_data*, i32)* @us5182d_update_dark_th to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_update_dark_th(%struct.us5182d_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us5182d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.us5182d_data* %0, %struct.us5182d_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %9 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu_to_be16(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %17 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* @US5182D_REG_UDARK_TH, align 8
  %20 = getelementptr inbounds i32, i32* %6, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @i2c_smbus_write_byte_data(i32 %18, i64 %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %29 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* @US5182D_REG_UDARK_TH, align 8
  %32 = add nsw i64 %31, 1
  %33 = getelementptr inbounds i32, i32* %6, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @i2c_smbus_write_byte_data(i32 %30, i64 %32, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %27, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
