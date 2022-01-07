; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_get_vft_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_get_vft_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64 }

@QM_MB_CMD_SQC_VFT_V2 = common dso_local global i32 0, align 4
@QM_MB_CMD_DATA_ADDR_L = common dso_local global i64 0, align 8
@QM_MB_CMD_DATA_ADDR_H = common dso_local global i64 0, align 8
@QM_SQC_VFT_BASE_MASK_V2 = common dso_local global i32 0, align 4
@QM_SQC_VFT_BASE_SHIFT_V2 = common dso_local global i32 0, align 4
@QM_SQC_VFT_NUM_MASK_v2 = common dso_local global i32 0, align 4
@QM_SQC_VFT_NUM_SHIFT_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qm*, i32*, i32*)* @qm_get_vft_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_get_vft_v2(%struct.hisi_qm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_qm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %11 = load i32, i32* @QM_MB_CMD_SQC_VFT_V2, align 4
  %12 = call i32 @qm_mb(%struct.hisi_qm* %10, i32 %11, i32 0, i32 0, i32 1)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %19 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QM_MB_CMD_DATA_ADDR_L, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load %struct.hisi_qm*, %struct.hisi_qm** %5, align 8
  %25 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QM_MB_CMD_DATA_ADDR_H, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  %30 = shl i32 %29, 32
  %31 = or i32 %23, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @QM_SQC_VFT_BASE_MASK_V2, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @QM_SQC_VFT_BASE_SHIFT_V2, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @QM_SQC_VFT_NUM_MASK_v2, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @QM_SQC_VFT_NUM_SHIFT_V2, align 4
  %41 = ashr i32 %39, %40
  %42 = and i32 %38, %41
  %43 = add nsw i32 %42, 1
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %17, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @qm_mb(%struct.hisi_qm*, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
