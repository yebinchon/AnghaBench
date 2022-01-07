; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_update_cons_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cq.c_update_cons_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, i64 }
%struct.mthca_cq = type { i32, i32, i32* }

@MTHCA_TAVOR_CQ_DB_INC_CI = common dso_local global i32 0, align 4
@MTHCA_CQ_DOORBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*, %struct.mthca_cq*, i32)* @update_cons_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cons_index(%struct.mthca_dev* %0, %struct.mthca_cq* %1, i32 %2) #0 {
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca %struct.mthca_cq*, align 8
  %6 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store %struct.mthca_cq* %1, %struct.mthca_cq** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %8 = call i64 @mthca_is_memfree(%struct.mthca_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %12 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpu_to_be32(i32 %13)
  %15 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32 %14, i32* %17, align 4
  %18 = call i32 (...) @wmb()
  br label %36

19:                                               ; preds = %3
  %20 = load i32, i32* @MTHCA_TAVOR_CQ_DB_INC_CI, align 4
  %21 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %22 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %20, %23
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %28 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MTHCA_CQ_DOORBELL, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = call i32 @MTHCA_GET_DOORBELL_LOCK(i32* %33)
  %35 = call i32 @mthca_write64(i32 %24, i32 %26, i64 %31, i32 %34)
  br label %36

36:                                               ; preds = %19, %10
  ret void
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mthca_write64(i32, i32, i64, i32) #1

declare dso_local i32 @MTHCA_GET_DOORBELL_LOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
