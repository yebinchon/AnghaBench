; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_current_q_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_current_q_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debugfs_file = type { i32 }
%struct.hisi_qm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@QM_DFX_QN_SHIFT = common dso_local global i64 0, align 8
@QM_DFX_SQE_CNT_VF_SQN = common dso_local global i64 0, align 8
@CURRENT_FUN_MASK = common dso_local global i64 0, align 8
@QM_DFX_CQE_CNT_VF_CQN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debugfs_file*, i64)* @current_q_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @current_q_write(%struct.debugfs_file* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.debugfs_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hisi_qm*, align 8
  %7 = alloca i64, align 8
  store %struct.debugfs_file* %0, %struct.debugfs_file** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.debugfs_file*, %struct.debugfs_file** %4, align 8
  %9 = call %struct.hisi_qm* @file_to_qm(%struct.debugfs_file* %8)
  store %struct.hisi_qm* %9, %struct.hisi_qm** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %12 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %10, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @QM_DFX_QN_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %24 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QM_DFX_SQE_CNT_VF_SQN, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @readl(i64 %27)
  %29 = load i64, i64* @CURRENT_FUN_MASK, align 8
  %30 = and i64 %28, %29
  %31 = or i64 %22, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %34 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QM_DFX_SQE_CNT_VF_SQN, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i64 %32, i64 %37)
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @QM_DFX_QN_SHIFT, align 8
  %41 = shl i64 %39, %40
  %42 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %43 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @QM_DFX_CQE_CNT_VF_CQN, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i64 @readl(i64 %46)
  %48 = load i64, i64* @CURRENT_FUN_MASK, align 8
  %49 = and i64 %47, %48
  %50 = or i64 %41, %49
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.hisi_qm*, %struct.hisi_qm** %6, align 8
  %53 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QM_DFX_CQE_CNT_VF_CQN, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i64 %51, i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %19, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.hisi_qm* @file_to_qm(%struct.debugfs_file*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
