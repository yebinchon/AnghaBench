; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i64 }
%struct.hns_roce_v2_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CMD_CSQ_DESC_NUM = common dso_local global i32 0, align 4
@CMD_CRQ_DESC_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_CMQ_TX_TIMEOUT = common dso_local global i32 0, align 4
@TYPE_CSQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Init CSQ error, ret = %d.\0A\00", align 1
@TYPE_CRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Init CRQ error, ret = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v2_cmq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_cmq_init(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_v2_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %9, %struct.hns_roce_v2_priv** %4, align 8
  %10 = load i32, i32* @CMD_CSQ_DESC_NUM, align 4
  %11 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @CMD_CRQ_DESC_NUM, align 4
  %16 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %21 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %26 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load i32, i32* @HNS_ROCE_CMQ_TX_TIMEOUT, align 4
  %31 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %32 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %35 = load i32, i32* @TYPE_CSQ, align 4
  %36 = call i32 @hns_roce_init_cmq_ring(%struct.hns_roce_dev* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %1
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %72

46:                                               ; preds = %1
  %47 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %48 = load i32, i32* @TYPE_CRQ, align 4
  %49 = call i32 @hns_roce_init_cmq_ring(%struct.hns_roce_dev* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %65

58:                                               ; preds = %46
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %60 = load i32, i32* @TYPE_CSQ, align 4
  %61 = call i32 @hns_roce_cmq_init_regs(%struct.hns_roce_dev* %59, i32 %60)
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %63 = load i32, i32* @TYPE_CRQ, align 4
  %64 = call i32 @hns_roce_cmq_init_regs(%struct.hns_roce_dev* %62, i32 %63)
  store i32 0, i32* %2, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %67 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %4, align 8
  %68 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i32 @hns_roce_free_cmq_desc(%struct.hns_roce_dev* %66, %struct.TYPE_6__* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %58, %39
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hns_roce_init_cmq_ring(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hns_roce_cmq_init_regs(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_free_cmq_desc(%struct.hns_roce_dev*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
