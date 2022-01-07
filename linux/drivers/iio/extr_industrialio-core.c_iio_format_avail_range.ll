; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_format_avail_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_format_avail_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@EFBIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32)* @iio_format_avail_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iio_format_avail_range(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = call i64 @snprintf(i8* %10, i64 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %74 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %70, %14
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %73

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i64, i64* %9, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i64 @__iio_format_value(i8* %21, i64 %24, i32 %25, i32 1, i32* %29)
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i64, i64* @EFBIG, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %4, align 8
  br label %137

39:                                               ; preds = %18
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* @PAGE_SIZE, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub nsw i64 %46, %47
  %49 = call i64 @snprintf(i8* %45, i64 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %9, align 8
  br label %62

52:                                               ; preds = %39
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub nsw i64 %56, %57
  %59 = call i64 @snprintf(i8* %55, i64 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %52, %42
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* @EFBIG, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %4, align 8
  br label %137

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %15

73:                                               ; preds = %15
  br label %135

74:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %131, %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %134

78:                                               ; preds = %75
  %79 = load i8*, i8** %5, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* @PAGE_SIZE, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub nsw i64 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %87, 2
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = call i64 @__iio_format_value(i8* %81, i64 %84, i32 %85, i32 2, i32* %90)
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @PAGE_SIZE, align 8
  %96 = icmp sge i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %78
  %98 = load i64, i64* @EFBIG, align 8
  %99 = sub nsw i64 0, %98
  store i64 %99, i64* %4, align 8
  br label %137

100:                                              ; preds = %78
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i8*, i8** %5, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i64, i64* @PAGE_SIZE, align 8
  %108 = load i64, i64* %9, align 8
  %109 = sub nsw i64 %107, %108
  %110 = call i64 @snprintf(i8* %106, i64 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i64, i64* %9, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %123

113:                                              ; preds = %100
  %114 = load i8*, i8** %5, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i64, i64* @PAGE_SIZE, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub nsw i64 %117, %118
  %120 = call i64 @snprintf(i8* %116, i64 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i64, i64* %9, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %113, %103
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* @PAGE_SIZE, align 8
  %126 = icmp sge i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i64, i64* @EFBIG, align 8
  %129 = sub nsw i64 0, %128
  store i64 %129, i64* %4, align 8
  br label %137

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %75

134:                                              ; preds = %75
  br label %135

135:                                              ; preds = %134, %73
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %4, align 8
  br label %137

137:                                              ; preds = %135, %127, %97, %66, %36
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

declare dso_local i64 @snprintf(i8*, i64, i8*) #1

declare dso_local i64 @__iio_format_value(i8*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
