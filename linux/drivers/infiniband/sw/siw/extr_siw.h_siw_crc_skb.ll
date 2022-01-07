; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_siw_crc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw.h_siw_crc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_rx_stream = type { i32, i32, i32 }
%struct.skb_checksum_ops = type { i32, i32 }

@siw_csum_combine = common dso_local global i32 0, align 4
@siw_csum_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_rx_stream*, i32)* @siw_crc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_crc_skb(%struct.siw_rx_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.siw_rx_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skb_checksum_ops, align 4
  %6 = alloca i32, align 4
  store %struct.siw_rx_stream* %0, %struct.siw_rx_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.skb_checksum_ops, %struct.skb_checksum_ops* %5, i32 0, i32 0
  %8 = load i32, i32* @siw_csum_combine, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.skb_checksum_ops, %struct.skb_checksum_ops* %5, i32 0, i32 1
  %10 = load i32, i32* @siw_csum_update, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %3, align 8
  %12 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @shash_desc_ctx(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %3, align 8
  %18 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %3, align 8
  %21 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @__skb_checksum(i32 %19, i32 %22, i32 %23, i32 %24, %struct.skb_checksum_ops* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %3, align 8
  %28 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @shash_desc_ctx(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32 %26, i32* %31, align 4
  ret void
}

declare dso_local i64 @shash_desc_ctx(i32) #1

declare dso_local i32 @__skb_checksum(i32, i32, i32, i32, %struct.skb_checksum_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
