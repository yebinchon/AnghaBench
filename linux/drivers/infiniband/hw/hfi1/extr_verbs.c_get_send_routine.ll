; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_get_send_routine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_verbs.c_get_send_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.TYPE_2__, %struct.hfi1_qp_priv* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hfi1_qp_priv = type { i32, i32 }
%struct.hfi1_pkt_state = type { i32, %struct.verbs_txreq* }
%struct.verbs_txreq = type { i32, i32 }
%struct.hfi1_devdata = type { i32, i32, i32 }

@HFI1_HAS_SEND_DMA = common dso_local global i32 0, align 4
@piothreshold = common dso_local global i32 0, align 4
@OPMASK = common dso_local global i32 0, align 4
@pio_opmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*, %struct.hfi1_pkt_state*)* @get_send_routine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_send_routine(%struct.rvt_qp* %0, %struct.hfi1_pkt_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_qp*, align 8
  %5 = alloca %struct.hfi1_pkt_state*, align 8
  %6 = alloca %struct.hfi1_devdata*, align 8
  %7 = alloca %struct.hfi1_qp_priv*, align 8
  %8 = alloca %struct.verbs_txreq*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %4, align 8
  store %struct.hfi1_pkt_state* %1, %struct.hfi1_pkt_state** %5, align 8
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hfi1_devdata* @dd_from_ibdev(i32 %12)
  store %struct.hfi1_devdata* %13, %struct.hfi1_devdata** %6, align 8
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 2
  %16 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %15, align 8
  store %struct.hfi1_qp_priv* %16, %struct.hfi1_qp_priv** %7, align 8
  %17 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %17, i32 0, i32 1
  %19 = load %struct.verbs_txreq*, %struct.verbs_txreq** %18, align 8
  store %struct.verbs_txreq* %19, %struct.verbs_txreq** %8, align 8
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %32 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %2
  %35 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %36 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %99 [
    i32 130, label %39
    i32 132, label %43
    i32 128, label %43
    i32 129, label %44
    i32 131, label %44
  ]

39:                                               ; preds = %34
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %41 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %104

43:                                               ; preds = %34, %34
  br label %100

44:                                               ; preds = %34, %34
  %45 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %46 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %49 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sdiv i32 %51, 2
  %53 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %54 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @piothreshold, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %44
  %58 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %59 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @piothreshold, align 4
  %62 = load %struct.rvt_qp*, %struct.rvt_qp** %4, align 8
  %63 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @min(i32 %61, i32 %64)
  %66 = icmp sle i32 %60, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %57
  %68 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %5, align 8
  %69 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @OPMASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @BIT(i32 %72)
  %74 = load i32*, i32** @pio_opmask, align 8
  %75 = load %struct.hfi1_pkt_state*, %struct.hfi1_pkt_state** %5, align 8
  %76 = getelementptr inbounds %struct.hfi1_pkt_state, %struct.hfi1_pkt_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 5
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %73, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %67
  %85 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %7, align 8
  %86 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %85, i32 0, i32 1
  %87 = call i32 @iowait_sdma_pending(i32* %86)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.verbs_txreq*, %struct.verbs_txreq** %8, align 8
  %91 = getelementptr inbounds %struct.verbs_txreq, %struct.verbs_txreq* %90, i32 0, i32 1
  %92 = call i32 @sdma_txreq_built(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %96 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %3, align 4
  br label %104

98:                                               ; preds = %89, %84, %67, %57, %44
  br label %100

99:                                               ; preds = %34
  br label %100

100:                                              ; preds = %99, %98, %43
  %101 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %6, align 8
  %102 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %94, %39, %30
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.hfi1_devdata* @dd_from_ibdev(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iowait_sdma_pending(i32*) #1

declare dso_local i32 @sdma_txreq_built(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
