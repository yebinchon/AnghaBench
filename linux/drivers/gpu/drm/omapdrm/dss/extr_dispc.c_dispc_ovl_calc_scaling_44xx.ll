; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling_44xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling_44xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 (i64, i32, i32, i32, i32, i32)* }
%struct.videomode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot scale width exceeds max line width\0A\00", align 1
@DRM_FORMAT_NV12 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"Not enough bandwidth, too much downscaling (x-decimation factor %d > 4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i64, i64, %struct.videomode*, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* @dispc_ovl_calc_scaling_44xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling_44xx(%struct.dispc_device* %0, i64 %1, i64 %2, %struct.videomode* %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32 %14, i64* %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.dispc_device*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.videomode*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %19, align 8
  store i64 %1, i64* %20, align 8
  store i64 %2, i64* %21, align 8
  store %struct.videomode* %3, %struct.videomode** %22, align 8
  store i32 %4, i32* %23, align 4
  store i32 %5, i32* %24, align 4
  store i32 %6, i32* %25, align 4
  store i32 %7, i32* %26, align 4
  store i64 %8, i64* %27, align 8
  store i32* %9, i32** %28, align 8
  store i32* %10, i32** %29, align 8
  store i32* %11, i32** %30, align 8
  store i32* %12, i32** %31, align 8
  store i32* %13, i32** %32, align 8
  store i32 %14, i32* %33, align 4
  store i64* %15, i64** %34, align 8
  store i32 %16, i32* %35, align 4
  %42 = load i32*, i32** %31, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %38, align 4
  %44 = load i32, i32* %24, align 4
  %45 = load i32*, i32** %32, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %44, %46
  store i32 %47, i32* %39, align 4
  %48 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %49 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %40, align 4
  %53 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %54 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %41, align 4
  %58 = load i32, i32* %35, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %17
  %61 = load i32, i32* %25, align 4
  %62 = load i32, i32* %41, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %37, align 4
  br label %72

64:                                               ; preds = %17
  %65 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %66 = call i32 @dispc_core_clk_rate(%struct.dispc_device* %65)
  %67 = load i64, i64* %20, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %25, align 4
  %70 = call i32 @DIV_ROUND_UP(i32 %68, i32 %69)
  %71 = sdiv i32 %66, %70
  store i32 %71, i32* %37, align 4
  br label %72

72:                                               ; preds = %64, %60
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %37, align 4
  %75 = call i32 @DIV_ROUND_UP(i32 %73, i32 %74)
  %76 = load i32*, i32** %31, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %31, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %38, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load i32*, i32** %31, align 8
  %83 = load i32, i32* %82, align 4
  br label %86

84:                                               ; preds = %72
  %85 = load i32, i32* %38, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %83, %81 ], [ %85, %84 ]
  %88 = load i32*, i32** %31, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %31, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %29, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %18, align 4
  br label %156

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %23, align 4
  %100 = load i32*, i32** %31, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %99, %101
  store i32 %102, i32* %36, align 4
  br label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %31, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %29, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp sle i32 %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i32, i32* %36, align 4
  %111 = load i32, i32* %40, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32*, i32** %31, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %113, %109, %103
  %119 = phi i1 [ false, %109 ], [ false, %103 ], [ %117, %113 ]
  br i1 %119, label %98, label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %36, align 4
  %122 = load i32, i32* %40, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %18, align 4
  br label %156

128:                                              ; preds = %120
  %129 = load i32*, i32** %31, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 4
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i64, i64* %27, align 8
  %134 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i32*, i32** %31, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %18, align 4
  br label %156

142:                                              ; preds = %132, %128
  %143 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %144 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i64 (i64, i32, i32, i32, i32, i32)*, i64 (i64, i32, i32, i32, i32, i32)** %146, align 8
  %148 = load i64, i64* %20, align 8
  %149 = load i32, i32* %36, align 4
  %150 = load i32, i32* %39, align 4
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %26, align 4
  %153 = load i32, i32* %35, align 4
  %154 = call i64 %147(i64 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i64*, i64** %34, align 8
  store i64 %154, i64* %155, align 8
  store i32 0, i32* %18, align 4
  br label %156

156:                                              ; preds = %142, %136, %124, %94
  %157 = load i32, i32* %18, align 4
  ret i32 %157
}

declare dso_local i32 @dispc_core_clk_rate(%struct.dispc_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
