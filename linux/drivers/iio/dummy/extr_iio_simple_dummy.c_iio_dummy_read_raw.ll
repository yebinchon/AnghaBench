; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy.c_iio_dummy_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy.c_iio_dummy_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32 }
%struct.iio_dummy_state = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @iio_dummy_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_dummy_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iio_dummy_state*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.iio_dummy_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.iio_dummy_state* %14, %struct.iio_dummy_state** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %18 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %17, i32 0, i32 10
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %10, align 8
  switch i64 %20, label %178 [
    i64 134, label %21
    i64 135, label %78
    i64 136, label %108
    i64 132, label %111
    i64 140, label %130
    i64 138, label %136
    i64 133, label %150
    i64 137, label %154
    i64 139, label %166
  ]

21:                                               ; preds = %5
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %76 [
    i32 128, label %25
    i32 142, label %70
  ]

25:                                               ; preds = %21
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %32 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %35, i32* %12, align 4
  br label %69

36:                                               ; preds = %25
  %37 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %38 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %48 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %60

53:                                               ; preds = %41
  %54 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %55 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %46
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %12, align 4
  br label %68

62:                                               ; preds = %36
  %63 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %64 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %62, %60
  br label %69

69:                                               ; preds = %68, %30
  br label %77

70:                                               ; preds = %21
  %71 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %72 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %75, i32* %12, align 4
  br label %77

76:                                               ; preds = %21
  br label %77

77:                                               ; preds = %76, %70, %69
  br label %179

78:                                               ; preds = %5
  %79 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %80 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %106 [
    i32 129, label %82
    i32 141, label %88
  ]

82:                                               ; preds = %78
  %83 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %84 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %87, i32* %12, align 4
  br label %107

88:                                               ; preds = %78
  %89 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %90 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %104 [
    i32 131, label %92
    i32 130, label %98
  ]

92:                                               ; preds = %88
  %93 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %94 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %97, i32* %12, align 4
  br label %105

98:                                               ; preds = %88
  %99 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %100 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %8, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %103, i32* %12, align 4
  br label %105

104:                                              ; preds = %88
  br label %105

105:                                              ; preds = %104, %98, %92
  br label %107

106:                                              ; preds = %78
  br label %107

107:                                              ; preds = %106, %105, %82
  br label %179

108:                                              ; preds = %5
  %109 = load i32*, i32** %8, align 8
  store i32 7, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %110, i32* %12, align 4
  br label %179

111:                                              ; preds = %5
  %112 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %113 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %128 [
    i32 128, label %115
  ]

115:                                              ; preds = %111
  %116 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %117 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %127 [
    i32 0, label %119
    i32 1, label %123
  ]

119:                                              ; preds = %115
  %120 = load i32*, i32** %8, align 8
  store i32 0, i32* %120, align 4
  %121 = load i32*, i32** %9, align 8
  store i32 1333, i32* %121, align 4
  %122 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %122, i32* %12, align 4
  br label %127

123:                                              ; preds = %115
  %124 = load i32*, i32** %8, align 8
  store i32 0, i32* %124, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 1344, i32* %125, align 4
  %126 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %115, %119
  br label %129

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128, %127
  br label %179

130:                                              ; preds = %5
  %131 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %132 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %8, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %135, i32* %12, align 4
  br label %179

136:                                              ; preds = %5
  %137 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %138 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %137, i32 0, i32 11
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %8, align 8
  store i32 %141, i32* %142, align 4
  %143 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %144 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %143, i32 0, i32 11
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %149, i32* %12, align 4
  br label %179

150:                                              ; preds = %5
  %151 = load i32*, i32** %8, align 8
  store i32 3, i32* %151, align 4
  %152 = load i32*, i32** %9, align 8
  store i32 33, i32* %152, align 4
  %153 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %153, i32* %12, align 4
  br label %179

154:                                              ; preds = %5
  %155 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %156 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %164 [
    i32 129, label %158
  ]

158:                                              ; preds = %154
  %159 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %160 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %8, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %163, i32* %12, align 4
  br label %165

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %158
  br label %179

166:                                              ; preds = %5
  %167 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %168 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %176 [
    i32 129, label %170
  ]

170:                                              ; preds = %166
  %171 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %172 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %8, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %175, i32* %12, align 4
  br label %177

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %170
  br label %179

178:                                              ; preds = %5
  br label %179

179:                                              ; preds = %178, %177, %165, %150, %136, %130, %129, %108, %107, %77
  %180 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %11, align 8
  %181 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %180, i32 0, i32 10
  %182 = call i32 @mutex_unlock(i32* %181)
  %183 = load i32, i32* %12, align 4
  ret i32 %183
}

declare dso_local %struct.iio_dummy_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
