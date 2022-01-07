; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_pll_get_post_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_pll_get_post_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_8996_post_divider = type { i32, i32, i32, i32 }

@__const.pll_get_post_div.ratio = private unnamed_addr constant [15 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 9, i32 10, i32 12, i32 14, i32 15, i32 20, i32 21, i32 25, i32 28, i32 35], align 16
@__const.pll_get_post_div.hs_divsel = private unnamed_addr constant [15 x i32] [i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 2, i32 9, i32 3, i32 13, i32 10, i32 7, i32 14, i32 11, i32 15], align 16
@__const.pll_get_post_div.tx_band_sel = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 16
@HDMI_VCO_MAX_FREQ = common dso_local global i32 0, align 4
@HDMI_VCO_MIN_FREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_8996_post_divider*, i32)* @pll_get_post_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_get_post_div(%struct.hdmi_8996_post_divider* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_8996_post_divider*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [15 x i32], align 16
  %7 = alloca [15 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [60 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hdmi_8996_post_divider* %0, %struct.hdmi_8996_post_divider** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = bitcast [15 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([15 x i32]* @__const.pll_get_post_div.ratio to i8*), i64 60, i1 false)
  %20 = bitcast [15 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([15 x i32]* @__const.pll_get_post_div.hs_divsel to i8*), i64 60, i1 false)
  %21 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i32]* @__const.pll_get_post_div.tx_band_sel to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %88, %2
  %23 = load i32, i32* @HDMI_VCO_MAX_FREQ, align 4
  store i32 %23, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %24

24:                                               ; preds = %56, %22
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 15
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %35, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %14, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds [60 x i32], [60 x i32]* %9, i64 0, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %28

55:                                               ; preds = %28
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %24

59:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %61, 60
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [60 x i32], [60 x i32]* %9, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* @HDMI_VCO_MIN_FREQ, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %71, %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %60

82:                                               ; preds = %60
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store i32 1, i32* %12, align 4
  br label %22

89:                                               ; preds = %85
  br label %115

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.hdmi_8996_post_divider*, %struct.hdmi_8996_post_divider** %4, align 8
  %93 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = srem i32 %94, 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.hdmi_8996_post_divider*, %struct.hdmi_8996_post_divider** %4, align 8
  %100 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sdiv i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [15 x i32], [15 x i32]* %6, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hdmi_8996_post_divider*, %struct.hdmi_8996_post_divider** %4, align 8
  %107 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sdiv i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [15 x i32], [15 x i32]* %7, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hdmi_8996_post_divider*, %struct.hdmi_8996_post_divider** %4, align 8
  %114 = getelementptr inbounds %struct.hdmi_8996_post_divider, %struct.hdmi_8996_post_divider* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %3, align 4
  br label %118

115:                                              ; preds = %89
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %90
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
