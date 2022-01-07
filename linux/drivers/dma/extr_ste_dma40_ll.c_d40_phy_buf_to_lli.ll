; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_phy_buf_to_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_phy_buf_to_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_phy_lli = type { i32 }
%struct.stedma40_half_channel_info = type { i32 }

@LLI_LAST_LINK = common dso_local global i64 0, align 8
@LLI_ADDR_INC = common dso_local global i64 0, align 8
@LLI_TERM_INT = common dso_local global i64 0, align 8
@LLI_CYCLIC = common dso_local global i64 0, align 8
@D40_LLI_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d40_phy_lli* (%struct.d40_phy_lli*, i32, i32, i32, i32, i32, %struct.stedma40_half_channel_info*, %struct.stedma40_half_channel_info*, i64)* @d40_phy_buf_to_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d40_phy_lli* @d40_phy_buf_to_lli(%struct.d40_phy_lli* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.stedma40_half_channel_info* %6, %struct.stedma40_half_channel_info* %7, i64 %8) #0 {
  %10 = alloca %struct.d40_phy_lli*, align 8
  %11 = alloca %struct.d40_phy_lli*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.stedma40_half_channel_info*, align 8
  %18 = alloca %struct.stedma40_half_channel_info*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.d40_phy_lli* %0, %struct.d40_phy_lli** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.stedma40_half_channel_info* %6, %struct.stedma40_half_channel_info** %17, align 8
  store %struct.stedma40_half_channel_info* %7, %struct.stedma40_half_channel_info** %18, align 8
  store i64 %8, i64* %19, align 8
  %28 = load i64, i64* %19, align 8
  %29 = load i64, i64* @LLI_LAST_LINK, align 8
  %30 = and i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %20, align 4
  %32 = load i64, i64* %19, align 8
  %33 = load i64, i64* @LLI_ADDR_INC, align 8
  %34 = and i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %21, align 4
  %36 = load i64, i64* %19, align 8
  %37 = load i64, i64* @LLI_TERM_INT, align 8
  %38 = and i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %22, align 4
  %40 = load i64, i64* %19, align 8
  %41 = load i64, i64* @LLI_CYCLIC, align 8
  %42 = and i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %23, align 4
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %25, align 4
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %46 = load i32, i32* %22, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %9
  %49 = load i64, i64* @LLI_TERM_INT, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %19, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %19, align 8
  br label %53

53:                                               ; preds = %48, %9
  br label %54

54:                                               ; preds = %118, %53
  %55 = load i32, i32* %26, align 4
  %56 = load %struct.stedma40_half_channel_info*, %struct.stedma40_half_channel_info** %17, align 8
  %57 = getelementptr inbounds %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.stedma40_half_channel_info*, %struct.stedma40_half_channel_info** %18, align 8
  %60 = getelementptr inbounds %struct.stedma40_half_channel_info, %struct.stedma40_half_channel_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @d40_seg_size(i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %27, align 4
  %63 = load i32, i32* %27, align 4
  %64 = load i32, i32* %26, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %26, align 4
  %66 = load i32, i32* %26, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %54
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i64, i64* @LLI_TERM_INT, align 8
  %73 = load i64, i64* %19, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %19, align 8
  br label %75

75:                                               ; preds = %71, %68, %54
  %76 = load i32, i32* %26, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %23, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  br label %87

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i32 [ %85, %84 ], [ 0, %86 ]
  store i32 %88, i32* %25, align 4
  br label %96

89:                                               ; preds = %78, %75
  %90 = load i32, i32* %25, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @D40_LLI_ALIGN, align 4
  %95 = call i32 @ALIGN(i32 %93, i32 %94)
  store i32 %95, i32* %25, align 4
  br label %96

96:                                               ; preds = %89, %87
  %97 = load %struct.d40_phy_lli*, %struct.d40_phy_lli** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %27, align 4
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.stedma40_half_channel_info*, %struct.stedma40_half_channel_info** %17, align 8
  %103 = load i64, i64* %19, align 8
  %104 = call i32 @d40_phy_fill_lli(%struct.d40_phy_lli* %97, i32 %98, i32 %99, i32 %100, i32 %101, %struct.stedma40_half_channel_info* %102, i64 %103)
  store i32 %104, i32* %24, align 4
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %123

108:                                              ; preds = %96
  %109 = load %struct.d40_phy_lli*, %struct.d40_phy_lli** %11, align 8
  %110 = getelementptr inbounds %struct.d40_phy_lli, %struct.d40_phy_lli* %109, i32 1
  store %struct.d40_phy_lli* %110, %struct.d40_phy_lli** %11, align 8
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %26, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %54, label %121

121:                                              ; preds = %118
  %122 = load %struct.d40_phy_lli*, %struct.d40_phy_lli** %11, align 8
  store %struct.d40_phy_lli* %122, %struct.d40_phy_lli** %10, align 8
  br label %124

123:                                              ; preds = %107
  store %struct.d40_phy_lli* null, %struct.d40_phy_lli** %10, align 8
  br label %124

124:                                              ; preds = %123, %121
  %125 = load %struct.d40_phy_lli*, %struct.d40_phy_lli** %10, align 8
  ret %struct.d40_phy_lli* %125
}

declare dso_local i32 @d40_seg_size(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @d40_phy_fill_lli(%struct.d40_phy_lli*, i32, i32, i32, i32, %struct.stedma40_half_channel_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
