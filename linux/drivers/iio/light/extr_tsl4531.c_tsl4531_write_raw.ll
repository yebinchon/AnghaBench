; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl4531.c_tsl4531_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl4531.c_tsl4531_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl4531_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TSL4531_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @tsl4531_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl4531_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsl4531_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.tsl4531_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.tsl4531_data* %16, %struct.tsl4531_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %62 [
    i64 128, label %18
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %65

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 400000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %41

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 200000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 100000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2, i32* %13, align 4
  br label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %65

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.tsl4531_data*, %struct.tsl4531_data** %12, align 8
  %43 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.tsl4531_data*, %struct.tsl4531_data** %12, align 8
  %46 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TSL4531_CONFIG, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @i2c_smbus_write_byte_data(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.tsl4531_data*, %struct.tsl4531_data** %12, align 8
  %56 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.tsl4531_data*, %struct.tsl4531_data** %12, align 8
  %59 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %6, align 4
  br label %65

62:                                               ; preds = %5
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %57, %36, %21
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.tsl4531_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
