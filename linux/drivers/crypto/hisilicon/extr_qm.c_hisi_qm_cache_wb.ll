; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_cache_wb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_cache_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qm = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@QM_HW_V2 = common dso_local global i64 0, align 8
@QM_CACHE_WB_START = common dso_local global i64 0, align 8
@QM_CACHE_WB_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"QM writeback sqc cache fail!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_qm*)* @hisi_qm_cache_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_qm_cache_wb(%struct.hisi_qm* %0) #0 {
  %2 = alloca %struct.hisi_qm*, align 8
  %3 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %2, align 8
  %4 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %5 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @QM_HW_V2, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QM_CACHE_WB_START, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 1, i64 %14)
  %16 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %17 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QM_CACHE_WB_DONE, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @BIT(i32 0)
  %24 = and i32 %22, %23
  %25 = call i64 @readl_relaxed_poll_timeout(i64 %20, i32 %21, i32 %24, i32 10, i32 1000)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %9
  %28 = load %struct.hisi_qm*, %struct.hisi_qm** %2, align 8
  %29 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %9
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @readl_relaxed_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
