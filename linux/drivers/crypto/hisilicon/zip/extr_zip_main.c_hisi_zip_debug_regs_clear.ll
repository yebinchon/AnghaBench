; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_debug_regs_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_main.c_hisi_zip_debug_regs_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip = type { %struct.hisi_qm }
%struct.hisi_qm = type { i64 }

@QM_DFX_MB_CNT_VF = common dso_local global i64 0, align 8
@QM_DFX_DB_CNT_VF = common dso_local global i64 0, align 8
@HZIP_SOFT_CTRL_CNT_CLR_CE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_zip*)* @hisi_zip_debug_regs_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_debug_regs_clear(%struct.hisi_zip* %0) #0 {
  %2 = alloca %struct.hisi_zip*, align 8
  %3 = alloca %struct.hisi_qm*, align 8
  store %struct.hisi_zip* %0, %struct.hisi_zip** %2, align 8
  %4 = load %struct.hisi_zip*, %struct.hisi_zip** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_zip, %struct.hisi_zip* %4, i32 0, i32 0
  store %struct.hisi_qm* %5, %struct.hisi_qm** %3, align 8
  %6 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QM_DFX_MB_CNT_VF, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  %12 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %13 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QM_DFX_DB_CNT_VF, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  %18 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %19 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HZIP_SOFT_CTRL_CNT_CLR_CE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 0, i64 %22)
  %24 = load %struct.hisi_qm*, %struct.hisi_qm** %3, align 8
  %25 = call i32 @hisi_qm_debug_regs_clear(%struct.hisi_qm* %24)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hisi_qm_debug_regs_clear(%struct.hisi_qm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
