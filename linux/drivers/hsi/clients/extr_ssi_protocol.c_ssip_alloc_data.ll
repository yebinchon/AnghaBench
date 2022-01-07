; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_alloc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_alloc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { %struct.sk_buff*, i32, i32 }
%struct.ssi_protocol = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ssip_free_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hsi_msg* (%struct.ssi_protocol*, %struct.sk_buff*, i32)* @ssip_alloc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hsi_msg* @ssip_alloc_data(%struct.ssi_protocol* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.hsi_msg*, align 8
  %5 = alloca %struct.ssi_protocol*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hsi_msg*, align 8
  store %struct.ssi_protocol* %0, %struct.ssi_protocol** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.hsi_msg* @hsi_alloc_msg(i64 %13, i32 %14)
  store %struct.hsi_msg* %15, %struct.hsi_msg** %8, align 8
  %16 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %17 = icmp ne %struct.hsi_msg* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.hsi_msg* null, %struct.hsi_msg** %4, align 8
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %22 = call i32 @ssip_skb_to_msg(%struct.sk_buff* %20, %struct.hsi_msg* %21)
  %23 = load i32, i32* @ssip_free_data, align 4
  %24 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %25 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %27 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %30 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %33 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %32, i32 0, i32 0
  store %struct.sk_buff* %31, %struct.sk_buff** %33, align 8
  %34 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  store %struct.hsi_msg* %34, %struct.hsi_msg** %4, align 8
  br label %35

35:                                               ; preds = %19, %18
  %36 = load %struct.hsi_msg*, %struct.hsi_msg** %4, align 8
  ret %struct.hsi_msg* %36
}

declare dso_local %struct.hsi_msg* @hsi_alloc_msg(i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ssip_skb_to_msg(%struct.sk_buff*, %struct.hsi_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
