; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling_24xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_calc_scaling_24xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 (i64, i32, i32, i32, i32, i32)* }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to find scaling settings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Cannot scale max input width exceeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i64, i64, %struct.videomode*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* @dispc_ovl_calc_scaling_24xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling_24xx(%struct.dispc_device* %0, i64 %1, i64 %2, %struct.videomode* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32 %14, i64* %15, i32 %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.dispc_device*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.videomode*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
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
  store %struct.dispc_device* %0, %struct.dispc_device** %19, align 8
  store i64 %1, i64* %20, align 8
  store i64 %2, i64* %21, align 8
  store %struct.videomode* %3, %struct.videomode** %22, align 8
  store i32 %4, i32* %23, align 4
  store i32 %5, i32* %24, align 4
  store i32 %6, i32* %25, align 4
  store i32 %7, i32* %26, align 4
  store i32 %8, i32* %27, align 4
  store i32* %9, i32** %28, align 8
  store i32* %10, i32** %29, align 8
  store i32* %11, i32** %30, align 8
  store i32* %12, i32** %31, align 8
  store i32* %13, i32** %32, align 8
  store i32 %14, i32* %33, align 4
  store i64* %15, i64** %34, align 8
  store i32 %16, i32* %35, align 4
  %41 = load i32*, i32** %31, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %32, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @min(i32 %42, i32 %44)
  store i32 %45, i32* %39, align 4
  %46 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %47 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %40, align 4
  %51 = load i32*, i32** %28, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %137, %17
  %53 = load i32, i32* %24, align 4
  %54 = load i32*, i32** %32, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %53, %55
  store i32 %56, i32* %38, align 4
  %57 = load i32, i32* %23, align 4
  %58 = load i32*, i32** %31, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %57, %59
  store i32 %60, i32* %37, align 4
  %61 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %62 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64 (i64, i32, i32, i32, i32, i32)*, i64 (i64, i32, i32, i32, i32, i32)** %64, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i32, i32* %37, align 4
  %68 = load i32, i32* %38, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %26, align 4
  %71 = load i32, i32* %35, align 4
  %72 = call i64 %65(i64 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i64*, i64** %34, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i32, i32* %37, align 4
  %75 = load i32, i32* %40, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %52
  %78 = load i64*, i64** %34, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i64*, i64** %34, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.dispc_device*, %struct.dispc_device** %19, align 8
  %85 = call i64 @dispc_core_clk_rate(%struct.dispc_device* %84)
  %86 = icmp ugt i64 %83, %85
  br label %87

87:                                               ; preds = %81, %77, %52
  %88 = phi i1 [ true, %77 ], [ true, %52 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %36, align 4
  %90 = load i32, i32* %36, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %87
  %93 = load i32*, i32** %31, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %32, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* %39, align 4
  %100 = load i32*, i32** %31, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %32, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %120

104:                                              ; preds = %92
  %105 = load i32*, i32** %31, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %32, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @swap(i32 %106, i32 %108)
  %110 = load i32*, i32** %31, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %32, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load i32*, i32** %31, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %115, %104
  br label %120

120:                                              ; preds = %119, %98
  br label %121

121:                                              ; preds = %120, %87
  br label %122

122:                                              ; preds = %121
  %123 = load i32*, i32** %31, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %29, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp sle i32 %124, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i32*, i32** %32, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %30, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp sle i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* %36, align 4
  %136 = icmp ne i32 %135, 0
  br label %137

137:                                              ; preds = %134, %128, %122
  %138 = phi i1 [ false, %128 ], [ false, %122 ], [ %136, %134 ]
  br i1 %138, label %52, label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %36, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = call i32 @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %18, align 4
  br label %155

146:                                              ; preds = %139
  %147 = load i32, i32* %37, align 4
  %148 = load i32, i32* %40, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = call i32 @DSSERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %18, align 4
  br label %155

154:                                              ; preds = %146
  store i32 0, i32* %18, align 4
  br label %155

155:                                              ; preds = %154, %150, %142
  %156 = load i32, i32* %18, align 4
  ret i32 %156
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @dispc_core_clk_rate(%struct.dispc_device*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
