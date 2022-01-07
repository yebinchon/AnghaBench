; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ad5592r_state = type { i32*, i32**, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ad5592r_state*, i64, i32)*, i32 (%struct.ad5592r_state*, i32, i32*)*, i32 (%struct.ad5592r_state*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@AD5592R_REG_CTRL = common dso_local global i32 0, align 4
@AD5592R_REG_CTRL_DAC_RANGE = common dso_local global i32 0, align 4
@AD5592R_REG_CTRL_ADC_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ad5592r_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5592r_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5592r_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ad5592r_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ad5592r_state* %16, %struct.ad5592r_state** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %200 [
    i64 129, label %18
    i64 128, label %71
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 1, %23
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %18
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %204

32:                                               ; preds = %26
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %204

40:                                               ; preds = %32
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %45 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ad5592r_state*, i64, i32)*, i32 (%struct.ad5592r_state*, i64, i32)** %47, align 8
  %49 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 %48(%struct.ad5592r_state* %49, i64 %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %60 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %58, i32* %65, align 4
  br label %66

66:                                               ; preds = %57, %40
  %67 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %204

71:                                               ; preds = %5
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IIO_VOLTAGE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %199

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %80 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %78, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %90 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %88, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 0, i32* %14, align 4
  br label %123

98:                                               ; preds = %87, %77
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %101 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %99, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %98
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %111 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %109, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  store i32 1, i32* %14, align 4
  br label %122

119:                                              ; preds = %108, %98
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %204

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %122, %97
  %124 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %125 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %124, i32 0, i32 0
  %126 = call i32 @mutex_lock(i32* %125)
  %127 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %128 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32 (%struct.ad5592r_state*, i32, i32*)*, i32 (%struct.ad5592r_state*, i32, i32*)** %130, align 8
  %132 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %133 = load i32, i32* @AD5592R_REG_CTRL, align 4
  %134 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %135 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %134, i32 0, i32 2
  %136 = call i32 %131(%struct.ad5592r_state* %132, i32 %133, i32* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %123
  %140 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %141 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %6, align 4
  br label %204

144:                                              ; preds = %123
  %145 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %146 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* @AD5592R_REG_CTRL_DAC_RANGE, align 4
  %154 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %155 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %165

158:                                              ; preds = %149
  %159 = load i32, i32* @AD5592R_REG_CTRL_DAC_RANGE, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %162 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %158, %152
  br label %183

166:                                              ; preds = %144
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* @AD5592R_REG_CTRL_ADC_RANGE, align 4
  %171 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %172 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %182

175:                                              ; preds = %166
  %176 = load i32, i32* @AD5592R_REG_CTRL_ADC_RANGE, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %179 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %175, %169
  br label %183

183:                                              ; preds = %182, %165
  %184 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %185 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %184, i32 0, i32 3
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %187, align 8
  %189 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %190 = load i32, i32* @AD5592R_REG_CTRL, align 4
  %191 = load %struct.ad5592r_state*, %struct.ad5592r_state** %12, align 8
  %192 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 %188(%struct.ad5592r_state* %189, i32 %190, i32 %193)
  store i32 %194, i32* %13, align 4
  %195 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %196 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %195, i32 0, i32 0
  %197 = call i32 @mutex_unlock(i32* %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %6, align 4
  br label %204

199:                                              ; preds = %71
  br label %203

200:                                              ; preds = %5
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %6, align 4
  br label %204

203:                                              ; preds = %199
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %203, %200, %183, %139, %119, %66, %37, %29
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local %struct.ad5592r_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
