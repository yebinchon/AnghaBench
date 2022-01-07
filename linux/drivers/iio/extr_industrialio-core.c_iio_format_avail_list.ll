; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_format_avail_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_format_avail_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32, i32)* @iio_format_avail_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iio_format_avail_list(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %76 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %72, %13
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i64, i64* %11, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i64 @__iio_format_value(i8* %21, i64 %24, i32 %25, i32 1, i32* %29)
  %31 = load i64, i64* %11, align 8
  %32 = add nsw i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i64, i64* @EFBIG, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %144

39:                                               ; preds = %18
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %11, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i64 @snprintf(i8* %47, i64 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %52 = load i64, i64* %11, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %11, align 8
  br label %64

54:                                               ; preds = %39
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = load i64, i64* %11, align 8
  %60 = sub nsw i64 %58, %59
  %61 = call i64 @snprintf(i8* %57, i64 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %54, %44
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* @EFBIG, align 8
  %70 = sub nsw i64 0, %69
  store i64 %70, i64* %5, align 8
  br label %144

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %14

75:                                               ; preds = %14
  br label %142

76:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %138, %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sdiv i32 %79, 2
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %141

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i64, i64* @PAGE_SIZE, align 8
  %87 = load i64, i64* %11, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = call i64 @__iio_format_value(i8* %85, i64 %88, i32 %89, i32 2, i32* %94)
  %96 = load i64, i64* %11, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %82
  %102 = load i64, i64* @EFBIG, align 8
  %103 = sub nsw i64 0, %102
  store i64 %103, i64* %5, align 8
  br label %144

104:                                              ; preds = %82
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sdiv i32 %106, 2
  %108 = sub nsw i32 %107, 1
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load i8*, i8** %6, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i64, i64* @PAGE_SIZE, align 8
  %115 = load i64, i64* %11, align 8
  %116 = sub nsw i64 %114, %115
  %117 = call i64 @snprintf(i8* %113, i64 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %118 = load i64, i64* %11, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %11, align 8
  br label %130

120:                                              ; preds = %104
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i64, i64* @PAGE_SIZE, align 8
  %125 = load i64, i64* %11, align 8
  %126 = sub nsw i64 %124, %125
  %127 = call i64 @snprintf(i8* %123, i64 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i64, i64* %11, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %11, align 8
  br label %130

130:                                              ; preds = %120, %110
  %131 = load i64, i64* %11, align 8
  %132 = load i64, i64* @PAGE_SIZE, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i64, i64* @EFBIG, align 8
  %136 = sub nsw i64 0, %135
  store i64 %136, i64* %5, align 8
  br label %144

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %77

141:                                              ; preds = %77
  br label %142

142:                                              ; preds = %141, %75
  %143 = load i64, i64* %11, align 8
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %142, %134, %101, %68, %36
  %145 = load i64, i64* %5, align 8
  ret i64 %145
}

declare dso_local i64 @__iio_format_value(i8*, i64, i32, i32, i32*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
