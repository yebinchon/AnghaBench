; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_pn_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_pn_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i64, i64, i32, i32, i32 }
%struct.hsi_msg = type { i32, i32 }

@ETH_P_PHONET = common dso_local global i32 0, align 4
@SSIP_MIN_PN_HDR = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Dropping tx data: No memory\0A\00", align 1
@ssip_tx_data_complete = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Dropping tx data: CMT is OFFLINE\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"TX queue full %d\0A\00", align 1
@SEND_IDLE = common dso_local global i64 0, align 8
@WAIT4READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Start TX qlen %d\0A\00", align 1
@SEND_READY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Start TX on SEND READY qlen %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ssip_pn_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssip_pn_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hsi_client*, align 8
  %7 = alloca %struct.ssi_protocol*, align 8
  %8 = alloca %struct.hsi_msg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hsi_client* @to_hsi_client(i32 %12)
  store %struct.hsi_client* %13, %struct.hsi_client** %6, align 8
  %14 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %15 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %14)
  store %struct.ssi_protocol* %15, %struct.ssi_protocol** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ETH_P_PHONET, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SSIP_MIN_PN_HDR, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %2
  br label %183

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 3
  %41 = sub nsw i32 4, %40
  %42 = call i64 @skb_pad(%struct.sk_buff* %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %186

45:                                               ; preds = %35, %29
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i64 @skb_cow_head(%struct.sk_buff* %46, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %183

50:                                               ; preds = %45
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @htons(i32 %56)
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %57, i32* %62, align 4
  %63 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call %struct.hsi_msg* @ssip_alloc_data(%struct.ssi_protocol* %63, %struct.sk_buff* %64, i32 %65)
  store %struct.hsi_msg* %66, %struct.hsi_msg** %8, align 8
  %67 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %68 = icmp ne %struct.hsi_msg* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %50
  %70 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %71 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %183

73:                                               ; preds = %50
  %74 = load i32, i32* @ssip_tx_data_complete, align 4
  %75 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %76 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %78 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %77, i32 0, i32 3
  %79 = call i32 @spin_lock_bh(i32* %78)
  %80 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %81 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ACTIVE, align 8
  %84 = icmp ne i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %73
  %89 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %90 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %89, i32 0, i32 3
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %93 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %92, i32 0, i32 0
  %94 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %180

95:                                               ; preds = %73
  %96 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %97 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %96, i32 0, i32 0
  %98 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %99 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %98, i32 0, i32 5
  %100 = call i32 @list_add_tail(i32* %97, i32* %99)
  %101 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %102 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %109 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %95
  %113 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %114 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %113, i32 0, i32 0
  %115 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %116 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @dev_info(i32* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %117)
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = call i32 @netif_stop_queue(%struct.net_device* %119)
  br label %121

121:                                              ; preds = %112, %95
  %122 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %123 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SEND_IDLE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %129 = load i32, i32* @WAIT4READY, align 4
  %130 = call i32 @ssip_set_txstate(%struct.ssi_protocol* %128, i32 %129)
  %131 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %132 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %131, i32 0, i32 3
  %133 = call i32 @spin_unlock_bh(i32* %132)
  %134 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %135 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %134, i32 0, i32 0
  %136 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %137 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %135, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %138)
  %140 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %141 = call i32 @hsi_start_tx(%struct.hsi_client* %140)
  br label %166

142:                                              ; preds = %121
  %143 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %144 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SEND_READY, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load %struct.hsi_client*, %struct.hsi_client** %6, align 8
  %150 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %149, i32 0, i32 0
  %151 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %152 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %150, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %153)
  %155 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %156 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %155, i32 0, i32 3
  %157 = call i32 @spin_unlock_bh(i32* %156)
  %158 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %159 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %158, i32 0, i32 4
  %160 = call i32 @schedule_work(i32* %159)
  br label %165

161:                                              ; preds = %142
  %162 = load %struct.ssi_protocol*, %struct.ssi_protocol** %7, align 8
  %163 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %162, i32 0, i32 3
  %164 = call i32 @spin_unlock_bh(i32* %163)
  br label %165

165:                                              ; preds = %161, %148
  br label %166

166:                                              ; preds = %165, %127
  %167 = load %struct.net_device*, %struct.net_device** %5, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.net_device*, %struct.net_device** %5, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, %174
  store i32 %179, i32* %177, align 8
  store i32 0, i32* %3, align 4
  br label %192

180:                                              ; preds = %88
  %181 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %182 = call i32 @hsi_free_msg(%struct.hsi_msg* %181)
  br label %183

183:                                              ; preds = %180, %69, %49, %28
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = call i32 @dev_kfree_skb(%struct.sk_buff* %184)
  br label %186

186:                                              ; preds = %183, %44
  %187 = load %struct.net_device*, %struct.net_device** %5, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %186, %166
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local %struct.hsi_client* @to_hsi_client(i32) #1

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @skb_pad(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local %struct.hsi_msg* @ssip_alloc_data(%struct.ssi_protocol*, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ssip_set_txstate(%struct.ssi_protocol*, i32) #1

declare dso_local i32 @hsi_start_tx(%struct.hsi_client*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @hsi_free_msg(%struct.hsi_msg*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
