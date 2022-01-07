; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_restart_rc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_rc.c_qib_restart_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_swqe = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.qib_ibport = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@IB_MIG_ARMED = common dso_local global i64 0, align 8
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@QIB_PSN_MASK = common dso_local global i32 0, align 4
@RVT_S_WAIT_FENCE = common dso_local global i32 0, align 4
@RVT_S_WAIT_RDMAR = common dso_local global i32 0, align 4
@RVT_S_WAIT_SSN_CREDIT = common dso_local global i32 0, align 4
@RVT_S_WAIT_PSN = common dso_local global i32 0, align 4
@RVT_S_WAIT_ACK = common dso_local global i32 0, align 4
@RVT_S_SEND_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_restart_rc(%struct.rvt_qp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvt_swqe*, align 8
  %8 = alloca %struct.qib_ibport*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %9, i64 %12)
  store %struct.rvt_swqe* %13, %struct.rvt_swqe** %7, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IB_MIG_ARMED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %26 = call i32 @qib_migrate_qp(%struct.rvt_qp* %25)
  %27 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %28 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %31 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %49

32:                                               ; preds = %18
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %34 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %37 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %42 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %43 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %44 = call i32 @rvt_send_complete(%struct.rvt_qp* %41, %struct.rvt_swqe* %42, i32 %43)
  %45 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %46 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %47 = call i32 @rvt_error_qp(%struct.rvt_qp* %45, i32 %46)
  br label %117

48:                                               ; preds = %32
  br label %117

49:                                               ; preds = %24
  br label %55

50:                                               ; preds = %3
  %51 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %52 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %49
  %56 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %57 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %61 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.qib_ibport* @to_iport(i32 %59, i32 %62)
  store %struct.qib_ibport* %63, %struct.qib_ibport** %8, align 8
  %64 = load %struct.rvt_swqe*, %struct.rvt_swqe** %7, align 8
  %65 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %72 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %90

76:                                               ; preds = %55
  %77 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %78 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* @QIB_PSN_MASK, align 4
  %83 = and i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %86 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %84
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %76, %70
  %91 = load i32, i32* @RVT_S_WAIT_FENCE, align 4
  %92 = load i32, i32* @RVT_S_WAIT_RDMAR, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RVT_S_WAIT_SSN_CREDIT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RVT_S_WAIT_PSN, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RVT_S_WAIT_ACK, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %102 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %90
  %108 = load i32, i32* @RVT_S_SEND_ONE, align 4
  %109 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %110 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %90
  %114 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @reset_psn(%struct.rvt_qp* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %48, %40
  ret void
}

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i32 @qib_migrate_qp(%struct.rvt_qp*) #1

declare dso_local i32 @rvt_send_complete(%struct.rvt_qp*, %struct.rvt_swqe*, i32) #1

declare dso_local i32 @rvt_error_qp(%struct.rvt_qp*, i32) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local i32 @reset_psn(%struct.rvt_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
