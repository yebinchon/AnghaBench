; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_fill_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_fill_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_send_wqe = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.rxe_pkt_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rxe_dev = type { i32 }

@RXE_WRITE_OR_SEND = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@from_mem_obj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_send_wqe*, %struct.rxe_pkt_info*, %struct.sk_buff*, i32)* @fill_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_packet(%struct.rxe_qp* %0, %struct.rxe_send_wqe* %1, %struct.rxe_pkt_info* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxe_qp*, align 8
  %8 = alloca %struct.rxe_send_wqe*, align 8
  %9 = alloca %struct.rxe_pkt_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rxe_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %7, align 8
  store %struct.rxe_send_wqe* %1, %struct.rxe_send_wqe** %8, align 8
  store %struct.rxe_pkt_info* %2, %struct.rxe_pkt_info** %9, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %18 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rxe_dev* @to_rdev(i32 %20)
  store %struct.rxe_dev* %21, %struct.rxe_dev** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = call i32 @rxe_prepare(%struct.rxe_pkt_info* %22, %struct.sk_buff* %23, i32* %13)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %107

29:                                               ; preds = %5
  %30 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %31 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RXE_WRITE_OR_SEND, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %94

36:                                               ; preds = %29
  %37 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %38 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IB_SEND_INLINE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %36
  %45 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %46 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %50 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32* %53, i32** %16, align 8
  %54 = load %struct.rxe_dev*, %struct.rxe_dev** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @rxe_crc32(%struct.rxe_dev* %54, i32 %55, i32* %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %60 = call i32* @payload_addr(%struct.rxe_pkt_info* %59)
  %61 = load i32*, i32** %16, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @memcpy(i32* %60, i32* %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %66 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, %64
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %73 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %71
  store i64 %76, i64* %74, align 8
  br label %93

77:                                               ; preds = %36
  %78 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %79 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %8, align 8
  %82 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %81, i32 0, i32 0
  %83 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %84 = call i32* @payload_addr(%struct.rxe_pkt_info* %83)
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @from_mem_obj, align 4
  %87 = call i32 @copy_data(i32 %80, i32 0, %struct.TYPE_6__* %82, i32* %84, i32 %85, i32 %86, i32* %13)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %6, align 4
  br label %107

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %44
  br label %94

94:                                               ; preds = %93, %29
  %95 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %96 = call i32* @payload_addr(%struct.rxe_pkt_info* %95)
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %9, align 8
  %101 = call i32 @bth_pad(%struct.rxe_pkt_info* %100)
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32* %103, i32** %14, align 8
  %104 = load i32, i32* %13, align 4
  %105 = xor i32 %104, -1
  %106 = load i32*, i32** %14, align 8
  store i32 %105, i32* %106, align 4
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %94, %90, %27
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i32 @rxe_prepare(%struct.rxe_pkt_info*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @rxe_crc32(%struct.rxe_dev*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @payload_addr(%struct.rxe_pkt_info*) #1

declare dso_local i32 @copy_data(i32, i32, %struct.TYPE_6__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @bth_pad(%struct.rxe_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
