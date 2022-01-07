; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.stx104_iio = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @stx104_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stx104_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stx104_iio*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.stx104_iio* @iio_priv(%struct.iio_dev* %13)
  store %struct.stx104_iio* %14, %struct.stx104_iio** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %82 [
    i64 129, label %16
    i64 128, label %46
  ]

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %42 [
    i32 1, label %18
    i32 2, label %24
    i32 4, label %30
    i32 8, label %36
  ]

18:                                               ; preds = %16
  %19 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %20 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 11
  %23 = call i32 @outb(i32 0, i32 %22)
  br label %45

24:                                               ; preds = %16
  %25 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %26 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 11
  %29 = call i32 @outb(i32 1, i32 %28)
  br label %45

30:                                               ; preds = %16
  %31 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %32 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 11
  %35 = call i32 @outb(i32 2, i32 %34)
  br label %45

36:                                               ; preds = %16
  %37 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %38 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 11
  %41 = call i32 @outb(i32 3, i32 %40)
  br label %45

42:                                               ; preds = %16
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %85

45:                                               ; preds = %36, %30, %24, %18
  store i32 0, i32* %6, align 4
  br label %85

46:                                               ; preds = %5
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp ugt i32 %52, 65535
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %85

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %60 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %58, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %68 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 2, %74
  %76 = add i64 %71, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @outw(i32 %66, i32 %77)
  store i32 0, i32* %6, align 4
  br label %85

79:                                               ; preds = %46
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %85

82:                                               ; preds = %5
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %79, %57, %54, %45, %42
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.stx104_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
