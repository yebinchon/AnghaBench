; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_interpolate_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_interpolate_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linear_segments = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.linear_segments*, i32)* @interpolate_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interpolate_value(i64 %0, %struct.linear_segments* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.linear_segments*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.linear_segments* %1, %struct.linear_segments** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %15 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %14, i64 0
  %16 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %21 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %20, i64 0
  %22 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  br label %135

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %26, i64 %29
  %31 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %25, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %35, i64 %38
  %40 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %4, align 8
  br label %135

42:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %75, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 %45, 1
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %50, i64 %52
  %54 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %49, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %58, i64 %60
  %62 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %4, align 8
  br label %135

64:                                               ; preds = %48
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %66, i64 %68
  %70 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %65, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %78

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %43

78:                                               ; preds = %73, %43
  %79 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %79, i64 %82
  %84 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %86, i64 %88
  %90 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %85, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %94, i64 %97
  %99 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %101, i64 %103
  %105 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %100, %106
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %109, i64 %111
  %113 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %108, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @do_div(i32 %120, i64 %121)
  %123 = load %struct.linear_segments*, %struct.linear_segments** %6, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %123, i64 %125
  %127 = getelementptr inbounds %struct.linear_segments, %struct.linear_segments* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %78, %57, %34, %19
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
