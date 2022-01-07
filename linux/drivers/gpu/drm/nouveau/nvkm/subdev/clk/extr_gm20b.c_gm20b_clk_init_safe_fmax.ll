; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_init_safe_fmax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_gm20b.c_gm20b_clk_init_safe_fmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm20b_clk = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.nvkm_subdev }
%struct.TYPE_8__ = type { i32, %struct.nvkm_pstate* }
%struct.nvkm_pstate = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.nvkm_subdev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nvkm_volt* }
%struct.nvkm_volt = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }

@nv_clk_src_gpc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to evaluate safe fmax\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"safe fmax @ vmin = %u Khz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gm20b_clk*)* @gm20b_clk_init_safe_fmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm20b_clk_init_safe_fmax(%struct.gm20b_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gm20b_clk*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_volt*, align 8
  %6 = alloca %struct.nvkm_pstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gm20b_clk* %0, %struct.gm20b_clk** %3, align 8
  %12 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %13 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %4, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_volt*, %struct.nvkm_volt** %19, align 8
  store %struct.nvkm_volt* %20, %struct.nvkm_volt** %5, align 8
  %21 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %22 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %26, align 8
  store %struct.nvkm_pstate* %27, %struct.nvkm_pstate** %6, align 8
  %28 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %29 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %35 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %36 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %76, %1
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %44 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %49 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %47
  %59 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %60 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %59, i32 0, i32 1
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.nvkm_volt*, %struct.nvkm_volt** %5, align 8
  %68 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %67, i32 0, i32 1
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %58, %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %41

79:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %108, %79
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %85, i64 %87
  %89 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %84
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.nvkm_pstate*, %struct.nvkm_pstate** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %96, i64 %98
  %100 = getelementptr inbounds %struct.nvkm_pstate, %struct.nvkm_pstate* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @nv_clk_src_gpc, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @max(i32 %95, i32 %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %94, %84
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %80

111:                                              ; preds = %80
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %116 = call i32 @nvkm_error(%struct.nvkm_subdev* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %130

119:                                              ; preds = %111
  %120 = load i32, i32* %10, align 4
  %121 = mul nsw i32 %120, 90
  %122 = sdiv i32 %121, 100
  %123 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %124 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %126 = load %struct.gm20b_clk*, %struct.gm20b_clk** %3, align 8
  %127 = getelementptr inbounds %struct.gm20b_clk, %struct.gm20b_clk* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @nvkm_debug(%struct.nvkm_subdev* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %119, %114
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
