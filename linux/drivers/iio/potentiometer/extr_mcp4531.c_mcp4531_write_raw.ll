; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4531.c_mcp4531_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_mcp4531.c_mcp4531_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp4531_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MCP4531_WIPER_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MCP4531_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mcp4531_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4531_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcp4531_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.mcp4531_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mcp4531_data* %15, %struct.mcp4531_data** %12, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MCP4531_WIPER_SHIFT, align 4
  %20 = shl i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %11, align 8
  switch i64 %21, label %39 [
    i64 128, label %22
  ]

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.mcp4531_data*, %struct.mcp4531_data** %12, align 8
  %25 = getelementptr inbounds %struct.mcp4531_data, %struct.mcp4531_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %23, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %22
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %55

38:                                               ; preds = %32
  br label %42

39:                                               ; preds = %5
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %55

42:                                               ; preds = %38
  %43 = load %struct.mcp4531_data*, %struct.mcp4531_data** %12, align 8
  %44 = getelementptr inbounds %struct.mcp4531_data, %struct.mcp4531_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MCP4531_WRITE, align 4
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 8
  %51 = or i32 %48, %50
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 255
  %54 = call i32 @i2c_smbus_write_byte_data(i32 %45, i32 %51, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %42, %39, %35
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.mcp4531_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
