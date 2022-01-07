; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.mpu3050 = type { i32*, i32, i8*, i32 }

@mpu3050_fs_precision = common dso_local global i32* null, align 8
@U16_MAX = common dso_local global i32 0, align 4
@IIO_ANGL_VEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LPF_256_HZ_NOLPF = common dso_local global i32 0, align 4
@LPF_188_HZ = common dso_local global i32 0, align 4
@FS_2000_DPS = common dso_local global i8* null, align 8
@FS_250_DPS = common dso_local global i8* null, align 8
@FS_500_DPS = common dso_local global i8* null, align 8
@FS_1000_DPS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @mpu3050_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mpu3050*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %17)
  store %struct.mpu3050* %18, %struct.mpu3050** %12, align 8
  %19 = load i32*, i32** @mpu3050_fs_precision, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 1000000
  %23 = mul nsw i32 %22, 2
  %24 = load i32, i32* @U16_MAX, align 4
  %25 = call i32 @DIV_ROUND_CLOSEST(i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** @mpu3050_fs_precision, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 1000000
  %30 = mul nsw i32 %29, 2
  %31 = load i32, i32* @U16_MAX, align 4
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32*, i32** @mpu3050_fs_precision, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000000
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* @U16_MAX, align 4
  %39 = call i32 @DIV_ROUND_CLOSEST(i32 %37, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32*, i32** @mpu3050_fs_precision, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 1000000
  %44 = mul nsw i32 %43, 2
  %45 = load i32, i32* @U16_MAX, align 4
  %46 = call i32 @DIV_ROUND_CLOSEST(i32 %44, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i64, i64* %11, align 8
  switch i64 %47, label %166 [
    i64 130, label %48
    i64 129, label %68
    i64 128, label %98
  ]

48:                                               ; preds = %5
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IIO_ANGL_VEL, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %170

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %60 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  store i32 %58, i32* %67, align 4
  store i32 0, i32* %6, align 4
  br label %170

68:                                               ; preds = %5
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp sgt i32 %72, 8000
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %170

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 1000
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32, i32* @LPF_256_HZ_NOLPF, align 4
  %82 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %83 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @DIV_ROUND_CLOSEST(i32 8000, i32 %84)
  %86 = sub nsw i32 %85, 1
  %87 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %88 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %6, align 4
  br label %170

89:                                               ; preds = %77
  %90 = load i32, i32* @LPF_188_HZ, align 4
  %91 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %92 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @DIV_ROUND_CLOSEST(i32 1000, i32 %93)
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %97 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %6, align 4
  br label %170

98:                                               ; preds = %5
  %99 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %100 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IIO_ANGL_VEL, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %170

107:                                              ; preds = %98
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8*, i8** @FS_2000_DPS, align 8
  %112 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %113 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  store i32 0, i32* %6, align 4
  br label %170

114:                                              ; preds = %107
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ule i32 %115, %116
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add i32 %120, %121
  %123 = udiv i32 %122, 2
  %124 = icmp ult i32 %119, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %118, %114
  %126 = load i8*, i8** @FS_250_DPS, align 8
  %127 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %128 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  br label %165

129:                                              ; preds = %118
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ule i32 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %14, align 4
  %137 = add i32 %135, %136
  %138 = udiv i32 %137, 2
  %139 = icmp ult i32 %134, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %133, %129
  %141 = load i8*, i8** @FS_500_DPS, align 8
  %142 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %143 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  br label %164

144:                                              ; preds = %133
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp ule i32 %145, %146
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add i32 %150, %151
  %153 = udiv i32 %152, 2
  %154 = icmp ult i32 %149, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %148, %144
  %156 = load i8*, i8** @FS_1000_DPS, align 8
  %157 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %158 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  br label %163

159:                                              ; preds = %148
  %160 = load i8*, i8** @FS_2000_DPS, align 8
  %161 = load %struct.mpu3050*, %struct.mpu3050** %12, align 8
  %162 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %159, %155
  br label %164

164:                                              ; preds = %163, %140
  br label %165

165:                                              ; preds = %164, %125
  store i32 0, i32* %6, align 4
  br label %170

166:                                              ; preds = %5
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %167, %165, %110, %104, %89, %80, %74, %57, %54
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
