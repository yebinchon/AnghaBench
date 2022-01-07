; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_do_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.qib_qp_priv* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.qib_qp_priv = type { i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32, i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@RVT_S_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_do_send(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.qib_qp_priv*, align 8
  %4 = alloca %struct.qib_ibport*, align 8
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32 (%struct.rvt_qp*, i64*)*, align 8
  %7 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %8 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %9 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %8, i32 0, i32 8
  %10 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %9, align 8
  store %struct.qib_qp_priv* %10, %struct.qib_qp_priv** %3, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.qib_ibport* @to_iport(i32 %14, i32 %17)
  store %struct.qib_ibport* %18, %struct.qib_ibport** %4, align 8
  %19 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %20 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %19)
  store %struct.qib_pportdata* %20, %struct.qib_pportdata** %5, align 8
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_QPT_RC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_QPT_UC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %27, %1
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 6
  %37 = call i32 @rdma_ah_get_dlid(i32* %36)
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %39 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = sub nsw i32 %41, 1
  %43 = xor i32 %42, -1
  %44 = and i32 %37, %43
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %46 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %51 = call i32 @rvt_ruc_loopback(%struct.rvt_qp* %50)
  br label %133

52:                                               ; preds = %34, %27
  %53 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %54 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IB_QPT_RC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 (%struct.rvt_qp*, i64*)* @qib_make_rc_req, i32 (%struct.rvt_qp*, i64*)** %6, align 8
  br label %70

60:                                               ; preds = %52
  %61 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %62 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IB_QPT_UC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 (%struct.rvt_qp*, i64*)* @qib_make_uc_req, i32 (%struct.rvt_qp*, i64*)** %6, align 8
  br label %69

68:                                               ; preds = %60
  store i32 (%struct.rvt_qp*, i64*)* @qib_make_ud_req, i32 (%struct.rvt_qp*, i64*)** %6, align 8
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %76 = call i32 @qib_send_ok(%struct.rvt_qp* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %80 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %79, i32 0, i32 0
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %133

83:                                               ; preds = %70
  %84 = load i32, i32* @RVT_S_BUSY, align 4
  %85 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %86 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %123, %83
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %91 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %96 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %95, i32 0, i32 0
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  %99 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %100 = load %struct.qib_qp_priv*, %struct.qib_qp_priv** %3, align 8
  %101 = getelementptr inbounds %struct.qib_qp_priv, %struct.qib_qp_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %104 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %107 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %110 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @qib_verbs_send(%struct.rvt_qp* %99, i32 %102, i32 %105, i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %94
  br label %133

115:                                              ; preds = %94
  %116 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %117 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %116, i32 0, i32 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %119 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %118, i32 0, i32 0
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %89
  br label %123

123:                                              ; preds = %122
  %124 = load i32 (%struct.rvt_qp*, i64*)*, i32 (%struct.rvt_qp*, i64*)** %6, align 8
  %125 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %126 = call i32 %124(%struct.rvt_qp* %125, i64* %7)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %89, label %128

128:                                              ; preds = %123
  %129 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %130 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %129, i32 0, i32 0
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %114, %78, %49
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @rdma_ah_get_dlid(i32*) #1

declare dso_local i32 @rvt_ruc_loopback(%struct.rvt_qp*) #1

declare dso_local i32 @qib_make_rc_req(%struct.rvt_qp*, i64*) #1

declare dso_local i32 @qib_make_uc_req(%struct.rvt_qp*, i64*) #1

declare dso_local i32 @qib_make_ud_req(%struct.rvt_qp*, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_send_ok(%struct.rvt_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @qib_verbs_send(%struct.rvt_qp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
