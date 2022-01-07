; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy.c_iio_dummy_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dummy/extr_iio_simple_dummy.c_iio_dummy_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i32 }
%struct.iio_dummy_state = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }

@EINVAL = common dso_local global i32 0, align 4
@dummy_scales = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @iio_dummy_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_dummy_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iio_dummy_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.iio_dummy_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.iio_dummy_state* %16, %struct.iio_dummy_state** %14, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %173 [
    i64 132, label %18
    i64 133, label %43
    i64 135, label %83
    i64 137, label %135
    i64 134, label %145
    i64 136, label %162
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %40 [
    i32 128, label %22
  ]

22:                                               ; preds = %18
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %176

30:                                               ; preds = %22
  %31 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %32 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %31, i32 0, i32 7
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %36 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %38 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %37, i32 0, i32 7
  %39 = call i32 @mutex_unlock(i32* %38)
  store i32 0, i32* %6, align 4
  br label %176

40:                                               ; preds = %18
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %176

43:                                               ; preds = %5
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %80 [
    i32 129, label %47
    i32 138, label %57
  ]

47:                                               ; preds = %43
  %48 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %49 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %48, i32 0, i32 7
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %53 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %55 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %54, i32 0, i32 7
  %56 = call i32 @mutex_unlock(i32* %55)
  store i32 0, i32* %6, align 4
  br label %176

57:                                               ; preds = %43
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %62, 100
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 100, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %67 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %77 [
    i32 131, label %69
    i32 130, label %73
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %72 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %6, align 4
  br label %176

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %76 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %6, align 4
  br label %176

77:                                               ; preds = %65
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %176

80:                                               ; preds = %43
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %176

83:                                               ; preds = %5
  %84 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %85 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %84, i32 0, i32 7
  %86 = call i32 @mutex_lock(i32* %85)
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %112, %83
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dummy_scales, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %89)
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dummy_scales, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %93, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %92
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dummy_scales, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %102, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %115

111:                                              ; preds = %101, %92
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %87

115:                                              ; preds = %110, %87
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dummy_scales, align 8
  %118 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %117)
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %13, align 4
  br label %130

123:                                              ; preds = %115
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dummy_scales, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %129 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %128, i32 0, i32 8
  store %struct.TYPE_3__* %127, %struct.TYPE_3__** %129, align 8
  br label %130

130:                                              ; preds = %123, %120
  %131 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %132 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %131, i32 0, i32 7
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %6, align 4
  br label %176

135:                                              ; preds = %5
  %136 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %137 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %136, i32 0, i32 7
  %138 = call i32 @mutex_lock(i32* %137)
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %141 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %143 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %142, i32 0, i32 7
  %144 = call i32 @mutex_unlock(i32* %143)
  store i32 0, i32* %6, align 4
  br label %176

145:                                              ; preds = %5
  %146 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %147 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %159 [
    i32 129, label %149
  ]

149:                                              ; preds = %145
  %150 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %151 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %150, i32 0, i32 7
  %152 = call i32 @mutex_lock(i32* %151)
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %155 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %157 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %156, i32 0, i32 7
  %158 = call i32 @mutex_unlock(i32* %157)
  store i32 0, i32* %6, align 4
  br label %176

159:                                              ; preds = %145
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  br label %176

162:                                              ; preds = %5
  %163 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %164 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %170 [
    i32 129, label %166
  ]

166:                                              ; preds = %162
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.iio_dummy_state*, %struct.iio_dummy_state** %14, align 8
  %169 = getelementptr inbounds %struct.iio_dummy_state, %struct.iio_dummy_state* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  store i32 0, i32* %6, align 4
  br label %176

170:                                              ; preds = %162
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %6, align 4
  br label %176

173:                                              ; preds = %5
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %173, %170, %166, %159, %149, %135, %130, %80, %77, %73, %69, %47, %40, %30, %27
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local %struct.iio_dummy_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
