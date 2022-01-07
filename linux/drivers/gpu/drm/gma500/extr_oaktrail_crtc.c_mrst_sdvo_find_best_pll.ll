; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_sdvo_find_best_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_sdvo_find_best_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_limit_t = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.gma_clock_t = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_limit_t*, %struct.drm_crtc*, i32, i32, %struct.gma_clock_t*)* @mrst_sdvo_find_best_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrst_sdvo_find_best_pll(%struct.gma_limit_t* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.gma_clock_t* %4) #0 {
  %6 = alloca %struct.gma_limit_t*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gma_clock_t*, align 8
  %11 = alloca %struct.gma_clock_t, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gma_limit_t* %0, %struct.gma_limit_t** %6, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.gma_clock_t* %4, %struct.gma_clock_t** %10, align 8
  store i32 100000, i32* %15, align 4
  %16 = load %struct.gma_clock_t*, %struct.gma_clock_t** %10, align 8
  %17 = call i32 @memset(%struct.gma_clock_t* %16, i32 0, i32 16)
  %18 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %19 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %138, %5
  %24 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %27 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %25, %29
  br i1 %30, label %31, label %142

31:                                               ; preds = %23
  %32 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %33 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %129, %31
  %38 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %41 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sle i32 %39, %43
  br i1 %44, label %45, label %133

45:                                               ; preds = %37
  %46 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %47 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %124, %45
  %52 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %55 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %53, %57
  br i1 %58, label %59, label %128

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %63 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %61, %65
  %67 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %68, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %74 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %128

79:                                               ; preds = %59
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %82 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %124

87:                                               ; preds = %79
  %88 = load i32, i32* %9, align 4
  %89 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %88, %90
  %92 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %93, %95
  %97 = sdiv i32 %91, %96
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 10000
  %100 = load i32, i32* %13, align 4
  %101 = sdiv i32 %99, %100
  %102 = sub nsw i32 10000, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %87
  br label %128

108:                                              ; preds = %87
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %15, align 4
  %120 = load %struct.gma_clock_t*, %struct.gma_clock_t** %10, align 8
  %121 = bitcast %struct.gma_clock_t* %120 to i8*
  %122 = bitcast %struct.gma_clock_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 16, i1 false)
  br label %123

123:                                              ; preds = %118, %114
  br label %124

124:                                              ; preds = %123, %86
  %125 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %51

128:                                              ; preds = %107, %78, %51
  br label %129

129:                                              ; preds = %128
  %130 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %37

133:                                              ; preds = %37
  %134 = load i32, i32* %15, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %142

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %23

142:                                              ; preds = %136, %23
  %143 = load i32, i32* %15, align 4
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  ret i32 %145
}

declare dso_local i32 @memset(%struct.gma_clock_t*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
