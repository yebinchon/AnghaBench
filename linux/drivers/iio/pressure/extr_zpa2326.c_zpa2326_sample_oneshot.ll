; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_sample_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_sample_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.zpa2326_private = type { i64 }

@IIO_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @zpa2326_sample_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_sample_oneshot(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zpa2326_private*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %83

16:                                               ; preds = %3
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call i32 @zpa2326_resume(%struct.iio_dev* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %79

22:                                               ; preds = %16
  %23 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %24 = call %struct.zpa2326_private* @iio_priv(%struct.iio_dev* %23)
  store %struct.zpa2326_private* %24, %struct.zpa2326_private** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IIO_PRESSURE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %33 = call i32 @zpa2326_clear_fifo(%struct.iio_dev* %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %76

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %27
  br label %49

39:                                               ; preds = %22
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = load %struct.zpa2326_private*, %struct.zpa2326_private** %9, align 8
  %42 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @zpa2326_config_oneshot(%struct.iio_dev* %40, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %76

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %38
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = call i32 @zpa2326_start_oneshot(%struct.iio_dev* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %76

55:                                               ; preds = %49
  %56 = load %struct.zpa2326_private*, %struct.zpa2326_private** %9, align 8
  %57 = getelementptr inbounds %struct.zpa2326_private, %struct.zpa2326_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %62 = load %struct.zpa2326_private*, %struct.zpa2326_private** %9, align 8
  %63 = call i32 @zpa2326_wait_oneshot_completion(%struct.iio_dev* %61, %struct.zpa2326_private* %62)
  store i32 %63, i32* %8, align 4
  br label %67

64:                                               ; preds = %55
  %65 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %66 = call i32 @zpa2326_poll_oneshot_completion(%struct.iio_dev* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %76

71:                                               ; preds = %67
  %72 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @zpa2326_fetch_raw_sample(%struct.iio_dev* %72, i32 %73, i32* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %70, %54, %47, %36
  %77 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %78 = call i32 @zpa2326_suspend(%struct.iio_dev* %77)
  br label %79

79:                                               ; preds = %76, %21
  %80 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %81 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %14
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_resume(%struct.iio_dev*) #1

declare dso_local %struct.zpa2326_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_clear_fifo(%struct.iio_dev*, i32) #1

declare dso_local i32 @zpa2326_config_oneshot(%struct.iio_dev*, i64) #1

declare dso_local i32 @zpa2326_start_oneshot(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_wait_oneshot_completion(%struct.iio_dev*, %struct.zpa2326_private*) #1

declare dso_local i32 @zpa2326_poll_oneshot_completion(%struct.iio_dev*) #1

declare dso_local i32 @zpa2326_fetch_raw_sample(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @zpa2326_suspend(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
