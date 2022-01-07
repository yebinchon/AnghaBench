; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_opfn.c_opfn_conn_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_opfn.c_opfn_conn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_opfn_type = type { i32 (%struct.rvt_qp*, i32*)* }
%struct.rvt_qp = type { i32, %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ib_atomic_wr = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@STL_VERBS_EXTD_MAX = common dso_local global i32 0, align 4
@hfi1_opfn_handlers = common dso_local global %struct.hfi1_opfn_type* null, align 8
@IB_WR_OPFN = common dso_local global i32 0, align 4
@HFI1_VERBS_E_ATOMIC_VADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ib_ost_send failed: ret = \00", align 1
@STL_VERBS_EXTD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*)* @opfn_conn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opfn_conn_request(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  %3 = alloca %struct.hfi1_qp_priv*, align 8
  %4 = alloca %struct.ib_atomic_wr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_opfn_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 1
  %13 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %12, align 8
  store %struct.hfi1_qp_priv* %13, %struct.hfi1_qp_priv** %3, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %15 = call i32 @trace_hfi1_opfn_state_conn_request(%struct.rvt_qp* %14)
  %16 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %17 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %1
  %27 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %38 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %32
  %43 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %44 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %32, %26, %1
  br label %156

49:                                               ; preds = %42
  %50 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %51 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %55 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %53, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = xor i32 %62, -1
  %64 = and i32 %60, %63
  %65 = call i32 @ilog2(i32 %64)
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @STL_VERBS_EXTD_MAX, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %49
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @OPFN_CODE(i32 %71)
  %73 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %74 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %156

78:                                               ; preds = %49
  %79 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** @hfi1_opfn_handlers, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.hfi1_opfn_type, %struct.hfi1_opfn_type* %79, i64 %81
  store %struct.hfi1_opfn_type* %82, %struct.hfi1_opfn_type** %7, align 8
  %83 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** %7, align 8
  %84 = icmp ne %struct.hfi1_opfn_type* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** %7, align 8
  %87 = getelementptr inbounds %struct.hfi1_opfn_type, %struct.hfi1_opfn_type* %86, i32 0, i32 0
  %88 = load i32 (%struct.rvt_qp*, i32*)*, i32 (%struct.rvt_qp*, i32*)** %87, align 8
  %89 = icmp ne i32 (%struct.rvt_qp*, i32*)* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.hfi1_opfn_type*, %struct.hfi1_opfn_type** %7, align 8
  %92 = getelementptr inbounds %struct.hfi1_opfn_type, %struct.hfi1_opfn_type* %91, i32 0, i32 0
  %93 = load i32 (%struct.rvt_qp*, i32*)*, i32 (%struct.rvt_qp*, i32*)** %92, align 8
  %94 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %95 = call i32 %93(%struct.rvt_qp* %94, i32* %8)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %90, %85, %78
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @OPFN_CODE(i32 %98)
  %100 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %101 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %99
  store i32 %104, i32* %102, align 4
  br label %156

105:                                              ; preds = %90
  %106 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @trace_hfi1_opfn_data_conn_request(%struct.rvt_qp* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, -16
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %8, align 4
  %114 = call i32 @memset(%struct.ib_atomic_wr* %4, i32 0, i32 12)
  %115 = load i32, i32* @IB_WR_OPFN, align 4
  %116 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %4, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @HFI1_VERBS_E_ATOMIC_VADDR, align 4
  %119 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %4, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %4, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %124 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 4
  %126 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %127 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %132 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.ib_atomic_wr, %struct.ib_atomic_wr* %4, i32 0, i32 1
  %134 = call i32 @ib_post_send(i32* %132, %struct.TYPE_4__* %133, i32* null)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %105
  br label %141

138:                                              ; preds = %105
  %139 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %140 = call i32 @trace_hfi1_opfn_state_conn_request(%struct.rvt_qp* %139)
  br label %162

141:                                              ; preds = %137
  %142 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @trace_hfi1_msg_opfn_conn_request(%struct.rvt_qp* %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %146 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load i32, i32* @STL_VERBS_EXTD_NONE, align 4
  %151 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %152 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 4
  %154 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %155 = call i32 @opfn_schedule_conn_request(%struct.rvt_qp* %154)
  br label %156

156:                                              ; preds = %141, %97, %70, %48
  %157 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %3, align 8
  %158 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  br label %162

162:                                              ; preds = %156, %138
  ret void
}

declare dso_local i32 @trace_hfi1_opfn_state_conn_request(%struct.rvt_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @OPFN_CODE(i32) #1

declare dso_local i32 @trace_hfi1_opfn_data_conn_request(%struct.rvt_qp*, i32, i32) #1

declare dso_local i32 @memset(%struct.ib_atomic_wr*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_post_send(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @trace_hfi1_msg_opfn_conn_request(%struct.rvt_qp*, i8*, i32) #1

declare dso_local i32 @opfn_schedule_conn_request(%struct.rvt_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
