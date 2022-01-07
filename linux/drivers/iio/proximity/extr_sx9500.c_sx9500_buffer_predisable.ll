; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32 }

@SX9500_NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @sx9500_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.sx9500_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %7 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.sx9500_data* %7, %struct.sx9500_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %9 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %8)
  %10 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %11 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SX9500_NUM_CHANNELS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @sx9500_dec_chan_users(%struct.sx9500_data* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %36

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %13

36:                                               ; preds = %30, %13
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %57, %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @test_bit(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @sx9500_inc_chan_users(%struct.sx9500_data* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  br label %42

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %36
  %62 = load %struct.sx9500_data*, %struct.sx9500_data** %3, align 8
  %63 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @sx9500_dec_chan_users(%struct.sx9500_data*, i32) #1

declare dso_local i32 @sx9500_inc_chan_users(%struct.sx9500_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
