; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_read_tcb_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_read_tcb_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.cpl_get_tcb_rpl = type { i32 }
%struct.c4iw_ep = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TCB_T_FLAGS_W = common dso_local global i32 0, align 4
@TF_RX_PDU_OUT_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"tcb re-read() reached the guard limit, finishing the cleanup\0A\00", align 1
@TCB_RQ_START_W = common dso_local global i32 0, align 4
@TCB_RQ_START_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ep %p tid %u %016x\0A\00", align 1
@PEER_ABORT_IN_PROGRESS = common dso_local global i32 0, align 4
@ABORT_REQ_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"unexpected state!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.sk_buff*)* @read_tcb_rpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tcb_rpl(%struct.c4iw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c4iw_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.cpl_get_tcb_rpl*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.c4iw_ep*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.cpl_get_tcb_rpl* @cplhdr(%struct.sk_buff* %12)
  store %struct.cpl_get_tcb_rpl* %13, %struct.cpl_get_tcb_rpl** %6, align 8
  %14 = load %struct.cpl_get_tcb_rpl*, %struct.cpl_get_tcb_rpl** %6, align 8
  %15 = getelementptr inbounds %struct.cpl_get_tcb_rpl, %struct.cpl_get_tcb_rpl* %14, i64 1
  %16 = bitcast %struct.cpl_get_tcb_rpl* %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load %struct.cpl_get_tcb_rpl*, %struct.cpl_get_tcb_rpl** %6, align 8
  %18 = call i32 @GET_TID(%struct.cpl_get_tcb_rpl* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev* %19, i32 %20)
  store %struct.c4iw_ep* %21, %struct.c4iw_ep** %9, align 8
  %22 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %23 = icmp ne %struct.c4iw_ep* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

25:                                               ; preds = %2
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @TCB_T_FLAGS_W, align 4
  %28 = call i32 @t4_tcb_get_field64(i32* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @TF_RX_PDU_OUT_V(i32 1)
  %31 = and i32 %29, %30
  %32 = load i32, i32* @TF_RX_PDU_OUT_S, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %35 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %34, i32 0, i32 1
  %36 = call i32 @c4iw_put_ep(%struct.TYPE_2__* %35)
  %37 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %38 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %37, i32 0, i32 1
  %39 = call i32 @c4iw_put_ep(%struct.TYPE_2__* %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %25
  %43 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %44 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %61

50:                                               ; preds = %42
  %51 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %52 = call i32 @read_tcb(%struct.c4iw_ep* %51)
  store i32 0, i32* %3, align 4
  br label %94

53:                                               ; preds = %25
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @TCB_RQ_START_W, align 4
  %56 = load i32, i32* @TCB_RQ_START_W, align 4
  %57 = load i32, i32* @TCB_RQ_START_S, align 4
  %58 = call i32 @t4_tcb_get_field32(i32* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %60 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %48
  %62 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %63 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %64 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %67 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.c4iw_ep* %62, i32 %65, i32 %68)
  %70 = load i32, i32* @PEER_ABORT_IN_PROGRESS, align 4
  %71 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %72 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i64 @test_bit(i32 %70, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %61
  %77 = load %struct.c4iw_dev*, %struct.c4iw_dev** %4, align 8
  %78 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %79 = call i32 @finish_peer_abort(%struct.c4iw_dev* %77, %struct.c4iw_ep* %78)
  br label %93

80:                                               ; preds = %61
  %81 = load i32, i32* @ABORT_REQ_IN_PROGRESS, align 4
  %82 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %83 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i64 @test_bit(i32 %81, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %89 = call i32 @send_abort_req(%struct.c4iw_ep* %88)
  br label %92

90:                                               ; preds = %80
  %91 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %92, %76
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %50, %24
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.cpl_get_tcb_rpl* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_get_tcb_rpl*) #1

declare dso_local %struct.c4iw_ep* @get_ep_from_tid(%struct.c4iw_dev*, i32) #1

declare dso_local i32 @t4_tcb_get_field64(i32*, i32) #1

declare dso_local i32 @TF_RX_PDU_OUT_V(i32) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_2__*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @read_tcb(%struct.c4iw_ep*) #1

declare dso_local i32 @t4_tcb_get_field32(i32*, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @finish_peer_abort(%struct.c4iw_dev*, %struct.c4iw_ep*) #1

declare dso_local i32 @send_abort_req(%struct.c4iw_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
