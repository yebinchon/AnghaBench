; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_pll_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_pll_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.gma_limit_t = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.gma_clock_t = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"p1 out of range\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"p out of range\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"m2 out of range\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"m1 out of range\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"m1 <= m2 && m1 != 0\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"m out of range\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"n out of range\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"vco out of range\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"dot out of range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gma_pll_is_valid(%struct.drm_crtc* %0, %struct.gma_limit_t* %1, %struct.gma_clock_t* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.gma_limit_t*, align 8
  %6 = alloca %struct.gma_clock_t*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.gma_limit_t* %1, %struct.gma_limit_t** %5, align 8
  store %struct.gma_clock_t* %2, %struct.gma_clock_t** %6, align 8
  %7 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %8 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %11 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %17 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %21 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15, %3
  %25 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %15
  %27 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %28 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %31 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %29, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %37 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %41 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35, %26
  %45 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %35
  %47 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %48 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %51 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %57 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %61 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55, %46
  %65 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %55
  %67 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %68 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %71 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %69, %73
  br i1 %74, label %84, label %75

75:                                               ; preds = %66
  %76 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %77 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %81 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75, %66
  %85 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %75
  %87 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %88 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %91 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %89, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %96 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94, %86
  %102 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %103 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %106 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %104, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %101
  %111 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %112 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %116 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110, %101
  %120 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %110
  %122 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %123 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %126 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %124, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %121
  %131 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %132 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %136 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %134, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %130, %121
  %140 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %130
  %142 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %143 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %146 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp slt i64 %144, %148
  br i1 %149, label %159, label %150

150:                                              ; preds = %141
  %151 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %152 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %156 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp slt i64 %154, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %150, %141
  %160 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %150
  %162 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %163 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %166 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %164, %168
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load %struct.gma_limit_t*, %struct.gma_limit_t** %5, align 8
  %172 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.gma_clock_t*, %struct.gma_clock_t** %6, align 8
  %176 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %174, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %170, %161
  %180 = call i32 @GMA_PLL_INVALID(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %170
  ret i32 1
}

declare dso_local i32 @GMA_PLL_INVALID(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
