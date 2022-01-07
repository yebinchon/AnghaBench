; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4725_write_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4725_write_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mcp4725_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @mcp4725_write_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4725_write_powerdown(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mcp4725_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mcp4725_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mcp4725_data* %16, %struct.mcp4725_data** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @strtobool(i8* %17, i32* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %46

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.mcp4725_data*, %struct.mcp4725_data** %12, align 8
  %28 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mcp4725_suspend(i32* %30)
  store i32 %31, i32* %14, align 4
  br label %38

32:                                               ; preds = %23
  %33 = load %struct.mcp4725_data*, %struct.mcp4725_data** %12, align 8
  %34 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mcp4725_resume(i32* %36)
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %11, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %41, %21
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.mcp4725_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @strtobool(i8*, i32*) #1

declare dso_local i32 @mcp4725_suspend(i32*) #1

declare dso_local i32 @mcp4725_resume(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
