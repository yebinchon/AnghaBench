; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_prepare_ack_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_prepare_ack_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.rxe_qp = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rxe_pkt_info = type { i32, i32, i32, i32, i64, i32, %struct.rxe_qp* }
%struct.rxe_dev = type { i32 }

@rxe_opcode = common dso_local global %struct.TYPE_8__* null, align 8
@RXE_ICRC_SIZE = common dso_local global i32 0, align 4
@RXE_BTH_BYTES = common dso_local global i64 0, align 8
@RXE_AETH_MASK = common dso_local global i32 0, align 4
@RXE_ATMACK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_pkt_info*, i32, i32, i32, i32, i32*)* @prepare_ack_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @prepare_ack_packet(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.rxe_qp*, align 8
  %11 = alloca %struct.rxe_pkt_info*, align 8
  %12 = alloca %struct.rxe_pkt_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.rxe_dev*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.rxe_qp* %0, %struct.rxe_qp** %10, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %11, align 8
  store %struct.rxe_pkt_info* %2, %struct.rxe_pkt_info** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %25 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  %26 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.rxe_dev* @to_rdev(i32 %28)
  store %struct.rxe_dev* %29, %struct.rxe_dev** %18, align 8
  store i32 0, i32* %20, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sub nsw i32 0, %30
  %32 = and i32 %31, 3
  store i32 %32, i32* %23, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rxe_opcode, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %23, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* @RXE_ICRC_SIZE, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %22, align 4
  %45 = load %struct.rxe_dev*, %struct.rxe_dev** %18, align 8
  %46 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  %47 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %46, i32 0, i32 2
  %48 = load i32, i32* %22, align 4
  %49 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %50 = call %struct.sk_buff* @rxe_init_packet(%struct.rxe_dev* %45, i32* %47, i32 %48, %struct.rxe_pkt_info* %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %19, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %171

54:                                               ; preds = %8
  %55 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  %56 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %57 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %56, i32 0, i32 6
  store %struct.rxe_qp* %55, %struct.rxe_qp** %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %60 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @rxe_opcode, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %68 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %70 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %73 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %72, i32 0, i32 4
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %22, align 4
  %75 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %76 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %78 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %81 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %11, align 8
  %84 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RXE_BTH_BYTES, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @memcpy(i32 %79, i32 %82, i64 %87)
  %89 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @bth_set_opcode(%struct.rxe_pkt_info* %89, i32 %90)
  %92 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %93 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  %94 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bth_set_qpn(%struct.rxe_pkt_info* %92, i32 %96)
  %98 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %99 = load i32, i32* %23, align 4
  %100 = call i32 @bth_set_pad(%struct.rxe_pkt_info* %98, i32 %99)
  %101 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %102 = call i32 @bth_set_se(%struct.rxe_pkt_info* %101, i32 0)
  %103 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @bth_set_psn(%struct.rxe_pkt_info* %103, i32 %104)
  %106 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %107 = call i32 @bth_set_ack(%struct.rxe_pkt_info* %106, i32 0)
  %108 = load i32, i32* %15, align 4
  %109 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %110 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %112 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RXE_AETH_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %54
  %118 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @aeth_set_syn(%struct.rxe_pkt_info* %118, i32 %119)
  %121 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %122 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  %123 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @aeth_set_msn(%struct.rxe_pkt_info* %121, i32 %125)
  br label %127

127:                                              ; preds = %117, %54
  %128 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %129 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RXE_ATMACK_MASK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %136 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  %137 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @atmack_set_orig(%struct.rxe_pkt_info* %135, i32 %139)
  br label %141

141:                                              ; preds = %134, %127
  %142 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %144 = call i32 @rxe_prepare(%struct.rxe_pkt_info* %142, %struct.sk_buff* %143, i32* %20)
  store i32 %144, i32* %24, align 4
  %145 = load i32, i32* %24, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %149 = call i32 @kfree_skb(%struct.sk_buff* %148)
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %171

150:                                              ; preds = %141
  %151 = load i32*, i32** %17, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %20, align 4
  %155 = load i32*, i32** %17, align 8
  store i32 %154, i32* %155, align 4
  br label %169

156:                                              ; preds = %150
  %157 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %158 = call i32* @payload_addr(%struct.rxe_pkt_info* %157)
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %12, align 8
  %163 = call i32 @bth_pad(%struct.rxe_pkt_info* %162)
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32* %165, i32** %21, align 8
  %166 = load i32, i32* %20, align 4
  %167 = xor i32 %166, -1
  %168 = load i32*, i32** %21, align 8
  store i32 %167, i32* %168, align 4
  br label %169

169:                                              ; preds = %156, %153
  %170 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %170, %struct.sk_buff** %9, align 8
  br label %171

171:                                              ; preds = %169, %147, %53
  %172 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %172
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.sk_buff* @rxe_init_packet(%struct.rxe_dev*, i32*, i32, %struct.rxe_pkt_info*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @bth_set_opcode(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @bth_set_qpn(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @bth_set_pad(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @bth_set_se(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @bth_set_psn(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @bth_set_ack(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @aeth_set_syn(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @aeth_set_msn(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @atmack_set_orig(%struct.rxe_pkt_info*, i32) #1

declare dso_local i32 @rxe_prepare(%struct.rxe_pkt_info*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32* @payload_addr(%struct.rxe_pkt_info*) #1

declare dso_local i32 @bth_pad(%struct.rxe_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
