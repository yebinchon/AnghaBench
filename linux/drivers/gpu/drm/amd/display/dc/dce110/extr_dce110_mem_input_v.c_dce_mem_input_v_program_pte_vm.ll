; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_pte_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_mem_input_v.c_dce_mem_input_v_program_pte_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_input = type { i32 }
%union.dc_tiling_info = type { i32 }
%struct.dce_mem_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmUNP_PIPE_OUTSTANDING_REQUEST_LIMIT = common dso_local global i32 0, align 4
@UNP_PIPE_OUTSTANDING_REQUEST_LIMIT = common dso_local global i32 0, align 4
@UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_L = common dso_local global i32 0, align 4
@UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_C = common dso_local global i32 0, align 4
@mmUNP_DVMM_PTE_CONTROL = common dso_local global i32 0, align 4
@UNP_DVMM_PTE_CONTROL = common dso_local global i32 0, align 4
@DVMM_PAGE_WIDTH = common dso_local global i32 0, align 4
@DVMM_PAGE_HEIGHT = common dso_local global i32 0, align 4
@DVMM_MIN_PTE_BEFORE_FLIP = common dso_local global i32 0, align 4
@mmUNP_DVMM_PTE_ARB_CONTROL = common dso_local global i32 0, align 4
@UNP_DVMM_PTE_ARB_CONTROL = common dso_local global i32 0, align 4
@DVMM_PTE_REQ_PER_CHUNK = common dso_local global i32 0, align 4
@DVMM_MAX_PTE_REQ_OUTSTANDING = common dso_local global i32 0, align 4
@mmUNP_DVMM_PTE_CONTROL_C = common dso_local global i32 0, align 4
@UNP_DVMM_PTE_CONTROL_C = common dso_local global i32 0, align 4
@DVMM_PAGE_WIDTH_C = common dso_local global i32 0, align 4
@DVMM_PAGE_HEIGHT_C = common dso_local global i32 0, align 4
@DVMM_MIN_PTE_BEFORE_FLIP_C = common dso_local global i32 0, align 4
@mmUNP_DVMM_PTE_ARB_CONTROL_C = common dso_local global i32 0, align 4
@UNP_DVMM_PTE_ARB_CONTROL_C = common dso_local global i32 0, align 4
@DVMM_PTE_REQ_PER_CHUNK_C = common dso_local global i32 0, align 4
@DVMM_MAX_PTE_REQ_OUTSTANDING_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_mem_input_v_program_pte_vm(%struct.mem_input* %0, i32 %1, %union.dc_tiling_info* %2, i32 %3) #0 {
  %5 = alloca %struct.mem_input*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.dc_tiling_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce_mem_input*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mem_input* %0, %struct.mem_input** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.dc_tiling_info* %2, %union.dc_tiling_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.mem_input*, %struct.mem_input** %5, align 8
  %22 = call %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input* %21)
  store %struct.dce_mem_input* %22, %struct.dce_mem_input** %9, align 8
  %23 = load %union.dc_tiling_info*, %union.dc_tiling_info** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @get_dvmm_hw_setting(%union.dc_tiling_info* %23, i32 %24, i32 0)
  store i32* %25, i32** %10, align 8
  %26 = load %union.dc_tiling_info*, %union.dc_tiling_info** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @get_dvmm_hw_setting(%union.dc_tiling_info* %26, i32 %27, i32 1)
  store i32* %28, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %35

35:                                               ; preds = %39, %4
  %36 = load i32, i32* %16, align 4
  %37 = lshr i32 %36, 1
  store i32 %37, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %35

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %17, align 4
  %45 = lshr i32 %44, 1
  store i32 %45, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %43

50:                                               ; preds = %43
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %17, align 4
  br label %57

57:                                               ; preds = %61, %50
  %58 = load i32, i32* %16, align 4
  %59 = lshr i32 %58, 1
  store i32 %59, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* %14, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %57

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i32, i32* %17, align 4
  %67 = lshr i32 %66, 1
  store i32 %67, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %15, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %15, align 4
  br label %65

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  switch i32 %73, label %81 [
    i32 128, label %74
    i32 129, label %74
  ]

74:                                               ; preds = %72, %72
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %18, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %19, align 4
  br label %88

81:                                               ; preds = %72
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %81, %74
  %89 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %90 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @mmUNP_PIPE_OUTSTANDING_REQUEST_LIMIT, align 4
  %94 = call i32 @dm_read_reg(i32 %92, i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* @UNP_PIPE_OUTSTANDING_REQUEST_LIMIT, align 4
  %97 = load i32, i32* @UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_L, align 4
  %98 = call i32 @set_reg_field_value(i32 %95, i32 255, i32 %96, i32 %97)
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @UNP_PIPE_OUTSTANDING_REQUEST_LIMIT, align 4
  %101 = load i32, i32* @UNP_PIPE_OUTSTANDING_REQUEST_LIMIT_C, align 4
  %102 = call i32 @set_reg_field_value(i32 %99, i32 255, i32 %100, i32 %101)
  %103 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %104 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @mmUNP_PIPE_OUTSTANDING_REQUEST_LIMIT, align 4
  %108 = load i32, i32* %20, align 4
  %109 = call i32 @dm_write_reg(i32 %106, i32 %107, i32 %108)
  %110 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %111 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @mmUNP_DVMM_PTE_CONTROL, align 4
  %115 = call i32 @dm_read_reg(i32 %113, i32 %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @UNP_DVMM_PTE_CONTROL, align 4
  %119 = load i32, i32* @DVMM_PAGE_WIDTH, align 4
  %120 = call i32 @set_reg_field_value(i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @UNP_DVMM_PTE_CONTROL, align 4
  %124 = load i32, i32* @DVMM_PAGE_HEIGHT, align 4
  %125 = call i32 @set_reg_field_value(i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @UNP_DVMM_PTE_CONTROL, align 4
  %129 = load i32, i32* @DVMM_MIN_PTE_BEFORE_FLIP, align 4
  %130 = call i32 @set_reg_field_value(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %132 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @mmUNP_DVMM_PTE_CONTROL, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @dm_write_reg(i32 %134, i32 %135, i32 %136)
  %138 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %139 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @mmUNP_DVMM_PTE_ARB_CONTROL, align 4
  %143 = call i32 @dm_read_reg(i32 %141, i32 %142)
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @UNP_DVMM_PTE_ARB_CONTROL, align 4
  %149 = load i32, i32* @DVMM_PTE_REQ_PER_CHUNK, align 4
  %150 = call i32 @set_reg_field_value(i32 %144, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* @UNP_DVMM_PTE_ARB_CONTROL, align 4
  %153 = load i32, i32* @DVMM_MAX_PTE_REQ_OUTSTANDING, align 4
  %154 = call i32 @set_reg_field_value(i32 %151, i32 255, i32 %152, i32 %153)
  %155 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %156 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @mmUNP_DVMM_PTE_ARB_CONTROL, align 4
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @dm_write_reg(i32 %158, i32 %159, i32 %160)
  %162 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %163 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @mmUNP_DVMM_PTE_CONTROL_C, align 4
  %167 = call i32 @dm_read_reg(i32 %165, i32 %166)
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* @UNP_DVMM_PTE_CONTROL_C, align 4
  %171 = load i32, i32* @DVMM_PAGE_WIDTH_C, align 4
  %172 = call i32 @set_reg_field_value(i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* @UNP_DVMM_PTE_CONTROL_C, align 4
  %176 = load i32, i32* @DVMM_PAGE_HEIGHT_C, align 4
  %177 = call i32 @set_reg_field_value(i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* @UNP_DVMM_PTE_CONTROL_C, align 4
  %181 = load i32, i32* @DVMM_MIN_PTE_BEFORE_FLIP_C, align 4
  %182 = call i32 @set_reg_field_value(i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %184 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @mmUNP_DVMM_PTE_CONTROL_C, align 4
  %188 = load i32, i32* %20, align 4
  %189 = call i32 @dm_write_reg(i32 %186, i32 %187, i32 %188)
  %190 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %191 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @mmUNP_DVMM_PTE_ARB_CONTROL_C, align 4
  %195 = call i32 @dm_read_reg(i32 %193, i32 %194)
  store i32 %195, i32* %20, align 4
  %196 = load i32, i32* %20, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 5
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @UNP_DVMM_PTE_ARB_CONTROL_C, align 4
  %201 = load i32, i32* @DVMM_PTE_REQ_PER_CHUNK_C, align 4
  %202 = call i32 @set_reg_field_value(i32 %196, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* @UNP_DVMM_PTE_ARB_CONTROL_C, align 4
  %205 = load i32, i32* @DVMM_MAX_PTE_REQ_OUTSTANDING_C, align 4
  %206 = call i32 @set_reg_field_value(i32 %203, i32 255, i32 %204, i32 %205)
  %207 = load %struct.dce_mem_input*, %struct.dce_mem_input** %9, align 8
  %208 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @mmUNP_DVMM_PTE_ARB_CONTROL_C, align 4
  %212 = load i32, i32* %20, align 4
  %213 = call i32 @dm_write_reg(i32 %210, i32 %211, i32 %212)
  ret void
}

declare dso_local %struct.dce_mem_input* @TO_DCE_MEM_INPUT(%struct.mem_input*) #1

declare dso_local i32* @get_dvmm_hw_setting(%union.dc_tiling_info*, i32, i32) #1

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
