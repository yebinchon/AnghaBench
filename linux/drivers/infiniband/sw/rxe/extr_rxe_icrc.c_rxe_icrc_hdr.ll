; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_icrc.c_rxe_icrc_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_icrc.c_rxe_icrc_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rxe_pkt_info = type { i64, i32*, i32 }
%struct.sk_buff = type { i64 }
%struct.iphdr = type { i32, i32, i8* }
%struct.ipv6hdr = type { i32, i32, i32 }
%struct.udphdr = type { i8* }
%struct.rxe_bth = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@RXE_BTH_BYTES = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i8* null, align 8
@BTH_QPN_MASK = common dso_local global i32 0, align 4
@rxe_opcode = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_icrc_hdr(%struct.rxe_pkt_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rxe_pkt_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.udphdr*, align 8
  %9 = alloca %struct.rxe_bth*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.iphdr* null, %struct.iphdr** %6, align 8
  store %struct.ipv6hdr* null, %struct.ipv6hdr** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ETH_P_IP, align 4
  %19 = call i64 @htons(i32 %18)
  %20 = icmp eq i64 %17, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i64 16, i64 12
  %23 = add i64 8, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* @RXE_BTH_BYTES, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 20, %26
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  store i32 -558161693, i32* %10, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ETH_P_IP, align 4
  %34 = call i64 @htons(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32* @ip_hdr(%struct.sk_buff* %37)
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @memcpy(i32* %29, i32* %38, i32 %39)
  %41 = bitcast i32* %29 to %struct.iphdr*
  store %struct.iphdr* %41, %struct.iphdr** %6, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i64 1
  %44 = bitcast %struct.iphdr* %43 to %struct.udphdr*
  store %struct.udphdr* %44, %struct.udphdr** %8, align 8
  %45 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %46 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %45, i32 0, i32 0
  store i32 255, i32* %46, align 8
  %47 = load i8*, i8** @CSUM_MANGLED_0, align 8
  %48 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 1
  store i32 255, i32* %51, align 4
  br label %69

52:                                               ; preds = %2
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32* @ipv6_hdr(%struct.sk_buff* %53)
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @memcpy(i32* %29, i32* %54, i32 %55)
  %57 = bitcast i32* %29 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %57, %struct.ipv6hdr** %7, align 8
  %58 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %59 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %58, i64 1
  %60 = bitcast %struct.ipv6hdr* %59 to %struct.udphdr*
  store %struct.udphdr* %60, %struct.udphdr** %8, align 8
  %61 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %62 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memset(i32 %63, i32 255, i32 4)
  %65 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %66 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %65, i32 0, i32 0
  store i32 15, i32* %66, align 4
  %67 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %68 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %67, i32 0, i32 1
  store i32 255, i32* %68, align 4
  br label %69

69:                                               ; preds = %52, %36
  %70 = load i8*, i8** @CSUM_MANGLED_0, align 8
  %71 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %72 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %29, i64 %77
  %79 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %80 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @RXE_BTH_BYTES, align 4
  %83 = call i32 @memcpy(i32* %78, i32* %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %29, i64 %85
  %87 = bitcast i32* %86 to %struct.rxe_bth*
  store %struct.rxe_bth* %87, %struct.rxe_bth** %9, align 8
  %88 = load i32, i32* @BTH_QPN_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = call i32 @cpu_to_be32(i32 %89)
  %91 = load %struct.rxe_bth*, %struct.rxe_bth** %9, align 8
  %92 = getelementptr inbounds %struct.rxe_bth, %struct.rxe_bth* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @RXE_BTH_BYTES, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %11, align 4
  %98 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %99 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @rxe_crc32(i32 %100, i32 %101, i32* %29, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %105 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %109 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* @RXE_BTH_BYTES, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_opcode, align 8
  %115 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %116 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RXE_BTH_BYTES, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 @rxe_crc32(i32 %106, i32 %107, i32* %113, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %125)
  ret i32 %124
}

declare dso_local i64 @htons(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @rxe_crc32(i32, i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
