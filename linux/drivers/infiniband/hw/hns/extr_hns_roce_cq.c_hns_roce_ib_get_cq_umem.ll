; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_get_cq_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_get_cq_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_cq_buf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_umem = type { i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@HEM_TYPE_CQE = common dso_local global i32 0, align 4
@MTT_TYPE_CQE = common dso_local global i32 0, align 4
@MTT_TYPE_WQE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.ib_udata*, %struct.hns_roce_cq_buf*, %struct.ib_umem**, i32, i32)* @hns_roce_ib_get_cq_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_ib_get_cq_umem(%struct.hns_roce_dev* %0, %struct.ib_udata* %1, %struct.hns_roce_cq_buf* %2, %struct.ib_umem** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.hns_roce_cq_buf*, align 8
  %11 = alloca %struct.ib_umem**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %8, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %9, align 8
  store %struct.hns_roce_cq_buf* %2, %struct.hns_roce_cq_buf** %10, align 8
  store %struct.ib_umem** %3, %struct.ib_umem*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %26 = call %struct.ib_umem* @ib_umem_get(%struct.ib_udata* %17, i32 %18, i32 %24, i32 %25, i32 1)
  %27 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  store %struct.ib_umem* %26, %struct.ib_umem** %27, align 8
  %28 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %29 = load %struct.ib_umem*, %struct.ib_umem** %28, align 8
  %30 = call i64 @IS_ERR(%struct.ib_umem* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %6
  %33 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %34 = load %struct.ib_umem*, %struct.ib_umem** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.ib_umem* %34)
  store i32 %35, i32* %7, align 4
  br label %120

36:                                               ; preds = %6
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %38 = load i32, i32* @HEM_TYPE_CQE, align 4
  %39 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @MTT_TYPE_CQE, align 4
  %43 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %10, align 8
  %44 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %51

46:                                               ; preds = %36
  %47 = load i32, i32* @MTT_TYPE_WQE, align 4
  %48 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %10, align 8
  %49 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %53 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %59 = load %struct.ib_umem*, %struct.ib_umem** %58, align 8
  %60 = call i32 @ib_umem_page_count(%struct.ib_umem* %59)
  %61 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %62 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = add nsw i32 %60, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %69 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 1, %71
  %73 = sdiv i32 %67, %72
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %76 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %15, align 4
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %10, align 8
  %84 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %83, i32 0, i32 0
  %85 = call i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %80, i32 %81, i32 %82, %struct.TYPE_6__* %84)
  store i32 %85, i32* %14, align 4
  br label %95

86:                                               ; preds = %51
  %87 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %88 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %89 = load %struct.ib_umem*, %struct.ib_umem** %88, align 8
  %90 = call i32 @ib_umem_page_count(%struct.ib_umem* %89)
  %91 = load i32, i32* @PAGE_SHIFT, align 4
  %92 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %10, align 8
  %93 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %92, i32 0, i32 0
  %94 = call i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %87, i32 %90, i32 %91, %struct.TYPE_6__* %93)
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %86, %57
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %115

99:                                               ; preds = %95
  %100 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %101 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %10, align 8
  %102 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %101, i32 0, i32 0
  %103 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %104 = load %struct.ib_umem*, %struct.ib_umem** %103, align 8
  %105 = call i32 @hns_roce_ib_umem_write_mtt(%struct.hns_roce_dev* %100, %struct.TYPE_6__* %102, %struct.ib_umem* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %110

109:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %120

110:                                              ; preds = %108
  %111 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %112 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %10, align 8
  %113 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %112, i32 0, i32 0
  %114 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %111, %struct.TYPE_6__* %113)
  br label %115

115:                                              ; preds = %110, %98
  %116 = load %struct.ib_umem**, %struct.ib_umem*** %11, align 8
  %117 = load %struct.ib_umem*, %struct.ib_umem** %116, align 8
  %118 = call i32 @ib_umem_release(%struct.ib_umem* %117)
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %115, %109, %32
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local %struct.ib_umem* @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_umem*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_umem*) #1

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @ib_umem_page_count(%struct.ib_umem*) #1

declare dso_local i32 @hns_roce_mtt_init(%struct.hns_roce_dev*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @hns_roce_ib_umem_write_mtt(%struct.hns_roce_dev*, %struct.TYPE_6__*, %struct.ib_umem*) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
