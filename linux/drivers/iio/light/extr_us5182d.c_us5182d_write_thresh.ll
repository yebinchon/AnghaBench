; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_write_thresh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_write_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.us5182d_data = type { i32, i32, i32, i32, i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @us5182d_write_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_write_thresh(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.us5182d_data*, align 8
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %19 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.us5182d_data* %19, %struct.us5182d_data** %16, align 8
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @USHRT_MAX, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %22, %7
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %91

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %82 [
    i32 128, label %34
    i32 129, label %58
  ]

34:                                               ; preds = %32
  %35 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %36 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %39 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @us5182d_setup_prox(%struct.iio_dev* %43, i32 %44, i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %86

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %54 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %56 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %55, i32 0, i32 2
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %85

58:                                               ; preds = %32
  %59 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %60 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %59, i32 0, i32 2
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %63 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @us5182d_setup_prox(%struct.iio_dev* %67, i32 %68, i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %86

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %78 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %80 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  br label %85

82:                                               ; preds = %32
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %91

85:                                               ; preds = %75, %51
  store i32 0, i32* %8, align 4
  br label %91

86:                                               ; preds = %73, %49
  %87 = load %struct.us5182d_data*, %struct.us5182d_data** %16, align 8
  %88 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %86, %85, %82, %29
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @us5182d_setup_prox(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
