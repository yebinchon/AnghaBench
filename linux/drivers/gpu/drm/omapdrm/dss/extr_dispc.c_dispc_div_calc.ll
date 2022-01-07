; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_div_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_div_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_div_calc(%struct.dispc_device* %0, i64 %1, i64 %2, i64 %3, i64 (i32, i32, i64, i64, i8*)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dispc_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64 (i32, i32, i64, i64, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 (i32, i32, i64, i64, i8*)* %4, i64 (i32, i32, i64, i64, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %25, align 4
  %27 = load %struct.dispc_device*, %struct.dispc_device** %8, align 8
  %28 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %23, align 8
  store i64 255, i64* %24, align 8
  %32 = load %struct.dispc_device*, %struct.dispc_device** %8, align 8
  %33 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @dss_get_max_fck_rate(i32 %34)
  store i64 %35, i64* %22, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = load i64, i64* %10, align 8
  br label %41

40:                                               ; preds = %6
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i64 [ %39, %38 ], [ 1, %40 ]
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  br label %49

47:                                               ; preds = %41
  %48 = load i64, i64* @ULONG_MAX, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %22, align 8
  %53 = call i32 @DIV_ROUND_UP(i64 %51, i64 %52)
  %54 = call i32 @max(i32 %53, i64 1)
  store i32 %54, i32* %15, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = udiv i64 %55, %56
  %58 = call i32 @min(i64 %57, i64 255)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %121, %49
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %124

64:                                               ; preds = %60
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %65, %67
  store i64 %68, i64* %21, align 8
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @DIV_ROUND_UP(i64 %69, i64 %70)
  %72 = load i64, i64* %23, align 8
  %73 = call i32 @max(i32 %71, i64 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i64, i64* %21, align 8
  %75 = load i64, i64* %10, align 8
  %76 = udiv i64 %74, %75
  %77 = load i64, i64* %24, align 8
  %78 = call i32 @min(i64 %76, i64 %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %18, align 4
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %117, %64
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %80
  %85 = load i64, i64* %21, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %85, %87
  store i64 %88, i64* %20, align 8
  %89 = load %struct.dispc_device*, %struct.dispc_device** %8, align 8
  %90 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %91 = call i64 @dispc_has_feature(%struct.dispc_device* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.dispc_device*, %struct.dispc_device** %8, align 8
  %95 = call i64 @dispc_core_clk_rate(%struct.dispc_device* %94)
  store i64 %95, i64* %26, align 8
  br label %98

96:                                               ; preds = %84
  %97 = load i64, i64* %21, align 8
  store i64 %97, i64* %26, align 8
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i64, i64* %26, align 8
  %100 = load i64, i64* %20, align 8
  %101 = load i32, i32* %25, align 4
  %102 = zext i32 %101 to i64
  %103 = mul i64 %100, %102
  %104 = icmp ult i64 %99, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %117

106:                                              ; preds = %98
  %107 = load i64 (i32, i32, i64, i64, i8*)*, i64 (i32, i32, i64, i64, i8*)** %12, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* %20, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = call i64 %107(i32 %108, i32 %109, i64 %110, i64 %111, i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  store i32 1, i32* %7, align 4
  br label %125

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %80

120:                                              ; preds = %80
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %60

124:                                              ; preds = %60
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %115
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i64 @dss_get_max_fck_rate(i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i64 @dispc_core_clk_rate(%struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
