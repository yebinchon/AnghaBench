; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_mtk_iommu.c_mtk_iommu_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_iommu_data = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to enable iommu bclk(%d)\0A\00", align 1
@M4U_MT8173 = common dso_local global i64 0, align 8
@F_MMU_PREFETCH_RT_REPLACE_MOD = common dso_local global i32 0, align 4
@F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173 = common dso_local global i32 0, align 4
@F_MMU_TF_PROT_TO_PROGRAM_ADDR = common dso_local global i32 0, align 4
@REG_MMU_CTRL_REG = common dso_local global i64 0, align 8
@F_L2_MULIT_HIT_EN = common dso_local global i32 0, align 4
@F_TABLE_WALK_FAULT_INT_EN = common dso_local global i32 0, align 4
@F_PREETCH_FIFO_OVERFLOW_INT_EN = common dso_local global i32 0, align 4
@F_MISS_FIFO_OVERFLOW_INT_EN = common dso_local global i32 0, align 4
@F_PREFETCH_FIFO_ERR_INT_EN = common dso_local global i32 0, align 4
@F_MISS_FIFO_ERR_INT_EN = common dso_local global i32 0, align 4
@REG_MMU_INT_CONTROL0 = common dso_local global i64 0, align 8
@F_INT_TRANSLATION_FAULT = common dso_local global i32 0, align 4
@F_INT_MAIN_MULTI_HIT_FAULT = common dso_local global i32 0, align 4
@F_INT_INVALID_PA_FAULT = common dso_local global i32 0, align 4
@F_INT_ENTRY_REPLACEMENT_FAULT = common dso_local global i32 0, align 4
@F_INT_TLB_MISS_FAULT = common dso_local global i32 0, align 4
@F_INT_MISS_TRANSACTION_FIFO_FAULT = common dso_local global i32 0, align 4
@F_INT_PRETETCH_TRANSATION_FIFO_FAULT = common dso_local global i32 0, align 4
@REG_MMU_INT_MAIN_CONTROL = common dso_local global i64 0, align 8
@REG_MMU_IVRP_PADDR = common dso_local global i64 0, align 8
@REG_MMU_VLD_PA_RNG = common dso_local global i64 0, align 8
@REG_MMU_DCM_DIS = common dso_local global i64 0, align 8
@REG_MMU_STANDARD_AXI_MODE = common dso_local global i64 0, align 8
@mtk_iommu_isr = common dso_local global i32 0, align 4
@REG_MMU_PT_BASE_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed @ IRQ-%d Request\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_iommu_data*)* @mtk_iommu_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_iommu_hw_init(%struct.mtk_iommu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_iommu_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_iommu_data* %0, %struct.mtk_iommu_data** %3, align 8
  %6 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @clk_prepare_enable(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %14 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %191

19:                                               ; preds = %1
  %20 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %20, i32 0, i32 6
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @M4U_MT8173, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @F_MMU_PREFETCH_RT_REPLACE_MOD, align 4
  %29 = load i32, i32* @F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @F_MMU_TF_PROT_TO_PROGRAM_ADDR, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %36 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_MMU_CTRL_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  %41 = load i32, i32* @F_L2_MULIT_HIT_EN, align 4
  %42 = load i32, i32* @F_TABLE_WALK_FAULT_INT_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @F_PREETCH_FIFO_OVERFLOW_INT_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @F_MISS_FIFO_OVERFLOW_INT_EN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @F_PREFETCH_FIFO_ERR_INT_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @F_MISS_FIFO_ERR_INT_EN, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %54 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REG_MMU_INT_CONTROL0, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel_relaxed(i32 %52, i64 %57)
  %59 = load i32, i32* @F_INT_TRANSLATION_FAULT, align 4
  %60 = load i32, i32* @F_INT_MAIN_MULTI_HIT_FAULT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @F_INT_INVALID_PA_FAULT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @F_INT_ENTRY_REPLACEMENT_FAULT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @F_INT_TLB_MISS_FAULT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @F_INT_MISS_TRANSACTION_FIFO_FAULT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @F_INT_PRETETCH_TRANSATION_FIFO_FAULT, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %74 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @REG_MMU_INT_MAIN_CONTROL, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel_relaxed(i32 %72, i64 %77)
  %79 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %80 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %79, i32 0, i32 6
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @M4U_MT8173, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %33
  %87 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %88 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 1
  %91 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %92 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 31
  %95 = or i32 %90, %94
  store i32 %95, i32* %4, align 4
  br label %106

96:                                               ; preds = %33
  %97 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %98 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @lower_32_bits(i32 %99)
  %101 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %102 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @upper_32_bits(i32 %103)
  %105 = or i32 %100, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %96, %86
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %109 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @REG_MMU_IVRP_PADDR, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel_relaxed(i32 %107, i64 %112)
  %114 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %115 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %106
  %119 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %120 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %119, i32 0, i32 6
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = call i32 @F_MMU_VLD_PA_RNG(i32 7, i32 4)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %129 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @REG_MMU_VLD_PA_RNG, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @writel_relaxed(i32 %127, i64 %132)
  br label %134

134:                                              ; preds = %125, %118, %106
  %135 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %136 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @REG_MMU_DCM_DIS, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel_relaxed(i32 0, i64 %139)
  %141 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %142 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %141, i32 0, i32 6
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %134
  %148 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %149 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @REG_MMU_STANDARD_AXI_MODE, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel_relaxed(i32 0, i64 %152)
  br label %154

154:                                              ; preds = %147, %134
  %155 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %156 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %159 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @mtk_iommu_isr, align 4
  %162 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %163 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dev_name(i32 %164)
  %166 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %167 = bitcast %struct.mtk_iommu_data* %166 to i8*
  %168 = call i64 @devm_request_irq(i32 %157, i32 %160, i32 %161, i32 0, i32 %165, i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %154
  %171 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %172 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @REG_MMU_PT_BASE_ADDR, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @writel_relaxed(i32 0, i64 %175)
  %177 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %178 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @clk_disable_unprepare(i32 %179)
  %181 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %182 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.mtk_iommu_data*, %struct.mtk_iommu_data** %3, align 8
  %185 = getelementptr inbounds %struct.mtk_iommu_data, %struct.mtk_iommu_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dev_err(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @ENODEV, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %191

190:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %170, %12
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @F_MMU_VLD_PA_RNG(i32, i32) #1

declare dso_local i64 @devm_request_irq(i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
