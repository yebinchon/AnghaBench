; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_wm_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_wm_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_hubbub_wm = type { %struct.dcn_hubbub_wm_set* }
%struct.dcn_hubbub_wm_set = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.dcn20_hubbub = type { i32 }

@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub2_wm_read_state(%struct.hubbub* %0, %struct.dcn_hubbub_wm* %1) #0 {
  %3 = alloca %struct.hubbub*, align 8
  %4 = alloca %struct.dcn_hubbub_wm*, align 8
  %5 = alloca %struct.dcn20_hubbub*, align 8
  %6 = alloca %struct.dcn_hubbub_wm_set*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %3, align 8
  store %struct.dcn_hubbub_wm* %1, %struct.dcn_hubbub_wm** %4, align 8
  %7 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %8 = call %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub* %7)
  store %struct.dcn20_hubbub* %8, %struct.dcn20_hubbub** %5, align 8
  %9 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %10 = call i32 @memset(%struct.dcn_hubbub_wm* %9, i32 0, i32 8)
  %11 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %12 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %11, i32 0, i32 0
  %13 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %12, align 8
  %14 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %13, i64 0
  store %struct.dcn_hubbub_wm_set* %14, %struct.dcn_hubbub_wm_set** %6, align 8
  %15 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %16 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A, align 4
  %18 = call i8* @REG_READ(i32 %17)
  %19 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %20 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A, align 4
  %22 = call i64 @REG(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A, align 4
  %26 = call i8* @REG_READ(i32 %25)
  %27 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %28 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %31 = call i64 @REG(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %35 = call i8* @REG_READ(i32 %34)
  %36 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %37 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %39 = call i8* @REG_READ(i32 %38)
  %40 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %41 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %33, %29
  %43 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A, align 4
  %44 = call i8* @REG_READ(i32 %43)
  %45 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %46 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %48 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %47, i32 0, i32 0
  %49 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %48, align 8
  %50 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %49, i64 1
  store %struct.dcn_hubbub_wm_set* %50, %struct.dcn_hubbub_wm_set** %6, align 8
  %51 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %52 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %54 = call i8* @REG_READ(i32 %53)
  %55 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %56 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B, align 4
  %58 = call i64 @REG(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %42
  %61 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B, align 4
  %62 = call i8* @REG_READ(i32 %61)
  %63 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %64 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %42
  %66 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %67 = call i64 @REG(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %71 = call i8* @REG_READ(i32 %70)
  %72 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %73 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %75 = call i8* @REG_READ(i32 %74)
  %76 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %77 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %69, %65
  %79 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %80 = call i8* @REG_READ(i32 %79)
  %81 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %82 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %84 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %83, i32 0, i32 0
  %85 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %84, align 8
  %86 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %85, i64 2
  store %struct.dcn_hubbub_wm_set* %86, %struct.dcn_hubbub_wm_set** %6, align 8
  %87 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %88 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %87, i32 0, i32 0
  store i32 2, i32* %88, align 8
  %89 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %90 = call i8* @REG_READ(i32 %89)
  %91 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %92 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C, align 4
  %94 = call i64 @REG(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %78
  %97 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C, align 4
  %98 = call i8* @REG_READ(i32 %97)
  %99 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %100 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %96, %78
  %102 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %103 = call i64 @REG(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %107 = call i8* @REG_READ(i32 %106)
  %108 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %109 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %111 = call i8* @REG_READ(i32 %110)
  %112 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %113 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %105, %101
  %115 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %116 = call i8* @REG_READ(i32 %115)
  %117 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %118 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %120 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %119, i32 0, i32 0
  %121 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %120, align 8
  %122 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %121, i64 3
  store %struct.dcn_hubbub_wm_set* %122, %struct.dcn_hubbub_wm_set** %6, align 8
  %123 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %124 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %123, i32 0, i32 0
  store i32 3, i32* %124, align 8
  %125 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %126 = call i8* @REG_READ(i32 %125)
  %127 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %128 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D, align 4
  %130 = call i64 @REG(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %114
  %133 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D, align 4
  %134 = call i8* @REG_READ(i32 %133)
  %135 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %136 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %114
  %138 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %139 = call i64 @REG(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %143 = call i8* @REG_READ(i32 %142)
  %144 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %145 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %147 = call i8* @REG_READ(i32 %146)
  %148 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %149 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %141, %137
  %151 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %152 = call i8* @REG_READ(i32 %151)
  %153 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %154 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  ret void
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @memset(%struct.dcn_hubbub_wm*, i32, i32) #1

declare dso_local i8* @REG_READ(i32) #1

declare dso_local i64 @REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
