; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_qp = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.hns_roce_qp* }
%struct.TYPE_4__ = type { %struct.hns_roce_qp* }
%struct.hns_roce_cq = type { i32 }

@IB_QPS_RESET = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_v1_destroy_qp(%struct.ib_qp* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca %struct.hns_roce_qp*, align 8
  %8 = alloca %struct.hns_roce_cq*, align 8
  %9 = alloca %struct.hns_roce_cq*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %11 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %12 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hns_roce_dev* @to_hr_dev(i32 %13)
  store %struct.hns_roce_dev* %14, %struct.hns_roce_dev** %6, align 8
  %15 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %16 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %15)
  store %struct.hns_roce_qp* %16, %struct.hns_roce_qp** %7, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %18 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %19 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IB_QPS_RESET, align 4
  %22 = call i32 @hns_roce_v1_modify_qp(%struct.ib_qp* %17, i32* null, i32 0, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %139

27:                                               ; preds = %2
  %28 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %29 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.hns_roce_cq* @to_hr_cq(i32 %31)
  store %struct.hns_roce_cq* %32, %struct.hns_roce_cq** %8, align 8
  %33 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %34 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.hns_roce_cq* @to_hr_cq(i32 %36)
  store %struct.hns_roce_cq* %37, %struct.hns_roce_cq** %9, align 8
  %38 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %39 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %40 = call i32 @hns_roce_lock_cqs(%struct.hns_roce_cq* %38, %struct.hns_roce_cq* %39)
  %41 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %42 = icmp ne %struct.ib_udata* %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %27
  %44 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %45 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %46 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %49 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %55 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32* @to_hr_srq(i64 %57)
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %53
  %61 = phi i32* [ %58, %53 ], [ null, %59 ]
  %62 = call i32 @__hns_roce_v1_cq_clean(%struct.hns_roce_cq* %44, i32 %47, i32* %61)
  %63 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %64 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %65 = icmp ne %struct.hns_roce_cq* %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %68 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %69 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @__hns_roce_v1_cq_clean(%struct.hns_roce_cq* %67, i32 %70, i32* null)
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %27
  %74 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %8, align 8
  %75 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %76 = call i32 @hns_roce_unlock_cqs(%struct.hns_roce_cq* %74, %struct.hns_roce_cq* %75)
  %77 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %78 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %79 = call i32 @hns_roce_qp_remove(%struct.hns_roce_dev* %77, %struct.hns_roce_qp* %78)
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %81 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %82 = call i32 @hns_roce_qp_free(%struct.hns_roce_dev* %80, %struct.hns_roce_qp* %81)
  %83 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %84 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IB_QPT_RC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %91 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %92 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @hns_roce_release_range_qp(%struct.hns_roce_dev* %90, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %89, %73
  %96 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %97 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %98 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %97, i32 0, i32 6
  %99 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %96, i32* %98)
  %100 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %101 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ib_umem_release(i32 %102)
  %104 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %105 = icmp ne %struct.ib_udata* %104, null
  br i1 %105, label %124, label %106

106:                                              ; preds = %95
  %107 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %108 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %109, align 8
  %111 = call i32 @kfree(%struct.hns_roce_qp* %110)
  %112 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %113 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %114, align 8
  %116 = call i32 @kfree(%struct.hns_roce_qp* %115)
  %117 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %118 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %119 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %122 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %121, i32 0, i32 1
  %123 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %117, i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %106, %95
  %125 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %126 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IB_QPT_RC, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %133 = call i32 @kfree(%struct.hns_roce_qp* %132)
  br label %138

134:                                              ; preds = %124
  %135 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %136 = call %struct.hns_roce_qp* @hr_to_hr_sqp(%struct.hns_roce_qp* %135)
  %137 = call i32 @kfree(%struct.hns_roce_qp* %136)
  br label %138

138:                                              ; preds = %134, %131
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %25
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

declare dso_local i32 @hns_roce_v1_modify_qp(%struct.ib_qp*, i32*, i32, i32, i32) #1

declare dso_local %struct.hns_roce_cq* @to_hr_cq(i32) #1

declare dso_local i32 @hns_roce_lock_cqs(%struct.hns_roce_cq*, %struct.hns_roce_cq*) #1

declare dso_local i32 @__hns_roce_v1_cq_clean(%struct.hns_roce_cq*, i32, i32*) #1

declare dso_local i32* @to_hr_srq(i64) #1

declare dso_local i32 @hns_roce_unlock_cqs(%struct.hns_roce_cq*, %struct.hns_roce_cq*) #1

declare dso_local i32 @hns_roce_qp_remove(%struct.hns_roce_dev*, %struct.hns_roce_qp*) #1

declare dso_local i32 @hns_roce_qp_free(%struct.hns_roce_dev*, %struct.hns_roce_qp*) #1

declare dso_local i32 @hns_roce_release_range_qp(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.hns_roce_qp*) #1

declare dso_local i32 @hns_roce_buf_free(%struct.hns_roce_dev*, i32, i32*) #1

declare dso_local %struct.hns_roce_qp* @hr_to_hr_sqp(%struct.hns_roce_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
