; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_vft_data_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_vft_data_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64, i32 }

@QM_SQC_VFT_BUF_SIZE = common dso_local global i32 0, align 4
@QM_SQC_VFT_SQC_SIZE = common dso_local global i32 0, align 4
@QM_SQC_VFT_INDEX_NUMBER = common dso_local global i32 0, align 4
@QM_SQC_VFT_VALID = common dso_local global i32 0, align 4
@QM_SQC_VFT_START_SQN_SHIFT = common dso_local global i32 0, align 4
@QM_SQC_VFT_SQN_SHIFT = common dso_local global i32 0, align 4
@QM_CQC_VFT_BUF_SIZE = common dso_local global i32 0, align 4
@QM_CQC_VFT_SQC_SIZE = common dso_local global i32 0, align 4
@QM_CQC_VFT_INDEX_NUMBER = common dso_local global i32 0, align 4
@QM_CQC_VFT_VALID = common dso_local global i32 0, align 4
@QM_VFT_CFG_DATA_L = common dso_local global i64 0, align 8
@QM_VFT_CFG_DATA_H = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_qm*, i32, i64, i64)* @qm_vft_data_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_vft_data_cfg(%struct.hisi_qm* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.hisi_qm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %62 [
    i32 128, label %14
    i32 132, label %46
  ]

14:                                               ; preds = %12
  %15 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %45 [
    i32 130, label %18
    i32 129, label %31
    i32 131, label %44
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @QM_SQC_VFT_BUF_SIZE, align 4
  %20 = load i32, i32* @QM_SQC_VFT_SQC_SIZE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @QM_SQC_VFT_INDEX_NUMBER, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @QM_SQC_VFT_VALID, align 4
  %25 = or i32 %23, %24
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @QM_SQC_VFT_START_SQN_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %25, %29
  store i32 %30, i32* %9, align 4
  br label %45

31:                                               ; preds = %14
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @QM_SQC_VFT_START_SQN_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @QM_SQC_VFT_VALID, align 4
  %37 = or i32 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = sub nsw i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @QM_SQC_VFT_SQN_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %37, %42
  store i32 %43, i32* %9, align 4
  br label %45

44:                                               ; preds = %14
  br label %45

45:                                               ; preds = %14, %44, %31, %18
  br label %62

46:                                               ; preds = %12
  %47 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %48 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %61 [
    i32 130, label %50
    i32 129, label %58
    i32 131, label %60
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @QM_CQC_VFT_BUF_SIZE, align 4
  %52 = load i32, i32* @QM_CQC_VFT_SQC_SIZE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @QM_CQC_VFT_INDEX_NUMBER, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @QM_CQC_VFT_VALID, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %9, align 4
  br label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @QM_CQC_VFT_VALID, align 4
  store i32 %59, i32* %9, align 4
  br label %61

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %46, %60, %58, %50
  br label %62

62:                                               ; preds = %12, %61, %45
  br label %63

63:                                               ; preds = %62, %4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @lower_32_bits(i32 %64)
  %66 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %67 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @QM_VFT_CFG_DATA_L, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @upper_32_bits(i32 %72)
  %74 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %75 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @QM_VFT_CFG_DATA_H, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
