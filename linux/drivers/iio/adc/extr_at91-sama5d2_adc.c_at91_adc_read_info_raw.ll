; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_read_info_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_read_info_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i8 }
%struct.at91_adc_state = type { i32, i32, i32, i32, %struct.iio_chan_spec* }

@IIO_POSITIONRELATIVE = common dso_local global i64 0, align 8
@IIO_PRESSURE = common dso_local global i64 0, align 8
@AT91_SAMA5D2_COR_DIFF_OFFSET = common dso_local global i32 0, align 4
@AT91_SAMA5D2_COR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_CHER = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER = common dso_local global i32 0, align 4
@AT91_SAMA5D2_CR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_CR_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IDR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_CHDR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_LCDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @at91_adc_read_info_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_read_info_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.at91_adc_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %12)
  store %struct.at91_adc_state* %13, %struct.at91_adc_state** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IIO_POSITIONRELATIVE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %21 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %192

26:                                               ; preds = %19
  %27 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %28 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @at91_adc_read_position(%struct.at91_adc_state* %30, i32 %33, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %38 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %37, i32 0, i32 2
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %40)
  %42 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @at91_adc_adjust_val_osr(%struct.at91_adc_state* %42, i32* %43)
  store i32 %44, i32* %4, align 4
  br label %192

45:                                               ; preds = %3
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IIO_PRESSURE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %45
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %192

58:                                               ; preds = %51
  %59 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %60 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %59, i32 0, i32 2
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @at91_adc_read_pressure(%struct.at91_adc_state* %62, i32 %65, i32* %10)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %70 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %73 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %72)
  %74 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @at91_adc_adjust_val_osr(%struct.at91_adc_state* %74, i32* %75)
  store i32 %76, i32* %4, align 4
  br label %192

77:                                               ; preds = %45
  %78 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %79 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %192

84:                                               ; preds = %77
  %85 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %86 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %85, i32 0, i32 2
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %89 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %90 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %89, i32 0, i32 4
  store %struct.iio_chan_spec* %88, %struct.iio_chan_spec** %90, align 8
  %91 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %92 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %97 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @BIT(i32 %98)
  %100 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %101 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @BIT(i32 %102)
  %104 = or i32 %99, %103
  %105 = load i32, i32* @AT91_SAMA5D2_COR_DIFF_OFFSET, align 4
  %106 = shl i32 %104, %105
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %95, %84
  %108 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %109 = load i32, i32* @AT91_SAMA5D2_COR, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @at91_adc_writel(%struct.at91_adc_state* %108, i32 %109, i32 %110)
  %112 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %113 = load i32, i32* @AT91_SAMA5D2_CHER, align 4
  %114 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %115 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @BIT(i32 %116)
  %118 = call i32 @at91_adc_writel(%struct.at91_adc_state* %112, i32 %113, i32 %117)
  %119 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %120 = load i32, i32* @AT91_SAMA5D2_IER, align 4
  %121 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %122 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @BIT(i32 %123)
  %125 = call i32 @at91_adc_writel(%struct.at91_adc_state* %119, i32 %120, i32 %124)
  %126 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %127 = load i32, i32* @AT91_SAMA5D2_CR, align 4
  %128 = load i32, i32* @AT91_SAMA5D2_CR_START, align 4
  %129 = call i32 @at91_adc_writel(%struct.at91_adc_state* %126, i32 %127, i32 %128)
  %130 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %131 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %134 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @msecs_to_jiffies(i32 1000)
  %137 = call i32 @wait_event_interruptible_timeout(i32 %132, i32 %135, i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %107
  %141 = load i32, i32* @ETIMEDOUT, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %140, %107
  %144 = load i32, i32* %11, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %143
  %147 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %148 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  %151 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @at91_adc_adjust_val_osr(%struct.at91_adc_state* %151, i32* %152)
  store i32 %153, i32* %11, align 4
  %154 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %155 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i8, i8* %156, align 4
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 115
  br i1 %159, label %160, label %165

160:                                              ; preds = %146
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @sign_extend32(i32 %162, i32 11)
  %164 = load i32*, i32** %7, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %160, %146
  %166 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %167 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %165, %143
  %169 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %170 = load i32, i32* @AT91_SAMA5D2_IDR, align 4
  %171 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %172 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @BIT(i32 %173)
  %175 = call i32 @at91_adc_writel(%struct.at91_adc_state* %169, i32 %170, i32 %174)
  %176 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %177 = load i32, i32* @AT91_SAMA5D2_CHDR, align 4
  %178 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %179 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @BIT(i32 %180)
  %182 = call i32 @at91_adc_writel(%struct.at91_adc_state* %176, i32 %177, i32 %181)
  %183 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %184 = load i32, i32* @AT91_SAMA5D2_LCDR, align 4
  %185 = call i32 @at91_adc_readl(%struct.at91_adc_state* %183, i32 %184)
  %186 = load %struct.at91_adc_state*, %struct.at91_adc_state** %8, align 8
  %187 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %186, i32 0, i32 2
  %188 = call i32 @mutex_unlock(i32* %187)
  %189 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %190 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %189)
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %168, %82, %58, %56, %26, %24
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @at91_adc_read_position(%struct.at91_adc_state*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_adjust_val_osr(%struct.at91_adc_state*, i32*) #1

declare dso_local i32 @at91_adc_read_pressure(%struct.at91_adc_state*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
