; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_set_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_rm3100-core.c_rm3100_set_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64, i32* }
%struct.rm3100_data = type { i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@RM3100_REG_CC_X = common dso_local global i32 0, align 4
@RM3100_SAMP_NUM = common dso_local global i32 0, align 4
@rm3100_samp_rates = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@RM3100_REG_TMRC = common dso_local global i32 0, align 4
@RM3100_TMRC_OFFSET = common dso_local global i32 0, align 4
@INDIO_BUFFER_TRIGGERED = common dso_local global i64 0, align 8
@RM3100_REG_CMM = common dso_local global i32 0, align 4
@RM3100_CMM_AXIS_SHIFT = common dso_local global i32 0, align 4
@RM3100_CMM_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @rm3100_set_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm3100_set_samp_freq(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rm3100_data*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.rm3100_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.rm3100_data* %14, %struct.rm3100_data** %8, align 8
  %15 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %16 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %15, i32 0, i32 2
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %9, align 8
  %18 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %19 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.regmap*, %struct.regmap** %9, align 8
  %22 = load i32, i32* @RM3100_REG_CC_X, align 4
  %23 = call i32 @regmap_read(%struct.regmap* %21, i32 %22, i32* %10)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %147

27:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @RM3100_SAMP_NUM, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32**, i32*** @rm3100_samp_rates, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %33, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32**, i32*** @rm3100_samp_rates, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %28

57:                                               ; preds = %52, %28
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @RM3100_SAMP_NUM, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %147

64:                                               ; preds = %57
  %65 = load %struct.regmap*, %struct.regmap** %9, align 8
  %66 = load i32, i32* @RM3100_REG_TMRC, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @RM3100_TMRC_OFFSET, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @regmap_write(%struct.regmap* %65, i32 %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %147

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 600
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 200
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %82 = call i32 @rm3100_set_cycle_count(%struct.rm3100_data* %81, i32 100)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %147

86:                                               ; preds = %80
  br label %101

87:                                               ; preds = %77, %74
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 600
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 100
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %95 = call i32 @rm3100_set_cycle_count(%struct.rm3100_data* %94, i32 200)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %147

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %90, %87
  br label %101

101:                                              ; preds = %100, %86
  %102 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %103 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @INDIO_BUFFER_TRIGGERED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %101
  %108 = load %struct.regmap*, %struct.regmap** %9, align 8
  %109 = load i32, i32* @RM3100_REG_CMM, align 4
  %110 = call i32 @regmap_write(%struct.regmap* %108, i32 %109, i32 0)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %147

114:                                              ; preds = %107
  %115 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %116 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %115, i32 0, i32 2
  %117 = load %struct.regmap*, %struct.regmap** %116, align 8
  %118 = load i32, i32* @RM3100_REG_CMM, align 4
  %119 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %120 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 7
  %124 = load i32, i32* @RM3100_CMM_AXIS_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* @RM3100_CMM_START, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @regmap_write(%struct.regmap* %117, i32 %118, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %114
  br label %147

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %101
  %134 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %135 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %134, i32 0, i32 1
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32**, i32*** @rm3100_samp_rates, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %143, 2
  %145 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %146 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  store i32 0, i32* %4, align 4
  br label %152

147:                                              ; preds = %131, %113, %98, %85, %73, %61, %26
  %148 = load %struct.rm3100_data*, %struct.rm3100_data** %8, align 8
  %149 = getelementptr inbounds %struct.rm3100_data, %struct.rm3100_data* %148, i32 0, i32 1
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %147, %133
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.rm3100_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @rm3100_set_cycle_count(%struct.rm3100_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
