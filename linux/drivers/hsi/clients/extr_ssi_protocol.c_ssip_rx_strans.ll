; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_strans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_rx_strans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i64, i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.hsi_msg = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"RX strans: %d frames\0A\00", align 1
@ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"START TRANS wrong state: S(%d) M(%d)\0A\00", align 1
@RECEIVING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"START TRANS id %d expected %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"No memory for rx skb\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"No memory for RX data msg\0A\00", align 1
@ssip_rx_data_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_client*, i32)* @ssip_rx_strans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_rx_strans(%struct.hsi_client* %0, i32 %1) #0 {
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssi_protocol*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hsi_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %10 = call %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client* %9)
  store %struct.ssi_protocol* %10, %struct.ssi_protocol** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @SSIP_PDU_LENGTH(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %14 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %13, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %18 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %17, i32 0, i32 3
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %21 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ACTIVE, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %30 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %29, i32 0, i32 0
  %31 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %32 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %35 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33, i64 %36)
  %38 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %39 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %38, i32 0, i32 3
  %40 = call i32 @spin_unlock_bh(i32* %39)
  br label %127

41:                                               ; preds = %2
  %42 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %43 = load i32, i32* @RECEIVING, align 4
  %44 = call i32 @ssip_set_rxstate(%struct.ssi_protocol* %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @SSIP_MSG_ID(i32 %45)
  %47 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %48 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %41
  %55 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %56 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %55, i32 0, i32 0
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @SSIP_MSG_ID(i32 %57)
  %59 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %60 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %61)
  %63 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %64 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %63, i32 0, i32 3
  %65 = call i32 @spin_unlock_bh(i32* %64)
  br label %124

66:                                               ; preds = %41
  %67 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %68 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %72 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %71, i32 0, i32 3
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %75 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 4
  %79 = call %struct.sk_buff* @netdev_alloc_skb(i32 %76, i32 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %6, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %66
  %87 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %88 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %124

90:                                               ; preds = %66
  %91 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %92 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %97, 4
  %99 = call i32 @skb_put(%struct.sk_buff* %96, i32 %98)
  %100 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i32, i32* @GFP_ATOMIC, align 4
  %103 = call %struct.hsi_msg* @ssip_alloc_data(%struct.ssi_protocol* %100, %struct.sk_buff* %101, i32 %102)
  store %struct.hsi_msg* %103, %struct.hsi_msg** %7, align 8
  %104 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %105 = icmp ne %struct.hsi_msg* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %90
  %111 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %112 = getelementptr inbounds %struct.hsi_client, %struct.hsi_client* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %121

114:                                              ; preds = %90
  %115 = load i32, i32* @ssip_rx_data_complete, align 4
  %116 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %117 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %119 = load %struct.hsi_msg*, %struct.hsi_msg** %7, align 8
  %120 = call i32 @hsi_async_read(%struct.hsi_client* %118, %struct.hsi_msg* %119)
  br label %127

121:                                              ; preds = %110
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = call i32 @dev_kfree_skb(%struct.sk_buff* %122)
  br label %124

124:                                              ; preds = %121, %86, %54
  %125 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %126 = call i32 @ssip_error(%struct.hsi_client* %125)
  br label %127

127:                                              ; preds = %124, %114, %28
  ret void
}

declare dso_local %struct.ssi_protocol* @hsi_client_drvdata(%struct.hsi_client*) #1

declare dso_local i32 @SSIP_PDU_LENGTH(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ssip_set_rxstate(%struct.ssi_protocol*, i32) #1

declare dso_local i64 @SSIP_MSG_ID(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.hsi_msg* @ssip_alloc_data(%struct.ssi_protocol*, %struct.sk_buff*, i32) #1

declare dso_local i32 @hsi_async_read(%struct.hsi_client*, %struct.hsi_msg*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ssip_error(%struct.hsi_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
