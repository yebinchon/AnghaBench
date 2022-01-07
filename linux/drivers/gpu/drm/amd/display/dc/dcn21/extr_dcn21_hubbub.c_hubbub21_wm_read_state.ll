; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_wm_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_wm_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_hubbub_wm = type { %struct.dcn_hubbub_wm_set* }
%struct.dcn_hubbub_wm_set = type { i32, i32, i32, i32, i32 }
%struct.dcn20_hubbub = type { i32 }

@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub21_wm_read_state(%struct.hubbub* %0, %struct.dcn_hubbub_wm* %1) #0 {
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
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A, align 4
  %18 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A, align 4
  %19 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %20 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %19, i32 0, i32 4
  %21 = call i32 @REG_GET(i32 %17, i32 %18, i32* %20)
  %22 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %23 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %24 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %25 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %24, i32 0, i32 3
  %26 = call i32 @REG_GET(i32 %22, i32 %23, i32* %25)
  %27 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %28 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %29 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %30 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %29, i32 0, i32 2
  %31 = call i32 @REG_GET(i32 %27, i32 %28, i32* %30)
  %32 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A, align 4
  %33 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A, align 4
  %34 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %35 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %34, i32 0, i32 1
  %36 = call i32 @REG_GET(i32 %32, i32 %33, i32* %35)
  %37 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %38 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %37, i32 0, i32 0
  %39 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %38, align 8
  %40 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %39, i64 1
  store %struct.dcn_hubbub_wm_set* %40, %struct.dcn_hubbub_wm_set** %6, align 8
  %41 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %42 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %44 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %45 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %46 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %45, i32 0, i32 4
  %47 = call i32 @REG_GET(i32 %43, i32 %44, i32* %46)
  %48 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %49 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %50 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %51 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %50, i32 0, i32 3
  %52 = call i32 @REG_GET(i32 %48, i32 %49, i32* %51)
  %53 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %54 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %55 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %56 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %55, i32 0, i32 2
  %57 = call i32 @REG_GET(i32 %53, i32 %54, i32* %56)
  %58 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %59 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %60 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %61 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %60, i32 0, i32 1
  %62 = call i32 @REG_GET(i32 %58, i32 %59, i32* %61)
  %63 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %64 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %63, i32 0, i32 0
  %65 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %64, align 8
  %66 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %65, i64 2
  store %struct.dcn_hubbub_wm_set* %66, %struct.dcn_hubbub_wm_set** %6, align 8
  %67 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %68 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %67, i32 0, i32 0
  store i32 2, i32* %68, align 4
  %69 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %70 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %71 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %72 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %71, i32 0, i32 4
  %73 = call i32 @REG_GET(i32 %69, i32 %70, i32* %72)
  %74 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %75 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %76 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %77 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %76, i32 0, i32 3
  %78 = call i32 @REG_GET(i32 %74, i32 %75, i32* %77)
  %79 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %80 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %81 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %82 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %81, i32 0, i32 2
  %83 = call i32 @REG_GET(i32 %79, i32 %80, i32* %82)
  %84 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %85 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %86 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %87 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %86, i32 0, i32 1
  %88 = call i32 @REG_GET(i32 %84, i32 %85, i32* %87)
  %89 = load %struct.dcn_hubbub_wm*, %struct.dcn_hubbub_wm** %4, align 8
  %90 = getelementptr inbounds %struct.dcn_hubbub_wm, %struct.dcn_hubbub_wm* %89, i32 0, i32 0
  %91 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %90, align 8
  %92 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %91, i64 3
  store %struct.dcn_hubbub_wm_set* %92, %struct.dcn_hubbub_wm_set** %6, align 8
  %93 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %94 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %93, i32 0, i32 0
  store i32 3, i32* %94, align 4
  %95 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %96 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %97 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %98 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %97, i32 0, i32 4
  %99 = call i32 @REG_GET(i32 %95, i32 %96, i32* %98)
  %100 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %101 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %102 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %103 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %102, i32 0, i32 3
  %104 = call i32 @REG_GET(i32 %100, i32 %101, i32* %103)
  %105 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %106 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %107 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %108 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %107, i32 0, i32 2
  %109 = call i32 @REG_GET(i32 %105, i32 %106, i32* %108)
  %110 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %111 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %112 = load %struct.dcn_hubbub_wm_set*, %struct.dcn_hubbub_wm_set** %6, align 8
  %113 = getelementptr inbounds %struct.dcn_hubbub_wm_set, %struct.dcn_hubbub_wm_set* %112, i32 0, i32 1
  %114 = call i32 @REG_GET(i32 %110, i32 %111, i32* %113)
  ret void
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @memset(%struct.dcn_hubbub_wm*, i32, i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
