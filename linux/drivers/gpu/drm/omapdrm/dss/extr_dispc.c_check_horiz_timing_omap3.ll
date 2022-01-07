; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_check_horiz_timing_omap3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_check_horiz_timing_omap3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i64, i64, i64, i64 }

@check_horiz_timing_omap3.limits = internal constant [3 x i32] [i32 8, i32 10, i32 20], align 4
@.str = private unnamed_addr constant [43 x i8] c"blanking period + ppl = %llu (limit = %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"(nonactive - pos_x) * pcd = %llu max(0, DS - 2) * width = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"nonactive * pcd  = %llu, max(0, DS - 1) * width = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.videomode*, i64, i64, i64, i64, i64, i32)* @check_horiz_timing_omap3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_horiz_timing_omap3(i64 %0, i64 %1, %struct.videomode* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.videomode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store %struct.videomode* %2, %struct.videomode** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* %18, align 8
  %27 = call i32 @DIV_ROUND_UP(i64 %25, i64 %26)
  store i32 %27, i32* %20, align 4
  %28 = load %struct.videomode*, %struct.videomode** %13, align 8
  %29 = getelementptr inbounds %struct.videomode, %struct.videomode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.videomode*, %struct.videomode** %13, align 8
  %32 = getelementptr inbounds %struct.videomode, %struct.videomode* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.videomode*, %struct.videomode** %13, align 8
  %36 = getelementptr inbounds %struct.videomode, %struct.videomode* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load %struct.videomode*, %struct.videomode** %13, align 8
  %40 = getelementptr inbounds %struct.videomode, %struct.videomode* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i64, i64* %17, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %21, align 8
  store i32 0, i32* %24, align 4
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %9
  %49 = load i32, i32* %24, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %24, align 4
  br label %51

51:                                               ; preds = %48, %9
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %24, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %24, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load %struct.videomode*, %struct.videomode** %13, align 8
  %60 = getelementptr inbounds %struct.videomode, %struct.videomode* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.videomode*, %struct.videomode** %13, align 8
  %63 = getelementptr inbounds %struct.videomode, %struct.videomode* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load %struct.videomode*, %struct.videomode** %13, align 8
  %67 = getelementptr inbounds %struct.videomode, %struct.videomode* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i64, i64* %12, align 8
  %71 = mul i64 %69, %70
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @div_u64(i64 %71, i64 %72)
  store i64 %73, i64* %23, align 8
  %74 = load i64, i64* %23, align 8
  %75 = load i32, i32* %24, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* @check_horiz_timing_omap3.limits, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @DSSDBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %78)
  %80 = load i64, i64* %23, align 8
  %81 = load i32, i32* %24, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* @check_horiz_timing_omap3.limits, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ule i64 %80, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %58
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %145

90:                                               ; preds = %58
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i32 0, i32* %10, align 4
  br label %145

94:                                               ; preds = %90
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %14, align 8
  %97 = sub i64 %95, %96
  %98 = load i64, i64* %12, align 8
  %99 = mul i64 %97, %98
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @div_u64(i64 %99, i64 %100)
  store i64 %101, i64* %22, align 8
  %102 = load i64, i64* %22, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sub nsw i32 %103, 2
  %105 = call i64 @max(i32 0, i32 %104)
  %106 = load i64, i64* %15, align 8
  %107 = mul nsw i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @DSSDBG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %102, i32 %108)
  %110 = load i64, i64* %22, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sub nsw i32 %111, 2
  %113 = call i64 @max(i32 0, i32 %112)
  %114 = load i64, i64* %15, align 8
  %115 = mul nsw i64 %113, %114
  %116 = icmp ult i64 %110, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %94
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %145

120:                                              ; preds = %94
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* %12, align 8
  %123 = mul i64 %121, %122
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @div_u64(i64 %123, i64 %124)
  store i64 %125, i64* %22, align 8
  %126 = load i64, i64* %22, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sub nsw i32 %127, 1
  %129 = call i64 @max(i32 0, i32 %128)
  %130 = load i64, i64* %15, align 8
  %131 = mul nsw i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @DSSDBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %126, i32 %132)
  %134 = load i64, i64* %22, align 8
  %135 = load i32, i32* %20, align 4
  %136 = sub nsw i32 %135, 1
  %137 = call i64 @max(i32 0, i32 %136)
  %138 = load i64, i64* %15, align 8
  %139 = mul nsw i64 %137, %138
  %140 = icmp ult i64 %134, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %120
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %10, align 4
  br label %145

144:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %145

145:                                              ; preds = %144, %141, %117, %93, %87
  %146 = load i32, i32* %10, align 4
  ret i32 %146
}

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i64 @div_u64(i64, i64) #1

declare dso_local i32 @DSSDBG(i8*, i64, i32) #1

declare dso_local i64 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
