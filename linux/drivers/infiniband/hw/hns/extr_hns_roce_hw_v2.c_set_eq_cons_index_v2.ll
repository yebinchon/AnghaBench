; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_eq_cons_index_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_set_eq_cons_index_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_eq = type { i64, i64, i32, i32, i32, %struct.hns_roce_dev* }
%struct.hns_roce_dev = type { i32 }

@HNS_ROCE_AEQ = common dso_local global i64 0, align 8
@HNS_ROCE_V2_EQ_DB_CMD_M = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_DB_CMD_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_ALWAYS_ARMED = common dso_local global i64 0, align 8
@HNS_ROCE_EQ_DB_CMD_AEQ = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_DB_CMD_AEQ_ARMED = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_DB_TAG_M = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_DB_TAG_S = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_DB_CMD_CEQ = common dso_local global i32 0, align 4
@HNS_ROCE_EQ_DB_CMD_CEQ_ARMED = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_DB_PARA_M = common dso_local global i32 0, align 4
@HNS_ROCE_V2_EQ_DB_PARA_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CONS_IDX_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_eq*)* @set_eq_cons_index_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_eq_cons_index_v2(%struct.hns_roce_eq* %0) #0 {
  %2 = alloca %struct.hns_roce_eq*, align 8
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca [2 x i64], align 16
  store %struct.hns_roce_eq* %0, %struct.hns_roce_eq** %2, align 8
  %5 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %6 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %5, i32 0, i32 5
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  store %struct.hns_roce_dev* %7, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %8, align 16
  %9 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %11 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @HNS_ROCE_AEQ, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %17 = load i64, i64* %16, align 16
  %18 = load i32, i32* @HNS_ROCE_V2_EQ_DB_CMD_M, align 4
  %19 = load i32, i32* @HNS_ROCE_V2_EQ_DB_CMD_S, align 4
  %20 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %21 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HNS_ROCE_V2_EQ_ALWAYS_ARMED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* @HNS_ROCE_EQ_DB_CMD_AEQ, align 4
  br label %29

27:                                               ; preds = %15
  %28 = load i32, i32* @HNS_ROCE_EQ_DB_CMD_AEQ_ARMED, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @roce_set_field(i64 %17, i32 %18, i32 %19, i32 %30)
  br label %57

32:                                               ; preds = %1
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = load i32, i32* @HNS_ROCE_V2_EQ_DB_TAG_M, align 4
  %36 = load i32, i32* @HNS_ROCE_V2_EQ_DB_TAG_S, align 4
  %37 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %38 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @roce_set_field(i64 %34, i32 %35, i32 %36, i32 %39)
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %42 = load i64, i64* %41, align 16
  %43 = load i32, i32* @HNS_ROCE_V2_EQ_DB_CMD_M, align 4
  %44 = load i32, i32* @HNS_ROCE_V2_EQ_DB_CMD_S, align 4
  %45 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %46 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HNS_ROCE_V2_EQ_ALWAYS_ARMED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @HNS_ROCE_EQ_DB_CMD_CEQ, align 4
  br label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @HNS_ROCE_EQ_DB_CMD_CEQ_ARMED, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @roce_set_field(i64 %42, i32 %43, i32 %44, i32 %55)
  br label %57

57:                                               ; preds = %54, %29
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @HNS_ROCE_V2_EQ_DB_PARA_M, align 4
  %61 = load i32, i32* @HNS_ROCE_V2_EQ_DB_PARA_S, align 4
  %62 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %63 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HNS_ROCE_V2_CONS_IDX_M, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @roce_set_field(i64 %59, i32 %60, i32 %61, i32 %66)
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %69 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %70 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %71 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @hns_roce_write64(%struct.hns_roce_dev* %68, i64* %69, i32 %72)
  ret void
}

declare dso_local i32 @roce_set_field(i64, i32, i32, i32) #1

declare dso_local i32 @hns_roce_write64(%struct.hns_roce_dev*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
