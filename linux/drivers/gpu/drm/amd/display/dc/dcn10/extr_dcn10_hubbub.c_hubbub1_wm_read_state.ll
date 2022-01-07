; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_wm_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_wm_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_hubbub_wm = type { %struct.dcn_hubbub_wm_set* }
%struct.dcn_hubbub_wm_set = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.dcn10_hubbub = type { i32 }

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
define dso_local void @hubbub1_wm_read_state(%struct.hubbub* %0, %struct.dcn_hubbub_wm* %1) #0 {
  %3 = alloca %struct.hubbub*, align 8
  %4 = alloca %struct.dcn_hubbub_wm*, align 8
  %5 = alloca %struct.dcn10_hubbub*, align 8
  %6 = alloca %struct.dcn_hubbub_wm_set*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %3, align 8
  store %struct.dcn_hubbub_wm* %1, %struct.dcn_hubbub_wm** %4, align 8
  %7 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %8 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %7)
  store %struct.dcn10_hubbub* %8, %struct.dcn10_hubbub** %5, align 8
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
  %22 = call i8* @REG_READ(i32 %21)
  %23 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %24 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %26 = call i64 @REG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %30 = call i8* @REG_READ(i32 %29)
  %31 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %32 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %34 = call i8* @REG_READ(i32 %33)
  %35 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %36 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %28, %2
  %38 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A, align 4
  %39 = call i8* @REG_READ(i32 %38)
  %40 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %41 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %43 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %42, i32 0, i32 0
  %44 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %43, align 8
  %45 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %44, i64 1
  store %struct.dcn_hubbub_wm_set* %45, %struct.dcn_hubbub_wm_set** %6, align 8
  %46 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %47 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %49 = call i8* @REG_READ(i32 %48)
  %50 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %51 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B, align 4
  %53 = call i8* @REG_READ(i32 %52)
  %54 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %55 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %57 = call i64 @REG(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %37
  %60 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %61 = call i8* @REG_READ(i32 %60)
  %62 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %63 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %65 = call i8* @REG_READ(i32 %64)
  %66 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %67 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %59, %37
  %69 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %70 = call i8* @REG_READ(i32 %69)
  %71 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %72 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %74 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %73, i32 0, i32 0
  %75 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %74, align 8
  %76 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %75, i64 2
  store %struct.dcn_hubbub_wm_set* %76, %struct.dcn_hubbub_wm_set** %6, align 8
  %77 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %78 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %77, i32 0, i32 0
  store i32 2, i32* %78, align 8
  %79 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %80 = call i8* @REG_READ(i32 %79)
  %81 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %82 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C, align 4
  %84 = call i8* @REG_READ(i32 %83)
  %85 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %86 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %88 = call i64 @REG(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %68
  %91 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %92 = call i8* @REG_READ(i32 %91)
  %93 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %94 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %96 = call i8* @REG_READ(i32 %95)
  %97 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %98 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %90, %68
  %100 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %101 = call i8* @REG_READ(i32 %100)
  %102 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %103 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %105 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %104, i32 0, i32 0
  %106 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %105, align 8
  %107 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %106, i64 3
  store %struct.dcn_hubbub_wm_set* %107, %struct.dcn_hubbub_wm_set** %6, align 8
  %108 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %109 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %108, i32 0, i32 0
  store i32 3, i32* %109, align 8
  %110 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %111 = call i8* @REG_READ(i32 %110)
  %112 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %113 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D, align 4
  %115 = call i8* @REG_READ(i32 %114)
  %116 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %117 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %119 = call i64 @REG(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %99
  %122 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %123 = call i8* @REG_READ(i32 %122)
  %124 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %125 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %127 = call i8* @REG_READ(i32 %126)
  %128 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %129 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %121, %99
  %131 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %132 = call i8* @REG_READ(i32 %131)
  %133 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %134 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @memset(%struct.dcn_hubbub_wm*, i32, i32) #1

declare dso_local i8* @REG_READ(i32) #1

declare dso_local i64 @REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
