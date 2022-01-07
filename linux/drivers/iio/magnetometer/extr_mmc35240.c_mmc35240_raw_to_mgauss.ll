; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_raw_to_mgauss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_mmc35240.c_mmc35240_raw_to_mgauss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.mmc35240_data = type { i64, i32*, i32* }

@mmc35240_props_table = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc35240_data*, i32, i32*, i32*)* @mmc35240_raw_to_mgauss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc35240_raw_to_mgauss(%struct.mmc35240_data* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc35240_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.mmc35240_data* %0, %struct.mmc35240_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 130
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 130
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 129
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 129
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 128
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 128
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmc35240_props_table, align 8
  %29 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %30 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 130
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 130
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmc35240_props_table, align 8
  %39 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %40 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 129
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 129
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmc35240_props_table, align 8
  %49 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %50 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 128
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 128
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmc35240_props_table, align 8
  %59 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %60 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %114 [
    i32 130, label %66
    i32 129, label %76
    i32 128, label %95
  ]

66:                                               ; preds = %4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 130
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %68, %69
  %71 = mul nsw i32 %70, 1000
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 130
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %71, %73
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %117

76:                                               ; preds = %4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 129
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %78, %79
  %81 = mul nsw i32 %80, 1000
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 129
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %81, %83
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 128
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %86, %87
  %89 = mul nsw i32 %88, 1000
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 128
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %89, %91
  %93 = sub nsw i32 %84, %92
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  br label %117

95:                                               ; preds = %4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 129
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sub nsw i32 %97, %98
  %100 = mul nsw i32 %99, 1000
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 129
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %100, %102
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 128
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  %108 = mul nsw i32 %107, 1000
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 128
  %110 = load i32, i32* %109, align 4
  %111 = sdiv i32 %108, %110
  %112 = add nsw i32 %103, %111
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  br label %117

114:                                              ; preds = %4
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %137

117:                                              ; preds = %95, %76, %66
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %121 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %119, %126
  %128 = load %struct.mmc35240_data*, %struct.mmc35240_data** %6, align 8
  %129 = getelementptr inbounds %struct.mmc35240_data, %struct.mmc35240_data* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %127, %134
  %136 = load i32*, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %117, %114
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
