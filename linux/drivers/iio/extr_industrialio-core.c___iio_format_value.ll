; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c___iio_format_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c___iio_format_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"-%d.%06u%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" dB\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%d.%06u%s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-%d.%09u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d.%09u\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32, i32*)* @__iio_format_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iio_format_value(i8* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %163 [
    i32 132, label %19
    i32 129, label %26
    i32 130, label %27
    i32 128, label %62
    i32 134, label %89
    i32 133, label %111
    i32 131, label %130
  ]

19:                                               ; preds = %5
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %20, i64 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %6, align 4
  br label %164

26:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %27

27:                                               ; preds = %5, %26
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @abs(i32 %37) #3
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %47 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %42, i8* %46)
  store i32 %47, i32* %6, align 4
  br label %164

48:                                               ; preds = %27
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %61 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %49, i64 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %56, i8* %60)
  store i32 %61, i32* %6, align 4
  br label %164

62:                                               ; preds = %5
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @abs(i32 %72) #3
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %68, i64 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %73, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %164

79:                                               ; preds = %62
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %80, i64 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %84, i32 %87)
  store i32 %88, i32* %6, align 4
  br label %164

89:                                               ; preds = %5
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %93, 1000000000
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @div_s64(i64 %94, i32 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @div_s64_rem(i64 %102, i64 1000000000, i32* %14)
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @abs(i32 %108) #3
  %110 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %105, i64 %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32 %109)
  store i32 %110, i32* %6, align 4
  br label %164

111:                                              ; preds = %5
  %112 = load i32*, i32** %11, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = mul nsw i64 %115, 1000000000
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @shift_right(i64 %116, i32 %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i64 @div_s64_rem(i64 %121, i64 1000000000, i32* %14)
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %13, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @abs(i32 %127) #3
  %129 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %124, i64 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %128)
  store i32 %129, i32* %6, align 4
  br label %164

130:                                              ; preds = %5
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %131

131:                                              ; preds = %158, %130
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %131
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i64, i64* %8, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = sub i64 %140, %142
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %139, i64 %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %8, align 8
  %155 = icmp uge i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %135
  br label %161

157:                                              ; preds = %135
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %131

161:                                              ; preds = %156, %131
  %162 = load i32, i32* %17, align 4
  store i32 %162, i32* %6, align 4
  br label %164

163:                                              ; preds = %5
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %163, %161, %111, %89, %79, %67, %48, %32, %19
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @div_s64(i64, i32) #1

declare dso_local i64 @div_s64_rem(i64, i64, i32*) #1

declare dso_local i64 @shift_right(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
