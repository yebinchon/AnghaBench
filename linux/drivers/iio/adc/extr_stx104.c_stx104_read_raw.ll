; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stx104.c_stx104_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32 }
%struct.stx104_iio = type { i32*, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @stx104_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stx104_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stx104_iio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.stx104_iio* @iio_priv(%struct.iio_dev* %16)
  store %struct.stx104_iio* %17, %struct.stx104_iio** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %120 [
    i64 131, label %19
    i64 129, label %31
    i64 130, label %83
    i64 128, label %99
  ]

19:                                               ; preds = %5
  %20 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %21 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 11
  %24 = call i32 @inb(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = and i32 %25, 3
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = shl i32 1, %27
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %30, i32* %6, align 4
  br label %123

31:                                               ; preds = %5
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %38 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %46, i32* %6, align 4
  br label %123

47:                                               ; preds = %31
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = shl i64 %53, 4
  %55 = or i64 %50, %54
  %56 = trunc i64 %55 to i32
  %57 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %58 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 2
  %61 = call i32 @outb(i32 %56, i32 %60)
  %62 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %63 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @outb(i32 0, i32 %64)
  br label %66

66:                                               ; preds = %75, %47
  %67 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %68 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 8
  %71 = call i32 @inb(i32 %70)
  %72 = call i32 @BIT(i32 7)
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %66

76:                                               ; preds = %66
  %77 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %78 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @inw(i32 %79)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %82, i32* %6, align 4
  br label %123

83:                                               ; preds = %5
  %84 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %85 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 11
  %88 = call i32 @inb(i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @BIT(i32 2)
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 -32768, %95
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %98, i32* %6, align 4
  br label %123

99:                                               ; preds = %5
  %100 = load %struct.stx104_iio*, %struct.stx104_iio** %12, align 8
  %101 = getelementptr inbounds %struct.stx104_iio, %struct.stx104_iio* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 11
  %104 = call i32 @inb(i32 %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @BIT(i32 2)
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %111, 3
  store i32 %112, i32* %15, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 5, i32* %113, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 15, %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32*, i32** %10, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %119, i32* %6, align 4
  br label %123

120:                                              ; preds = %5
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %120, %99, %83, %76, %36, %19
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.stx104_iio* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
