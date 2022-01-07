; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1750.c_bh1750_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1750_data = type { i64, i32, %struct.bh1750_chip_info* }
%struct.bh1750_chip_info = type { i64 }

@BH1750_ONE_TIME_H_RES_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1750_data*, i32*)* @bh1750_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1750_read(%struct.bh1750_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bh1750_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bh1750_chip_info*, align 8
  %9 = alloca i64, align 8
  store %struct.bh1750_data* %0, %struct.bh1750_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %11 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %10, i32 0, i32 2
  %12 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %11, align 8
  store %struct.bh1750_chip_info* %12, %struct.bh1750_chip_info** %8, align 8
  %13 = load %struct.bh1750_chip_info*, %struct.bh1750_chip_info** %8, align 8
  %14 = getelementptr inbounds %struct.bh1750_chip_info, %struct.bh1750_chip_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %17 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %15, %18
  store i64 %19, i64* %9, align 8
  %20 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %21 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BH1750_ONE_TIME_H_RES_MODE, align 4
  %24 = call i32 @i2c_smbus_write_byte(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 15000
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 40000
  %34 = call i32 @usleep_range(i64 %31, i64 %33)
  %35 = load %struct.bh1750_data*, %struct.bh1750_data** %4, align 8
  %36 = getelementptr inbounds %struct.bh1750_data, %struct.bh1750_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = bitcast i32* %7 to i8*
  %39 = call i32 @i2c_master_recv(i32 %37, i8* %38, i32 2)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @be16_to_cpu(i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %42, %27
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

declare dso_local i32 @usleep_range(i64, i64) #1

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
