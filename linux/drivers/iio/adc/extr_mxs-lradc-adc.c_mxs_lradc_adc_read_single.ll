; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_read_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_mxs-lradc-adc.c_mxs_lradc_adc_read_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mxs_lradc_adc = type { i64, i32, i32, %struct.mxs_lradc* }
%struct.mxs_lradc = type { i64 }

@IMX28_LRADC = common dso_local global i64 0, align 8
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@LRADC_CTRL0 = common dso_local global i64 0, align 8
@LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET = common dso_local global i32 0, align 4
@LRADC_CTRL2 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@LRADC_CTRL4 = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@LRADC_CH_VALUE_MASK = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @mxs_lradc_adc_read_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_adc_read_single(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mxs_lradc_adc*, align 8
  %9 = alloca %struct.mxs_lradc*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev* %11)
  store %struct.mxs_lradc_adc* %12, %struct.mxs_lradc_adc** %8, align 8
  %13 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %14 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %13, i32 0, i32 3
  %15 = load %struct.mxs_lradc*, %struct.mxs_lradc** %14, align 8
  store %struct.mxs_lradc* %15, %struct.mxs_lradc** %9, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %157

22:                                               ; preds = %3
  %23 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %24 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %23, i32 0, i32 1
  %25 = call i32 @reinit_completion(i32* %24)
  %26 = load %struct.mxs_lradc*, %struct.mxs_lradc** %9, align 8
  %27 = getelementptr inbounds %struct.mxs_lradc, %struct.mxs_lradc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IMX28_LRADC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = call i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32 0)
  %33 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %34 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LRADC_CTRL1, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %32, i64 %39)
  br label %41

41:                                               ; preds = %31, %22
  %42 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %43 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LRADC_CTRL0, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 1, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %52 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %51, i32 0, i32 2
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load i32, i32* @LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET, align 4
  %57 = shl i32 1, %56
  %58 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %59 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LRADC_CTRL2, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %57, i64 %64)
  br label %77

66:                                               ; preds = %41
  %67 = load i32, i32* @LRADC_CTRL2_DIVIDE_BY_TWO_OFFSET, align 4
  %68 = shl i32 1, %67
  %69 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %70 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @LRADC_CTRL2, align 8
  %73 = add nsw i64 %71, %72
  %74 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %68, i64 %75)
  br label %77

77:                                               ; preds = %66, %55
  %78 = call i32 @LRADC_CTRL4_LRADCSELECT_MASK(i32 0)
  %79 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %80 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LRADC_CTRL4, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %78, i64 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %89 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @LRADC_CTRL4, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %87, i64 %94)
  %96 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %97 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @LRADC_CH(i32 0)
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 0, i64 %100)
  %102 = call i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32 0)
  %103 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %104 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @LRADC_CTRL1, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @writel(i32 %102, i64 %109)
  %111 = call i32 @BIT(i32 0)
  %112 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %113 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LRADC_CTRL0, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %111, i64 %118)
  %120 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %121 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %120, i32 0, i32 1
  %122 = load i32, i32* @HZ, align 4
  %123 = call i32 @wait_for_completion_killable_timeout(i32* %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %77
  %127 = load i32, i32* @ETIMEDOUT, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %77
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %144

133:                                              ; preds = %129
  %134 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %135 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @LRADC_CH(i32 0)
  %138 = add nsw i64 %136, %137
  %139 = call i32 @readl(i64 %138)
  %140 = load i32, i32* @LRADC_CH_VALUE_MASK, align 4
  %141 = and i32 %139, %140
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %133, %132
  %145 = call i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32 0)
  %146 = load %struct.mxs_lradc_adc*, %struct.mxs_lradc_adc** %8, align 8
  %147 = getelementptr inbounds %struct.mxs_lradc_adc, %struct.mxs_lradc_adc* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LRADC_CTRL1, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel(i32 %145, i64 %152)
  %154 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %155 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %154)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %144, %20
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.mxs_lradc_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @LRADC_CTRL4_LRADCSELECT_MASK(i32) #1

declare dso_local i64 @LRADC_CH(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wait_for_completion_killable_timeout(i32*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
