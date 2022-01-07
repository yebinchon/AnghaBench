; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_complete_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_complete_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32*, %struct.ib_mad_recv_wc*)* }
%struct.ib_mad_recv_wc = type { %struct.TYPE_11__, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_mad_send_wr_private = type { i32 }
%struct.ib_mad_send_wc = type { i32*, i64, i32 }
%struct.ib_rmpp_mad = type { i32 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @ib_mad_complete_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_mad_complete_recv(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_mad_send_wr_private*, align 8
  %6 = alloca %struct.ib_mad_send_wc, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %9 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %10 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %13 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %14 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ib_mad_enforce_security(%struct.ib_mad_agent_private* %12, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %23 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %22)
  %24 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %25 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %24)
  br label %154

26:                                               ; preds = %2
  %27 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %28 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %31 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %30, i32 0, i32 1
  %32 = call i32 @list_add(i32* %29, i32* %31)
  %33 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %34 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %33, i32 0, i32 0
  %35 = call i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_12__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %39 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %40 = call %struct.ib_mad_recv_wc* @ib_process_rmpp_recv_wc(%struct.ib_mad_agent_private* %38, %struct.ib_mad_recv_wc* %39)
  store %struct.ib_mad_recv_wc* %40, %struct.ib_mad_recv_wc** %4, align 8
  %41 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %42 = icmp ne %struct.ib_mad_recv_wc* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %45 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %44)
  br label %154

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %49 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i64 @ib_response_mad(%struct.TYPE_13__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %142

55:                                               ; preds = %47
  %56 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %57 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %56, i32 0, i32 2
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %61 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %62 = call %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private* %60, %struct.ib_mad_recv_wc* %61)
  store %struct.ib_mad_send_wr_private* %62, %struct.ib_mad_send_wr_private** %5, align 8
  %63 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %64 = icmp ne %struct.ib_mad_send_wr_private* %63, null
  br i1 %64, label %113, label %65

65:                                               ; preds = %55
  %66 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %67 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %66, i32 0, i32 2
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %71 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %70, i32 0, i32 0
  %72 = call i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_12__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %107, label %74

74:                                               ; preds = %65
  %75 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %76 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ib_is_mad_class_rmpp(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %74
  %85 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %86 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = bitcast %struct.TYPE_10__* %88 to %struct.ib_rmpp_mad*
  %90 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %89, i32 0, i32 0
  %91 = call i32 @ib_get_rmpp_flags(i32* %90)
  %92 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %97 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_12__*, i32*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_12__*, i32*, %struct.ib_mad_recv_wc*)** %98, align 8
  %100 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %101 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %100, i32 0, i32 0
  %102 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %103 = call i32 %99(%struct.TYPE_12__* %101, i32* null, %struct.ib_mad_recv_wc* %102)
  %104 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %105 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %104, i32 0, i32 1
  %106 = call i32 @atomic_dec(i32* %105)
  br label %112

107:                                              ; preds = %84, %74, %65
  %108 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %109 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %108)
  %110 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %111 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %110)
  br label %154

112:                                              ; preds = %95
  br label %141

113:                                              ; preds = %55
  %114 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %115 = call i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private* %114)
  %116 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %117 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %116, i32 0, i32 2
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %121 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_12__*, i32*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_12__*, i32*, %struct.ib_mad_recv_wc*)** %122, align 8
  %124 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %125 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %124, i32 0, i32 0
  %126 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %127 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %126, i32 0, i32 0
  %128 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %129 = call i32 %123(%struct.TYPE_12__* %125, i32* %127, %struct.ib_mad_recv_wc* %128)
  %130 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %131 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %130, i32 0, i32 1
  %132 = call i32 @atomic_dec(i32* %131)
  %133 = load i32, i32* @IB_WC_SUCCESS, align 4
  %134 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %137 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %6, i32 0, i32 0
  store i32* %137, i32** %138, align 8
  %139 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %140 = call i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private* %139, %struct.ib_mad_send_wc* %6)
  br label %141

141:                                              ; preds = %113, %112
  br label %153

142:                                              ; preds = %47
  %143 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %144 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_12__*, i32*, %struct.ib_mad_recv_wc*)*, i32 (%struct.TYPE_12__*, i32*, %struct.ib_mad_recv_wc*)** %145, align 8
  %147 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %148 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %147, i32 0, i32 0
  %149 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %150 = call i32 %146(%struct.TYPE_12__* %148, i32* null, %struct.ib_mad_recv_wc* %149)
  %151 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %152 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %151)
  br label %153

153:                                              ; preds = %142, %141
  br label %154

154:                                              ; preds = %153, %107, %43, %21
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ib_mad_enforce_security(%struct.ib_mad_agent_private*, i32) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_12__*) #1

declare dso_local %struct.ib_mad_recv_wc* @ib_process_rmpp_recv_wc(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i64 @ib_response_mad(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @ib_is_mad_class_rmpp(i32) #1

declare dso_local i32 @ib_get_rmpp_flags(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
