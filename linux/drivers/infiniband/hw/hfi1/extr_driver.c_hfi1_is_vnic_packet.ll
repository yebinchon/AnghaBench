; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_is_vnic_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_is_vnic_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@OPA_16B_L2_TYPE = common dso_local global i64 0, align 8
@OPA_16B_L4_ETHR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @hfi1_is_vnic_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_is_vnic_packet(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %4 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %5 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @hfi1_16B_get_l2(i32 %14)
  %16 = load i64, i64* @OPA_16B_L2_TYPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %20 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @hfi1_16B_get_l4(i32 %21)
  %23 = load i64, i64* @OPA_16B_L4_ETHR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %18, %11
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @hfi1_16B_get_l2(i32) #1

declare dso_local i64 @hfi1_16B_get_l4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
