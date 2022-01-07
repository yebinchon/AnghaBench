; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_user_sdma_txadd_ahg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.c_user_sdma_txadd_ahg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_sdma_request = type { i32, %struct.TYPE_7__, %struct.hfi1_user_sdma_pkt_q* }
%struct.TYPE_7__ = type { i32* }
%struct.hfi1_user_sdma_pkt_q = type { i32 }
%struct.user_sdma_txreq = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@SDMA_TXREQ_F_AHG_COPY = common dso_local global i32 0, align 4
@user_sdma_txreq_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_sdma_request*, %struct.user_sdma_txreq*, i64)* @user_sdma_txadd_ahg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_sdma_txadd_ahg(%struct.user_sdma_request* %0, %struct.user_sdma_txreq* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_sdma_request*, align 8
  %6 = alloca %struct.user_sdma_txreq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.hfi1_user_sdma_pkt_q*, align 8
  store %struct.user_sdma_request* %0, %struct.user_sdma_request** %5, align 8
  store %struct.user_sdma_txreq* %1, %struct.user_sdma_txreq** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %13 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %20 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %19, i32 0, i32 1
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @pad_len(i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @get_lrh_len(i32* %24, i32 %22)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %27 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %26, i32 0, i32 2
  %28 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %27, align 8
  store %struct.hfi1_user_sdma_pkt_q* %28, %struct.hfi1_user_sdma_pkt_q** %11, align 8
  %29 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %30 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %29, i32 0, i32 1
  %31 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %32 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %31, i32 0, i32 1
  %33 = call i32 @memcpy(%struct.TYPE_6__* %30, %struct.TYPE_7__* %32, i32 8)
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @PBC2LRH(i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 61440
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @LRH2PBC(i64 %41)
  %43 = or i32 %40, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %47 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %38, %3
  %52 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %53 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %54 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %53, i32 0, i32 1
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @check_header_template(%struct.user_sdma_request* %52, %struct.TYPE_6__* %54, i64 %55, i64 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %98

62:                                               ; preds = %51
  %63 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %64 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %63, i32 0, i32 0
  %65 = load i32, i32* @SDMA_TXREQ_F_AHG_COPY, align 4
  %66 = load i64, i64* %7, align 8
  %67 = add i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.user_sdma_request*, %struct.user_sdma_request** %5, align 8
  %70 = getelementptr inbounds %struct.user_sdma_request, %struct.user_sdma_request* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @user_sdma_txreq_cb, align 4
  %73 = call i32 @sdma_txinit_ahg(i32* %64, i32 %65, i32 %68, i32 %71, i32 0, i32* null, i32 0, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %98

78:                                               ; preds = %62
  %79 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %11, align 8
  %80 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %83 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %82, i32 0, i32 0
  %84 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %85 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %84, i32 0, i32 1
  %86 = call i32 @sdma_txadd_kvaddr(i32 %81, i32* %83, %struct.TYPE_6__* %85, i32 8)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.hfi1_user_sdma_pkt_q*, %struct.hfi1_user_sdma_pkt_q** %11, align 8
  %91 = getelementptr inbounds %struct.hfi1_user_sdma_pkt_q, %struct.hfi1_user_sdma_pkt_q* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.user_sdma_txreq*, %struct.user_sdma_txreq** %6, align 8
  %94 = getelementptr inbounds %struct.user_sdma_txreq, %struct.user_sdma_txreq* %93, i32 0, i32 0
  %95 = call i32 @sdma_txclean(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %89, %78
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %76, %60
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @get_lrh_len(i32*, i32) #1

declare dso_local i32 @pad_len(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @PBC2LRH(i32) #1

declare dso_local i32 @LRH2PBC(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @check_header_template(%struct.user_sdma_request*, %struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @sdma_txinit_ahg(i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sdma_txadd_kvaddr(i32, i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @sdma_txclean(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
