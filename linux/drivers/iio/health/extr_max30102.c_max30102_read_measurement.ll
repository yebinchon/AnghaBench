; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_read_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_read_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max30102_data = type { i32, i32 }

@MAX30102_REG_FIFO_DATA = common dso_local global i32 0, align 4
@MAX30102_REG_FIFO_DATA_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max30102_data*, i32)* @max30102_read_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30102_read_measurement(%struct.max30102_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max30102_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.max30102_data* %0, %struct.max30102_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.max30102_data*, %struct.max30102_data** %4, align 8
  %9 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %8, i32 0, i32 1
  store i32* %9, i32** %7, align 8
  %10 = load %struct.max30102_data*, %struct.max30102_data** %4, align 8
  %11 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MAX30102_REG_FIFO_DATA, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX30102_REG_FIFO_DATA_BYTES, align 4
  %16 = mul i32 %14, %15
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @i2c_smbus_read_i2c_block_data(i32 %12, i32 %13, i32 %16, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %26 [
    i32 3, label %20
    i32 2, label %22
    i32 1, label %24
  ]

20:                                               ; preds = %2
  %21 = call i32 @MAX30102_COPY_DATA(i32 2)
  br label %22

22:                                               ; preds = %2, %20
  %23 = call i32 @MAX30102_COPY_DATA(i32 1)
  br label %24

24:                                               ; preds = %2, %22
  %25 = call i32 @MAX30102_COPY_DATA(i32 0)
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAX30102_REG_FIFO_DATA_BYTES, align 4
  %33 = mul i32 %31, %32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #1

declare dso_local i32 @MAX30102_COPY_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
