; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_buffer_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_buffer_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32 }

@SX9500_NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @sx9500_buffer_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_buffer_preenable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.sx9500_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %7 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.sx9500_data* %7, %struct.sx9500_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %9 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SX9500_NUM_CHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @sx9500_inc_chan_users(%struct.sx9500_data* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %34

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %11

34:                                               ; preds = %28, %11
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %55, %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @test_bit(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @sx9500_dec_chan_users(%struct.sx9500_data* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %5, align 4
  br label %40

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %61 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @sx9500_inc_chan_users(%struct.sx9500_data*, i32) #1

declare dso_local i32 @sx9500_dec_chan_users(%struct.sx9500_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
