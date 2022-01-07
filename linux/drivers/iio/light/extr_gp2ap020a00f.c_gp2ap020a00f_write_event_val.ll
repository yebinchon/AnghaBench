; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_event_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_write_event_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.gp2ap020a00f_data = type { i32*, i32, i32 }

@GP2AP020A00F_THRESH_PH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_RISING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_FALLING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_RISING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_FALLING_EV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @gp2ap020a00f_write_event_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_write_event_val(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gp2ap020a00f_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %21 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.gp2ap020a00f_data* %21, %struct.gp2ap020a00f_data** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %22 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %23 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @gp2ap020a00f_get_thresh_reg(%struct.iio_chan_spec* %25, i32 %26)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %18, align 4
  %29 = call i32 @GP2AP020A00F_THRESH_VAL_ID(i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* @GP2AP020A00F_THRESH_PH, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %19, align 4
  br label %82

36:                                               ; preds = %7
  %37 = load i32, i32* %18, align 4
  switch i32 %37, label %70 [
    i32 129, label %38
    i32 128, label %43
    i32 131, label %48
    i32 130, label %59
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %40 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %41 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %40, i32 0, i32 2
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  store i32 %42, i32* %16, align 4
  br label %70

43:                                               ; preds = %36
  %44 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %45 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %46 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %45, i32 0, i32 2
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  store i32 %47, i32* %16, align 4
  br label %70

48:                                               ; preds = %36
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %19, align 4
  br label %82

54:                                               ; preds = %48
  %55 = load i32, i32* @GP2AP020A00F_FLAG_PROX_RISING_EV, align 4
  %56 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %57 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %56, i32 0, i32 2
  %58 = call i32 @test_bit(i32 %55, i32* %57)
  store i32 %58, i32* %16, align 4
  br label %70

59:                                               ; preds = %36
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %19, align 4
  br label %82

65:                                               ; preds = %59
  %66 = load i32, i32* @GP2AP020A00F_FLAG_PROX_FALLING_EV, align 4
  %67 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %68 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %67, i32 0, i32 2
  %69 = call i32 @test_bit(i32 %66, i32* %68)
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %36, %65, %54, %43, %38
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %73 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %78, i32 %79, i32 %80)
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %70, %62, %51, %33
  %83 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %15, align 8
  %84 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %19, align 4
  ret i32 %86
}

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gp2ap020a00f_get_thresh_reg(%struct.iio_chan_spec*, i32) #1

declare dso_local i32 @GP2AP020A00F_THRESH_VAL_ID(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
