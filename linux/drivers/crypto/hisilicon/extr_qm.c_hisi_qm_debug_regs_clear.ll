; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_debug_regs_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_debug_regs_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_dfx_registers = type { i64 }
%struct.hisi_qm = type { i64 }

@QM_DFX_SQE_CNT_VF_SQN = common dso_local global i64 0, align 8
@QM_DFX_CQE_CNT_VF_CQN = common dso_local global i64 0, align 8
@QM_DFX_CNT_CLR_CE = common dso_local global i64 0, align 8
@qm_dfx_regs = common dso_local global %struct.qm_dfx_registers* null, align 8
@CNT_CYC_REGS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_qm_debug_regs_clear(%struct.hisi_qm* %0) #0 {
  %2 = alloca %struct.hisi_qm*, align 8
  %3 = alloca %struct.qm_dfx_registers*, align 8
  %4 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %2, align 8
  %5 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QM_DFX_SQE_CNT_VF_SQN, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 0, i64 %9)
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QM_DFX_CQE_CNT_VF_CQN, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %18 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QM_DFX_CNT_CLR_CE, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 1, i64 %21)
  %23 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** @qm_dfx_regs, align 8
  store %struct.qm_dfx_registers* %23, %struct.qm_dfx_registers** %3, align 8
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %39, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CNT_CYC_REGS_NUM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %30 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** %3, align 8
  %33 = getelementptr inbounds %struct.qm_dfx_registers, %struct.qm_dfx_registers* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @readl(i64 %35)
  %37 = load %struct.qm_dfx_registers*, %struct.qm_dfx_registers** %3, align 8
  %38 = getelementptr inbounds %struct.qm_dfx_registers, %struct.qm_dfx_registers* %37, i32 1
  store %struct.qm_dfx_registers* %38, %struct.qm_dfx_registers** %3, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %44 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QM_DFX_CNT_CLR_CE, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 0, i64 %47)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
