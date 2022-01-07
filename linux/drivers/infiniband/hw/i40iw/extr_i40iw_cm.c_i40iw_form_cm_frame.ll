; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_form_cm_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_form_cm_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_buf = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.i40iw_cm_node = type { i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_12__, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.i40iw_sc_vsi }
%struct.i40iw_sc_vsi = type { i32 }
%struct.i40iw_kmem_info = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8* }
%struct.iphdr = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i32 }
%struct.ipv6hdr = type { i32, i32, i32*, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ethhdr = type { i8*, i32, i32 }
%struct.vlan_ethhdr = type { i8*, i8*, i8* }

@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPVERSION = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@SET_ACK = common dso_local global i32 0, align 4
@SET_SYN = common dso_local global i32 0, align 4
@SET_FIN = common dso_local global i32 0, align 4
@SET_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40iw_puda_buf* (%struct.i40iw_cm_node*, %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info*, i32)* @i40iw_form_cm_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node* %0, %struct.i40iw_kmem_info* %1, %struct.i40iw_kmem_info* %2, %struct.i40iw_kmem_info* %3, i32 %4) #0 {
  %6 = alloca %struct.i40iw_puda_buf*, align 8
  %7 = alloca %struct.i40iw_cm_node*, align 8
  %8 = alloca %struct.i40iw_kmem_info*, align 8
  %9 = alloca %struct.i40iw_kmem_info*, align 8
  %10 = alloca %struct.i40iw_kmem_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40iw_puda_buf*, align 8
  %13 = alloca %struct.i40iw_sc_vsi*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca %struct.iphdr*, align 8
  %17 = alloca %struct.ipv6hdr*, align 8
  %18 = alloca %struct.ethhdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %7, align 8
  store %struct.i40iw_kmem_info* %1, %struct.i40iw_kmem_info** %8, align 8
  store %struct.i40iw_kmem_info* %2, %struct.i40iw_kmem_info** %9, align 8
  store %struct.i40iw_kmem_info* %3, %struct.i40iw_kmem_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %25, i32 0, i32 11
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store %struct.i40iw_sc_vsi* %28, %struct.i40iw_sc_vsi** %13, align 8
  %29 = load i32, i32* @ETH_HLEN, align 4
  store i32 %29, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %30 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %13, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.i40iw_puda_buf* @i40iw_puda_get_bufpool(i32 %32)
  store %struct.i40iw_puda_buf* %33, %struct.i40iw_puda_buf** %12, align 8
  %34 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %35 = icmp ne %struct.i40iw_puda_buf* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %5
  store %struct.i40iw_puda_buf* null, %struct.i40iw_puda_buf** %6, align 8
  br label %500

37:                                               ; preds = %5
  %38 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %39 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  %42 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %8, align 8
  %43 = icmp ne %struct.i40iw_kmem_info* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %8, align 8
  %46 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %21, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %9, align 8
  %50 = icmp ne %struct.i40iw_kmem_info* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %9, align 8
  %53 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %23, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %10, align 8
  %57 = icmp ne %struct.i40iw_kmem_info* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %10, align 8
  %60 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %22, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %64 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @VLAN_VID_MASK, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, 4
  store i32 %70, i32* %20, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %73 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %72, i32 0, i32 10
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 144, i32* %19, align 4
  br label %78

77:                                               ; preds = %71
  store i32 112, i32* %19, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %23, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %22, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %19, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @memset(i32* %86, i32 0, i32 %89)
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %95 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %20, align 4
  %97 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %98 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %21, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 72, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %104 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %106 = bitcast %struct.i40iw_cm_node* %105 to i8*
  %107 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %108 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = bitcast i32* %109 to %struct.ethhdr*
  store %struct.ethhdr* %110, %struct.ethhdr** %18, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %14, align 8
  %115 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %116 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %115, i32 0, i32 10
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %226

119:                                              ; preds = %78
  %120 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %121 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %120, i32 0, i32 3
  store i32 1, i32* %121, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = bitcast i32* %122 to %struct.iphdr*
  store %struct.iphdr* %123, %struct.iphdr** %16, align 8
  %124 = load i32*, i32** %14, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 72
  store i32* %125, i32** %14, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = bitcast i32* %126 to %struct.tcphdr*
  store %struct.tcphdr* %127, %struct.tcphdr** %15, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 72
  store i32* %129, i32** %14, align 8
  %130 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %131 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %134 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @ether_addr_copy(i32 %132, i32 %135)
  %137 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %138 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %141 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ether_addr_copy(i32 %139, i32 %142)
  %144 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %145 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @VLAN_VID_MASK, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %119
  %150 = load i32, i32* @ETH_P_8021Q, align 4
  %151 = call i8* @htons(i32 %150)
  %152 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %153 = bitcast %struct.ethhdr* %152 to %struct.vlan_ethhdr*
  %154 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %153, i32 0, i32 2
  store i8* %151, i8** %154, align 8
  %155 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %156 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %159 = shl i32 %157, %158
  %160 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %161 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %159, %162
  store i32 %163, i32* %24, align 4
  %164 = load i32, i32* %24, align 4
  %165 = call i8* @htons(i32 %164)
  %166 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %167 = bitcast %struct.ethhdr* %166 to %struct.vlan_ethhdr*
  %168 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %167, i32 0, i32 1
  store i8* %165, i8** %168, align 8
  %169 = load i32, i32* @ETH_P_IP, align 4
  %170 = call i8* @htons(i32 %169)
  %171 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %172 = bitcast %struct.ethhdr* %171 to %struct.vlan_ethhdr*
  %173 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  br label %179

174:                                              ; preds = %119
  %175 = load i32, i32* @ETH_P_IP, align 4
  %176 = call i8* @htons(i32 %175)
  %177 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %178 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %174, %149
  %180 = load i32, i32* @IPVERSION, align 4
  %181 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %182 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %181, i32 0, i32 9
  store i32 %180, i32* %182, align 8
  %183 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %184 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %183, i32 0, i32 0
  store i32 5, i32* %184, align 8
  %185 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %186 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %189 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %19, align 4
  %191 = call i8* @htons(i32 %190)
  %192 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %193 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %192, i32 0, i32 8
  store i8* %191, i8** %193, align 8
  %194 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %195 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = call i8* @htons(i32 %198)
  %200 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %201 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %200, i32 0, i32 7
  store i8* %199, i8** %201, align 8
  %202 = call i8* @htons(i32 16384)
  %203 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %204 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %203, i32 0, i32 6
  store i8* %202, i8** %204, align 8
  %205 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %206 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %205, i32 0, i32 2
  store i32 64, i32* %206, align 8
  %207 = load i32, i32* @IPPROTO_TCP, align 4
  %208 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %209 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %211 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @htonl(i32 %214)
  %216 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 4
  store i8* %215, i8** %217, align 8
  %218 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %219 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @htonl(i32 %222)
  %224 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %225 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  br label %340

226:                                              ; preds = %78
  %227 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %228 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %227, i32 0, i32 3
  store i32 0, i32* %228, align 4
  %229 = load i32*, i32** %14, align 8
  %230 = bitcast i32* %229 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %230, %struct.ipv6hdr** %17, align 8
  %231 = load i32*, i32** %14, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 40
  store i32* %232, i32** %14, align 8
  %233 = load i32*, i32** %14, align 8
  %234 = bitcast i32* %233 to %struct.tcphdr*
  store %struct.tcphdr* %234, %struct.tcphdr** %15, align 8
  %235 = load i32*, i32** %14, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 72
  store i32* %236, i32** %14, align 8
  %237 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %238 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %241 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %240, i32 0, i32 9
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @ether_addr_copy(i32 %239, i32 %242)
  %244 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %245 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %248 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @ether_addr_copy(i32 %246, i32 %249)
  %251 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %252 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @VLAN_VID_MASK, align 4
  %255 = icmp sle i32 %253, %254
  br i1 %255, label %256, label %281

256:                                              ; preds = %226
  %257 = load i32, i32* @ETH_P_8021Q, align 4
  %258 = call i8* @htons(i32 %257)
  %259 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %260 = bitcast %struct.ethhdr* %259 to %struct.vlan_ethhdr*
  %261 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %260, i32 0, i32 2
  store i8* %258, i8** %261, align 8
  %262 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %263 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %266 = shl i32 %264, %265
  %267 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %268 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %266, %269
  store i32 %270, i32* %24, align 4
  %271 = load i32, i32* %24, align 4
  %272 = call i8* @htons(i32 %271)
  %273 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %274 = bitcast %struct.ethhdr* %273 to %struct.vlan_ethhdr*
  %275 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %274, i32 0, i32 1
  store i8* %272, i8** %275, align 8
  %276 = load i32, i32* @ETH_P_IPV6, align 4
  %277 = call i8* @htons(i32 %276)
  %278 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %279 = bitcast %struct.ethhdr* %278 to %struct.vlan_ethhdr*
  %280 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %279, i32 0, i32 0
  store i8* %277, i8** %280, align 8
  br label %286

281:                                              ; preds = %226
  %282 = load i32, i32* @ETH_P_IPV6, align 4
  %283 = call i8* @htons(i32 %282)
  %284 = load %struct.ethhdr*, %struct.ethhdr** %18, align 8
  %285 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  br label %286

286:                                              ; preds = %281, %256
  %287 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %288 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %287, i32 0, i32 0
  store i32 6, i32* %288, align 8
  %289 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %290 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = ashr i32 %291, 4
  %293 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %294 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 4
  %295 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %296 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = shl i32 %297, 4
  %299 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %300 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  store i32 %298, i32* %302, align 4
  %303 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %304 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  store i32 0, i32* %306, align 4
  %307 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %308 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %307, i32 0, i32 2
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  store i32 0, i32* %310, align 4
  %311 = load i32, i32* %19, align 4
  %312 = sext i32 %311 to i64
  %313 = sub i64 %312, 40
  %314 = trunc i64 %313 to i32
  %315 = call i8* @htons(i32 %314)
  %316 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %317 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %316, i32 0, i32 7
  store i8* %315, i8** %317, align 8
  %318 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %319 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %318, i32 0, i32 3
  store i32 6, i32* %319, align 8
  %320 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %321 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %320, i32 0, i32 4
  store i32 128, i32* %321, align 4
  %322 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %323 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %322, i32 0, i32 6
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %328 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @i40iw_copy_ip_htonl(i32 %326, i32* %329)
  %331 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %332 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %331, i32 0, i32 5
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %337 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %336, i32 0, i32 4
  %338 = load i32*, i32** %337, align 8
  %339 = call i32 @i40iw_copy_ip_htonl(i32 %335, i32* %338)
  br label %340

340:                                              ; preds = %286, %179
  %341 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %342 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = call i8* @htons(i32 %343)
  %345 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %346 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %345, i32 0, i32 10
  store i8* %344, i8** %346, align 8
  %347 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %348 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 4
  %350 = call i8* @htons(i32 %349)
  %351 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %352 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %351, i32 0, i32 9
  store i8* %350, i8** %352, align 8
  %353 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %354 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %353, i32 0, i32 7
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @htonl(i32 %356)
  %358 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %359 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %358, i32 0, i32 8
  store i8* %357, i8** %359, align 8
  %360 = load i32, i32* %11, align 4
  %361 = load i32, i32* @SET_ACK, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %381

364:                                              ; preds = %340
  %365 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %366 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %365, i32 0, i32 7
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %370 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %369, i32 0, i32 7
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 2
  store i32 %368, i32* %371, align 8
  %372 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %373 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %372, i32 0, i32 7
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = call i8* @htonl(i32 %375)
  %377 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %378 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %377, i32 0, i32 7
  store i8* %376, i8** %378, align 8
  %379 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %380 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %379, i32 0, i32 0
  store i32 1, i32* %380, align 8
  br label %384

381:                                              ; preds = %340
  %382 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %383 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %382, i32 0, i32 7
  store i8* null, i8** %383, align 8
  br label %384

384:                                              ; preds = %381, %364
  %385 = load i32, i32* %11, align 4
  %386 = load i32, i32* @SET_SYN, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %397

389:                                              ; preds = %384
  %390 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %391 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %392, align 4
  %395 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %396 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %395, i32 0, i32 1
  store i32 1, i32* %396, align 4
  br label %406

397:                                              ; preds = %384
  %398 = load i32, i32* %23, align 4
  %399 = load i32, i32* %22, align 4
  %400 = add nsw i32 %398, %399
  %401 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %402 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %401, i32 0, i32 7
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, %400
  store i32 %405, i32* %403, align 4
  br label %406

406:                                              ; preds = %397, %389
  %407 = load i32, i32* %11, align 4
  %408 = load i32, i32* @SET_FIN, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %419

411:                                              ; preds = %406
  %412 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %413 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %412, i32 0, i32 7
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %414, align 4
  %417 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %418 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %417, i32 0, i32 2
  store i32 1, i32* %418, align 8
  br label %419

419:                                              ; preds = %411, %406
  %420 = load i32, i32* %11, align 4
  %421 = load i32, i32* @SET_RST, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %419
  %425 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %426 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %425, i32 0, i32 3
  store i32 1, i32* %426, align 4
  br label %427

427:                                              ; preds = %424, %419
  %428 = load i32, i32* %21, align 4
  %429 = sext i32 %428 to i64
  %430 = add i64 72, %429
  %431 = add i64 %430, 3
  %432 = lshr i64 %431, 2
  %433 = trunc i64 %432 to i32
  %434 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %435 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %434, i32 0, i32 4
  store i32 %433, i32* %435, align 8
  %436 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %437 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %436, i32 0, i32 4
  %438 = load i32, i32* %437, align 8
  %439 = shl i32 %438, 2
  %440 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %441 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 8
  %442 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  %443 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %442, i32 0, i32 7
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 4
  %445 = load i32, i32* %444, align 8
  %446 = call i8* @htons(i32 %445)
  %447 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %448 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %447, i32 0, i32 6
  store i8* %446, i8** %448, align 8
  %449 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %450 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %449, i32 0, i32 5
  store i64 0, i64* %450, align 8
  %451 = load i32, i32* %21, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %464

453:                                              ; preds = %427
  %454 = load i32*, i32** %14, align 8
  %455 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %8, align 8
  %456 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* %21, align 4
  %459 = call i32 @memcpy(i32* %454, i32 %457, i32 %458)
  %460 = load i32, i32* %21, align 4
  %461 = load i32*, i32** %14, align 8
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds i32, i32* %461, i64 %462
  store i32* %463, i32** %14, align 8
  br label %464

464:                                              ; preds = %453, %427
  %465 = load i32, i32* %23, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %478

467:                                              ; preds = %464
  %468 = load i32*, i32** %14, align 8
  %469 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %9, align 8
  %470 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %23, align 4
  %473 = call i32 @memcpy(i32* %468, i32 %471, i32 %472)
  %474 = load i32, i32* %23, align 4
  %475 = load i32*, i32** %14, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  store i32* %477, i32** %14, align 8
  br label %478

478:                                              ; preds = %467, %464
  %479 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %10, align 8
  %480 = icmp ne %struct.i40iw_kmem_info* %479, null
  br i1 %480, label %481, label %495

481:                                              ; preds = %478
  %482 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %10, align 8
  %483 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %495

486:                                              ; preds = %481
  %487 = load i32*, i32** %14, align 8
  %488 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %10, align 8
  %489 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.i40iw_kmem_info*, %struct.i40iw_kmem_info** %10, align 8
  %492 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @memcpy(i32* %487, i32 %490, i32 %493)
  br label %495

495:                                              ; preds = %486, %481, %478
  %496 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  %497 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %496, i32 0, i32 4
  %498 = call i32 @atomic_set(i32* %497, i32 1)
  %499 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %12, align 8
  store %struct.i40iw_puda_buf* %499, %struct.i40iw_puda_buf** %6, align 8
  br label %500

500:                                              ; preds = %495, %36
  %501 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %6, align 8
  ret %struct.i40iw_puda_buf* %501
}

declare dso_local %struct.i40iw_puda_buf* @i40iw_puda_get_bufpool(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @i40iw_copy_ip_htonl(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
