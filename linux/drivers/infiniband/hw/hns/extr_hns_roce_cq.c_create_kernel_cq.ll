; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_create_kernel_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_create_kernel_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, i64, i64, %struct.hns_roce_uar, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_uar = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_cq = type { i32, %struct.TYPE_5__, i64, i32, i64* }
%struct.TYPE_5__ = type { i64* }

@HNS_ROCE_CAP_FLAG_RECORD_DB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to alloc_cq_buf.\0A\00", align 1
@DB_REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_cq*, i32)* @create_kernel_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_kernel_cq(%struct.hns_roce_dev* %0, %struct.hns_roce_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hns_roce_uar*, align 8
  %10 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_cq* %1, %struct.hns_roce_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 4
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HNS_ROCE_CAP_FLAG_RECORD_DB, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %23 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %24 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %23, i32 0, i32 1
  %25 = call i32 @hns_roce_alloc_db(%struct.hns_roce_dev* %22, %struct.TYPE_5__* %24, i32 1)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %87

30:                                               ; preds = %21
  %31 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %32 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %36 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %35, i32 0, i32 4
  store i64* %34, i64** %36, align 8
  %37 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %38 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %41 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %30, %3
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %44 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %45 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %44, i32 0, i32 3
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hns_roce_ib_alloc_cq_buf(%struct.hns_roce_dev* %43, i32* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %72

53:                                               ; preds = %42
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %55 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %54, i32 0, i32 3
  store %struct.hns_roce_uar* %55, %struct.hns_roce_uar** %9, align 8
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %60 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* @DB_REG_OFFSET, align 4
  %64 = load %struct.hns_roce_uar*, %struct.hns_roce_uar** %9, align 8
  %65 = getelementptr inbounds %struct.hns_roce_uar, %struct.hns_roce_uar* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %71 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %87

72:                                               ; preds = %50
  %73 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %74 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @HNS_ROCE_CAP_FLAG_RECORD_DB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %82 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %83 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %82, i32 0, i32 1
  %84 = call i32 @hns_roce_free_db(%struct.hns_roce_dev* %81, %struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %80, %72
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %53, %28
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @hns_roce_alloc_db(%struct.hns_roce_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @hns_roce_ib_alloc_cq_buf(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_free_db(%struct.hns_roce_dev*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
