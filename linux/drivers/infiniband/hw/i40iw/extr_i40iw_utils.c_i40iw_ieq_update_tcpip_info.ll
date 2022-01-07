; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_ieq_update_tcpip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_ieq_update_tcpip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_buf = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tcphdr = type { i32 }
%struct.iphdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_ieq_update_tcpip_info(%struct.i40iw_puda_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.i40iw_puda_buf* %0, %struct.i40iw_puda_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %13 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %18 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 20, i32 40
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = bitcast i32* %28 to %struct.iphdr*
  store %struct.iphdr* %29, %struct.iphdr** %8, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %32 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = bitcast i32* %38 to %struct.tcphdr*
  store %struct.tcphdr* %39, %struct.tcphdr** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @htonl(i32 %51)
  %53 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %54 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
