; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_write_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_write_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.isl29501_private = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@U16_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@ISL29501_MAX_EXP_VAL = common dso_local global i32 0, align 4
@COEFF_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"found exp of corr(%d) = %d\0A\00", align 1
@REG_PHASE_EXP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @isl29501_write_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_write_ext(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.isl29501_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %23 = call %struct.isl29501_private* @iio_priv(%struct.iio_dev* %22)
  store %struct.isl29501_private* %23, %struct.isl29501_private** %12, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @kstrtouint(i8* %26, i32 10, i32* %14)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %6, align 4
  br label %148

32:                                               ; preds = %5
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %142 [
    i32 128, label %34
    i32 130, label %51
    i32 129, label %51
    i32 132, label %51
    i32 131, label %51
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @U16_MAX, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %148

41:                                               ; preds = %34
  %42 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @isl29501_register_write(%struct.isl29501_private* %42, i32 %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %6, align 4
  br label %148

50:                                               ; preds = %41
  br label %145

51:                                               ; preds = %32, %32, %32, %32
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @U8_MAX, align 4
  %54 = load i32, i32* @ISL29501_MAX_EXP_VAL, align 4
  %55 = shl i32 %53, %54
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %148

60:                                               ; preds = %51
  %61 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @isl29501_set_shadow_coeff(%struct.isl29501_private* %61, i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %6, align 4
  br label %148

69:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %97, %69
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @COEFF_MAX, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70
  %75 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %76 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* @ISL29501_MAX_EXP_VAL, align 4
  %84 = load i32, i32* @U8_MAX, align 4
  %85 = udiv i32 %84, 2
  %86 = call i32 @isl29501_find_corr_exp(i32 %82, i32 %83, i32 %85)
  store i32 %86, i32* %19, align 4
  %87 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %88 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %19, align 4
  %96 = call i32 @max(i32 %94, i32 %95)
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %74
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %70

100:                                              ; preds = %70
  store i32 0, i32* %17, align 4
  br label %101

101:                                              ; preds = %129, %100
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* @COEFF_MAX, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %132

105:                                              ; preds = %101
  %106 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %107 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  br label %129

116:                                              ; preds = %105
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %15, align 4
  %119 = ashr i32 %117, %118
  store i32 %119, i32* %21, align 4
  %120 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @isl29501_write_coeff(%struct.isl29501_private* %120, i32 %121, i32 %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* %16, align 4
  store i32 %127, i32* %6, align 4
  br label %148

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %115
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %101

132:                                              ; preds = %101
  %133 = load %struct.isl29501_private*, %struct.isl29501_private** %12, align 8
  %134 = load i32, i32* @REG_PHASE_EXP, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @isl29501_register_write(%struct.isl29501_private* %133, i32 %134, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %6, align 4
  br label %148

141:                                              ; preds = %132
  br label %145

142:                                              ; preds = %32
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %148

145:                                              ; preds = %141, %50
  %146 = load i64, i64* %11, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %145, %142, %139, %126, %67, %57, %48, %38, %30
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local %struct.isl29501_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @isl29501_register_write(%struct.isl29501_private*, i32, i32) #1

declare dso_local i32 @isl29501_set_shadow_coeff(%struct.isl29501_private*, i32, i32) #1

declare dso_local i32 @isl29501_find_corr_exp(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @isl29501_write_coeff(%struct.isl29501_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
