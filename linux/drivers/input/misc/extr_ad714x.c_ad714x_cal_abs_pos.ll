; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_cal_abs_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_cal_abs_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*, i32, i32, i32, i32)* @ad714x_cal_abs_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_cal_abs_pos(%struct.ad714x_chip* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ad714x_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %5
  %17 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %18 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %26 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %33 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %31, %39
  store i32 %40, i32* %12, align 4
  br label %153

41:                                               ; preds = %5
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %41
  %46 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %47 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = mul nsw i32 %52, %55
  %57 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %58 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = mul nsw i32 %64, %68
  %70 = add nsw i32 %56, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %72 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %79 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %77, %85
  store i32 %86, i32* %12, align 4
  br label %152

87:                                               ; preds = %41
  %88 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %89 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %95, %96
  %98 = mul nsw i32 %94, %97
  %99 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %100 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %107, %108
  %110 = sub nsw i32 %109, 1
  %111 = mul nsw i32 %106, %110
  %112 = add nsw i32 %98, %111
  %113 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %114 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %121, %122
  %124 = add nsw i32 %123, 1
  %125 = mul nsw i32 %120, %124
  %126 = add nsw i32 %112, %125
  store i32 %126, i32* %11, align 4
  %127 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %128 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %135 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %133, %141
  %143 = load %struct.ad714x_chip*, %struct.ad714x_chip** %6, align 8
  %144 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %142, %150
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %87, %45
  br label %153

153:                                              ; preds = %152, %16
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sub nsw i32 %155, %156
  %158 = sdiv i32 %154, %157
  %159 = load i32, i32* %11, align 4
  %160 = mul nsw i32 %158, %159
  %161 = load i32, i32* %12, align 4
  %162 = sdiv i32 %160, %161
  ret i32 %162
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
