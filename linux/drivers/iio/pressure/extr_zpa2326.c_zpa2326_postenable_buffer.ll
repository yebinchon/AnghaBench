; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_postenable_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_postenable_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"failed to enable buffering (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @zpa2326_postenable_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_postenable_buffer(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.zpa2326_private*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.zpa2326_private* @iio_priv(%struct.iio_dev* %6)
  store %struct.zpa2326_private* %7, %struct.zpa2326_private** %4, align 8
  %8 = load %struct.zpa2326_private*, %struct.zpa2326_private** %4, align 8
  %9 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = call i32 @zpa2326_clear_fifo(%struct.iio_dev* %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %45

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %21 = call i32 @iio_trigger_using_own(%struct.iio_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = load %struct.zpa2326_private*, %struct.zpa2326_private** %4, align 8
  %25 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %30 = load %struct.zpa2326_private*, %struct.zpa2326_private** %4, align 8
  %31 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @zpa2326_config_oneshot(%struct.iio_dev* %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %45

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %23, %19
  %39 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %40 = call i32 @iio_triggered_buffer_postenable(%struct.iio_dev* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %50

45:                                               ; preds = %43, %36, %17
  %46 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @zpa2326_err(%struct.iio_dev* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.zpa2326_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_clear_fifo(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_trigger_using_own(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_config_oneshot(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_triggered_buffer_postenable(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_err(%struct.iio_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
