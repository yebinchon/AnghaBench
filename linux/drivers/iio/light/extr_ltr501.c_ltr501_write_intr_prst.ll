; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_intr_prst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_write_intr_prst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltr501_data = type { i64, i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltr501_data*, i32, i32, i32)* @ltr501_write_intr_prst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_write_intr_prst(%struct.ltr501_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ltr501_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ltr501_data* %0, %struct.ltr501_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %126

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 1000000
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %123 [
    i32 129, label %29
    i32 128, label %76
  ]

29:                                               ; preds = %22
  %30 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %31 = call i32 @ltr501_als_read_samp_period(%struct.ltr501_data* %30, i32* %11)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %126

36:                                               ; preds = %29
  %37 = load i64, i64* %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %126

44:                                               ; preds = %36
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @DIV_ROUND_UP(i64 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 15
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %126

56:                                               ; preds = %50
  %57 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %58 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %57, i32 0, i32 4
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %61 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @regmap_field_write(i32 %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %66 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %65, i32 0, i32 4
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %73 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %56
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %126

76:                                               ; preds = %22
  %77 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %78 = call i32 @ltr501_ps_read_samp_period(%struct.ltr501_data* %77, i32* %11)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %126

83:                                               ; preds = %76
  %84 = load i64, i64* %13, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %126

91:                                               ; preds = %83
  %92 = load i64, i64* %13, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @DIV_ROUND_UP(i64 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = icmp sgt i32 %98, 15
  br i1 %99, label %100, label %103

100:                                              ; preds = %97, %91
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %126

103:                                              ; preds = %97
  %104 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %105 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %104, i32 0, i32 2
  %106 = call i32 @mutex_lock(i32* %105)
  %107 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %108 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @regmap_field_write(i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %113 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %112, i32 0, i32 2
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %10, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %103
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %120 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %103
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %5, align 4
  br label %126

123:                                              ; preds = %22
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %121, %100, %88, %81, %74, %53, %41, %34, %19
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @ltr501_als_read_samp_period(%struct.ltr501_data*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ltr501_ps_read_samp_period(%struct.ltr501_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
