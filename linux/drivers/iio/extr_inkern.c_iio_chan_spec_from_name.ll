; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_chan_spec_from_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_chan_spec_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec = type { i64 }
%struct.iio_dev = type { i32, %struct.iio_chan_spec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_chan_spec* (%struct.iio_dev*, i8*)* @iio_chan_spec_from_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_chan_spec* @iio_chan_spec_from_name(%struct.iio_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_chan_spec*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.iio_chan_spec* null, %struct.iio_chan_spec** %6, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %43, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %7
  %14 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %15 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %14, i32 0, i32 1
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i64 %18
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 1
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i64 %29
  %31 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @strcmp(i8* %24, i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %37 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %36, i32 0, i32 1
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i64 %40
  store %struct.iio_chan_spec* %41, %struct.iio_chan_spec** %6, align 8
  br label %46

42:                                               ; preds = %23, %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %7

46:                                               ; preds = %35, %7
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  ret %struct.iio_chan_spec* %47
}

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
