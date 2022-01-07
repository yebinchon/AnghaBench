; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_ieq_get_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_ieq_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32 }
%struct.i40iw_sc_dev = type { i64 }
%struct.i40iw_puda_buf = type { i64, i64 }
%struct.i40iw_device = type { i32 }
%struct.i40iw_qp = type { %struct.i40iw_sc_qp }
%struct.i40iw_cm_node = type { %struct.i40iw_qp* }
%struct.ipv6hdr = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.tcphdr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i40iw_sc_qp* @i40iw_ieq_get_qp(%struct.i40iw_sc_dev* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_puda_buf*, align 8
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_qp*, align 8
  %8 = alloca %struct.i40iw_cm_node*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6hdr*, align 8
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %5, align 8
  %16 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %17 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.i40iw_device*
  store %struct.i40iw_device* %19, %struct.i40iw_device** %6, align 8
  %20 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %21 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.iphdr*
  store %struct.iphdr* %23, %struct.iphdr** %14, align 8
  %24 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.tcphdr*
  store %struct.tcphdr* %27, %struct.tcphdr** %15, align 8
  %28 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %29 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %34 = call i32 @memset(i32* %33, i32 0, i32 16)
  %35 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %41 = call i32 @memset(i32* %40, i32 0, i32 16)
  %42 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %45, i32* %46, align 16
  br label %66

47:                                               ; preds = %2
  %48 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %49 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %51, %struct.ipv6hdr** %13, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %53 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %54 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @i40iw_copy_ip_ntohl(i32* %52, i32 %57)
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %60 = load %struct.ipv6hdr*, %struct.ipv6hdr** %13, align 8
  %61 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i40iw_copy_ip_ntohl(i32* %59, i32 %64)
  br label %66

66:                                               ; preds = %47, %32
  %67 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %68 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ntohs(i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %72 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohs(i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %76 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %75, i32 0, i32 0
  %77 = load i32, i32* %12, align 4
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %79 = load i32, i32* %11, align 4
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %81 = call %struct.i40iw_cm_node* @i40iw_find_node(i32* %76, i32 %77, i32* %78, i32 %79, i32* %80, i32 0, i32 1)
  store %struct.i40iw_cm_node* %81, %struct.i40iw_cm_node** %8, align 8
  %82 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %8, align 8
  %83 = icmp ne %struct.i40iw_cm_node* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %66
  store %struct.i40iw_sc_qp* null, %struct.i40iw_sc_qp** %3, align 8
  br label %91

85:                                               ; preds = %66
  %86 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %8, align 8
  %87 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %86, i32 0, i32 0
  %88 = load %struct.i40iw_qp*, %struct.i40iw_qp** %87, align 8
  store %struct.i40iw_qp* %88, %struct.i40iw_qp** %7, align 8
  %89 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %90 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %89, i32 0, i32 0
  store %struct.i40iw_sc_qp* %90, %struct.i40iw_sc_qp** %3, align 8
  br label %91

91:                                               ; preds = %85, %84
  %92 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  ret %struct.i40iw_sc_qp* %92
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @i40iw_copy_ip_ntohl(i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.i40iw_cm_node* @i40iw_find_node(i32*, i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
