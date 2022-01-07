; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8975_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@CNTL_MODE = common dso_local global i64 0, align 8
@CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8975_data*, i32)* @ak8975_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8975_set_mode(%struct.ak8975_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ak8975_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ak8975_data* %0, %struct.ak8975_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %9 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %12 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @CNTL_MODE, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %10, %19
  %21 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %22 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %20, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %32 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %35 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @CNTL, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @i2c_smbus_write_byte_data(i32 %33, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.ak8975_data*, %struct.ak8975_data** %4, align 8
  %51 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = call i32 @usleep_range(i32 100, i32 500)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %46
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
