; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_init_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_init_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, %struct.TYPE_5__, %struct.rvt_sge*, %struct.rvt_sge_state }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_sge = type { i32 }
%struct.rvt_sge_state = type { i32, i64, %struct.rvt_sge, %struct.rvt_sge* }
%struct.rvt_rwqe = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ib_wc = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.rvt_lkey_table = type { i32 }
%struct.rvt_pd = type { i32 }
%struct.rvt_dev_info = type { %struct.rvt_lkey_table }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, %struct.rvt_rwqe*)* @init_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sge(%struct.rvt_qp* %0, %struct.rvt_rwqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.rvt_rwqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_wc, align 8
  %10 = alloca %struct.rvt_lkey_table*, align 8
  %11 = alloca %struct.rvt_pd*, align 8
  %12 = alloca %struct.rvt_sge_state*, align 8
  %13 = alloca %struct.rvt_dev_info*, align 8
  %14 = alloca %struct.rvt_sge*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store %struct.rvt_rwqe* %1, %struct.rvt_rwqe** %5, align 8
  %15 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %16 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %18)
  store %struct.rvt_dev_info* %19, %struct.rvt_dev_info** %13, align 8
  %20 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %13, align 8
  %21 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %20, i32 0, i32 0
  store %struct.rvt_lkey_table* %21, %struct.rvt_lkey_table** %10, align 8
  %22 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %23 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %29 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i32 [ %33, %27 ], [ %38, %34 ]
  %41 = call %struct.rvt_pd* @ibpd_to_rvtpd(i32 %40)
  store %struct.rvt_pd* %41, %struct.rvt_pd** %11, align 8
  %42 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %43 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %42, i32 0, i32 3
  store %struct.rvt_sge_state* %43, %struct.rvt_sge_state** %12, align 8
  %44 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %45 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %44, i32 0, i32 2
  %46 = load %struct.rvt_sge*, %struct.rvt_sge** %45, align 8
  %47 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %48 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %47, i32 0, i32 3
  store %struct.rvt_sge* %46, %struct.rvt_sge** %48, align 8
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %50 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %116, %39
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %5, align 8
  %54 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %51
  %58 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %5, align 8
  %59 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %116

68:                                               ; preds = %57
  %69 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %10, align 8
  %70 = load %struct.rvt_pd*, %struct.rvt_pd** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %75 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %74, i32 0, i32 3
  %76 = load %struct.rvt_sge*, %struct.rvt_sge** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %76, i64 %79
  br label %84

81:                                               ; preds = %68
  %82 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %83 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %82, i32 0, i32 2
  br label %84

84:                                               ; preds = %81, %73
  %85 = phi %struct.rvt_sge* [ %80, %73 ], [ %83, %81 ]
  %86 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %5, align 8
  %87 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = call i32 @rvt_cast_sge(%struct.TYPE_6__* %91)
  %93 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %94 = call i32 @rvt_lkey_ok(%struct.rvt_lkey_table* %69, %struct.rvt_pd* %70, %struct.rvt_sge* %85, i32* null, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp sle i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %128

101:                                              ; preds = %84
  %102 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %5, align 8
  %103 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %102, i32 0, i32 2
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %111 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %101, %67
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %51

119:                                              ; preds = %51
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %122 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %124 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %127 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  store i32 1, i32* %3, align 4
  br label %174

128:                                              ; preds = %100
  br label %129

129:                                              ; preds = %147, %128
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %129
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %138 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %137, i32 0, i32 3
  %139 = load %struct.rvt_sge*, %struct.rvt_sge** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %139, i64 %142
  br label %147

144:                                              ; preds = %132
  %145 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %146 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %145, i32 0, i32 2
  br label %147

147:                                              ; preds = %144, %136
  %148 = phi %struct.rvt_sge* [ %143, %136 ], [ %146, %144 ]
  store %struct.rvt_sge* %148, %struct.rvt_sge** %14, align 8
  %149 = load %struct.rvt_sge*, %struct.rvt_sge** %14, align 8
  %150 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @rvt_put_mr(i32 %151)
  br label %129

153:                                              ; preds = %129
  %154 = load %struct.rvt_sge_state*, %struct.rvt_sge_state** %12, align 8
  %155 = getelementptr inbounds %struct.rvt_sge_state, %struct.rvt_sge_state* %154, i32 0, i32 0
  store i32 0, i32* %155, align 8
  %156 = call i32 @memset(%struct.ib_wc* %9, i32 0, i32 24)
  %157 = load %struct.rvt_rwqe*, %struct.rvt_rwqe** %5, align 8
  %158 = getelementptr inbounds %struct.rvt_rwqe, %struct.rvt_rwqe* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 3
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %162 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 2
  store i32 %161, i32* %162, align 4
  %163 = load i32, i32* @IB_WC_RECV, align 4
  %164 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 1
  store i32 %163, i32* %164, align 8
  %165 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %166 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %9, i32 0, i32 0
  store %struct.TYPE_5__* %166, %struct.TYPE_5__** %167, align 8
  %168 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %169 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ibcq_to_rvtcq(i32 %171)
  %173 = call i32 @rvt_cq_enter(i32 %172, %struct.ib_wc* %9, i32 1)
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %153, %119
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local %struct.rvt_pd* @ibpd_to_rvtpd(i32) #1

declare dso_local i32 @rvt_lkey_ok(%struct.rvt_lkey_table*, %struct.rvt_pd*, %struct.rvt_sge*, i32*, i32, i32) #1

declare dso_local i32 @rvt_cast_sge(%struct.TYPE_6__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rvt_put_mr(i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @rvt_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @ibcq_to_rvtcq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
