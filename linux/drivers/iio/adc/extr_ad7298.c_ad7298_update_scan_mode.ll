; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_update_scan_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7298.c_ad7298_update_scan_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ad7298_state = type { i16, %struct.TYPE_2__*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@AD7298_WRITE = common dso_local global i16 0, align 2
@AD7298_MAX_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64*)* @ad7298_update_scan_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7298_update_scan_mode(%struct.iio_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.ad7298_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %11 = call %struct.ad7298_state* @iio_priv(%struct.iio_dev* %10)
  store %struct.ad7298_state* %11, %struct.ad7298_state** %5, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bitmap_weight(i64* %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i16, i16* @AD7298_WRITE, align 2
  %18 = zext i16 %17 to i32
  %19 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %20 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = or i32 %18, %22
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %8, align 2
  store i32 0, i32* %6, align 4
  %25 = call i32 @AD7298_CH(i32 0)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %42, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @AD7298_MAX_CHAN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i64*, i64** %4, align 8
  %33 = call i64 @test_bit(i32 %31, i64* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i16, i16* %8, align 2
  %38 = zext i16 %37 to i32
  %39 = or i32 %38, %36
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %8, align 2
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i16, i16* %8, align 2
  %49 = call i32 @cpu_to_be16(i16 zeroext %48)
  %50 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %51 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %55 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %59 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i32* %57, i32** %62, align 8
  %63 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %64 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 2, i32* %67, align 8
  %68 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %69 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %74 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %78 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i32* %76, i32** %81, align 8
  %82 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %83 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 2, i32* %86, align 8
  %87 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %88 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %93 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %92, i32 0, i32 2
  %94 = call i32 @spi_message_init(i32* %93)
  %95 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %96 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 0
  %99 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %100 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %99, i32 0, i32 2
  %101 = call i32 @spi_message_add_tail(%struct.TYPE_2__* %98, i32* %100)
  %102 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %103 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 1
  %106 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %107 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %106, i32 0, i32 2
  %108 = call i32 @spi_message_add_tail(%struct.TYPE_2__* %105, i32* %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %154, %47
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %157

113:                                              ; preds = %109
  %114 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %115 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %121 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  store i32* %119, i32** %127, align 8
  %128 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %129 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 2, i32* %135, align 8
  %136 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %137 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %145 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %149
  %151 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %152 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %151, i32 0, i32 2
  %153 = call i32 @spi_message_add_tail(%struct.TYPE_2__* %150, i32* %152)
  br label %154

154:                                              ; preds = %113
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %109

157:                                              ; preds = %109
  %158 = load %struct.ad7298_state*, %struct.ad7298_state** %5, align 8
  %159 = getelementptr inbounds %struct.ad7298_state, %struct.ad7298_state* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  ret i32 0
}

declare dso_local %struct.ad7298_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @bitmap_weight(i64*, i32) #1

declare dso_local i32 @AD7298_CH(i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @cpu_to_be16(i16 zeroext) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
