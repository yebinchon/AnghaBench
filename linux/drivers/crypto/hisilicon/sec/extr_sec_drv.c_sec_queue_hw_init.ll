; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SEC_QUEUE_AR_FROCE_NOALLOC = common dso_local global i32 0, align 4
@SEC_Q_PROC_NUM_CFG_REG = common dso_local global i64 0, align 8
@SEC_QUEUE_LEN = common dso_local global i64 0, align 8
@SEC_Q_OT_TH_REG = common dso_local global i64 0, align 8
@SEC_Q_INIT_AND_STAT_CLEAR = common dso_local global i32 0, align 4
@SEC_Q_INIT_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_queue*)* @sec_queue_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_queue_hw_init(%struct.sec_queue* %0) #0 {
  %2 = alloca %struct.sec_queue*, align 8
  store %struct.sec_queue* %0, %struct.sec_queue** %2, align 8
  %3 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %4 = load i32, i32* @SEC_QUEUE_AR_FROCE_NOALLOC, align 4
  %5 = call i32 @sec_queue_ar_alloc(%struct.sec_queue* %3, i32 %4)
  %6 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %7 = load i32, i32* @SEC_QUEUE_AR_FROCE_NOALLOC, align 4
  %8 = call i32 @sec_queue_aw_alloc(%struct.sec_queue* %6, i32 %7)
  %9 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %10 = call i32 @sec_queue_ar_pkgattr(%struct.sec_queue* %9, i32 1)
  %11 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %12 = call i32 @sec_queue_aw_pkgattr(%struct.sec_queue* %11, i32 1)
  %13 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %14 = call i32 @sec_queue_reorder(%struct.sec_queue* %13, i32 1)
  %15 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %16 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SEC_Q_PROC_NUM_CFG_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 1, i64 %19)
  %21 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %22 = load i64, i64* @SEC_QUEUE_LEN, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @sec_queue_depth(%struct.sec_queue* %21, i64 %23)
  %25 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %26 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %27 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sec_queue_cmdbase_addr(%struct.sec_queue* %25, i32 %29)
  %31 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %32 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %33 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sec_queue_outorder_addr(%struct.sec_queue* %31, i32 %35)
  %37 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %38 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %39 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sec_queue_errbase_addr(%struct.sec_queue* %37, i32 %41)
  %43 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %44 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SEC_Q_OT_TH_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 256, i64 %47)
  %49 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %50 = call i32 @sec_queue_abn_irq_disable(%struct.sec_queue* %49)
  %51 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %52 = call i32 @sec_queue_irq_disable(%struct.sec_queue* %51)
  %53 = load i32, i32* @SEC_Q_INIT_AND_STAT_CLEAR, align 4
  %54 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %55 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SEC_Q_INIT_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 %53, i64 %58)
  ret void
}

declare dso_local i32 @sec_queue_ar_alloc(%struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_aw_alloc(%struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_ar_pkgattr(%struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_aw_pkgattr(%struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_reorder(%struct.sec_queue*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @sec_queue_depth(%struct.sec_queue*, i64) #1

declare dso_local i32 @sec_queue_cmdbase_addr(%struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_outorder_addr(%struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_errbase_addr(%struct.sec_queue*, i32) #1

declare dso_local i32 @sec_queue_abn_irq_disable(%struct.sec_queue*) #1

declare dso_local i32 @sec_queue_irq_disable(%struct.sec_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
