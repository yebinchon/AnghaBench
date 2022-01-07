; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_set_vft_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_qm_set_vft_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64 }

@QM_VFT_CFG_RDY = common dso_local global i64 0, align 8
@QM_VFT_CFG_OP_WR = common dso_local global i64 0, align 8
@QM_VFT_CFG_TYPE = common dso_local global i64 0, align 8
@QM_VFT_CFG = common dso_local global i64 0, align 8
@QM_VFT_CFG_OP_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_qm*, i32, i32, i32, i32)* @qm_set_vft_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_set_vft_common(%struct.hisi_qm* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hisi_qm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %15 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QM_VFT_CFG_RDY, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @BIT(i32 0)
  %22 = and i32 %20, %21
  %23 = call i32 @readl_relaxed_poll_timeout(i64 %18, i32 %19, i32 %22, i32 10, i32 1000)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %76

28:                                               ; preds = %5
  %29 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %30 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @QM_VFT_CFG_OP_WR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 0, i64 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %37 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @QM_VFT_CFG_TYPE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %44 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @QM_VFT_CFG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @qm_vft_data_cfg(%struct.hisi_qm* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %55 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @QM_VFT_CFG_RDY, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 0, i64 %58)
  %60 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %61 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QM_VFT_CFG_OP_ENABLE, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 1, i64 %64)
  %66 = load %struct.hisi_qm*, %struct.hisi_qm** %7, align 8
  %67 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @QM_VFT_CFG_RDY, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @BIT(i32 0)
  %74 = and i32 %72, %73
  %75 = call i32 @readl_relaxed_poll_timeout(i64 %70, i32 %71, i32 %74, i32 10, i32 1000)
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %28, %26
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @qm_vft_data_cfg(%struct.hisi_qm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
