; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_div_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_div_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_div_calc(%struct.dss_device* %0, i64 %1, i64 %2, i32 (i64, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dss_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (i64, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (i64, i8*)* %3, i32 (i64, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %22 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %16, align 8
  %26 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %27 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %5
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* %8, align 8
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %20, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %20, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 %35, %37
  store i64 %38, i64* %15, align 8
  %39 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %40 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i64 @clk_round_rate(i32 %41, i64 %42)
  store i64 %43, i64* %15, align 8
  %44 = load i32 (i64, i8*)*, i32 (i64, i8*)** %10, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 %44(i64 %45, i8* %46)
  store i32 %47, i32* %6, align 4
  br label %109

48:                                               ; preds = %5
  %49 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %50 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %17, align 8
  %54 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %55 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %19, align 4
  %59 = load %struct.dss_device*, %struct.dss_device** %7, align 8
  %60 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @clk_get_rate(i32* %61)
  store i64 %62, i64* %18, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i64, i64* %9, align 8
  br label %68

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i64 [ %66, %65 ], [ 1, %67 ]
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i32, i32* %19, align 4
  %72 = zext i32 %71 to i64
  %73 = mul i64 %70, %72
  %74 = load i64, i64* %9, align 8
  %75 = udiv i64 %73, %74
  %76 = load i64, i64* %17, align 8
  %77 = call i32 @min(i64 %75, i64 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i64, i64* %18, align 8
  %79 = load i32, i32* %19, align 4
  %80 = zext i32 %79 to i64
  %81 = mul i64 %78, %80
  %82 = load i64, i64* %16, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @DIV_ROUND_UP(i64 %81, i32 %83)
  %85 = call i32 @max(i32 %84, i64 1)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %105, %68
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load i64, i64* %18, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @DIV_ROUND_UP(i64 %92, i32 %93)
  %95 = load i32, i32* %19, align 4
  %96 = mul i32 %94, %95
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %15, align 8
  %98 = load i32 (i64, i8*)*, i32 (i64, i8*)** %10, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 %98(i64 %99, i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 1, i32* %6, align 4
  br label %109

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %12, align 4
  br label %87

108:                                              ; preds = %87
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %103, %30
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i64 @clk_get_rate(i32*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
