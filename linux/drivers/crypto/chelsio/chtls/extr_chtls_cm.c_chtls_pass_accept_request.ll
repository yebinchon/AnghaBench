; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_accept_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_cm.c_chtls_pass_accept_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32 }
%struct.sk_buff = type { %struct.sock* }
%struct.cpl_t5_pass_accept_rpl = type { i32 }
%struct.cpl_pass_accept_req = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.listen_ctx = type { i32 }
%struct.vlan_ethhdr = type { i32 }
%struct.request_sock = type { i64, i64, i64, i64, i64 }
%struct.chtls_sock = type { i32, %struct.listen_ctx* }
%struct.chtls_dev = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.tcphdr = type { i64, i64, i32, i32, i32 }
%struct.ethhdr = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.chtls_dev* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@RSS_HDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tid (%d) already in use\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@chtls_rsk_ops = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @chtls_pass_accept_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_pass_accept_request(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cpl_t5_pass_accept_rpl*, align 8
  %6 = alloca %struct.cpl_pass_accept_req*, align 8
  %7 = alloca %struct.listen_ctx*, align 8
  %8 = alloca %struct.vlan_ethhdr*, align 8
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.chtls_sock*, align 8
  %12 = alloca %struct.chtls_dev*, align 8
  %13 = alloca %struct.tcphdr*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.ethhdr*, align 8
  %16 = alloca %struct.iphdr*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.cpl_pass_accept_req* @cplhdr(%struct.sk_buff* %26)
  %28 = load i32, i32* @RSS_HDR, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %27, i64 %29
  store %struct.cpl_pass_accept_req* %30, %struct.cpl_pass_accept_req** %6, align 8
  %31 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %32 = call i32 @GET_TID(%struct.cpl_pass_accept_req* %31)
  store i32 %32, i32* %20, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_14__* @BLOG_SKB_CB(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.chtls_dev*, %struct.chtls_dev** %35, align 8
  store %struct.chtls_dev* %36, %struct.chtls_dev** %12, align 8
  %37 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %38 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %20, align 4
  %41 = call %struct.sock* @lookup_tid(i32 %39, i32 %40)
  store %struct.sock* %41, %struct.sock** %14, align 8
  %42 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %43 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  %46 = call i32 @PASS_OPEN_TID_G(i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load %struct.sock*, %struct.sock** %14, align 8
  %48 = icmp ne %struct.sock* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %322

52:                                               ; preds = %2
  %53 = call i32 @roundup(i32 4, i32 16)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call %struct.sk_buff* @alloc_skb(i32 %54, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %10, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %52
  %60 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %61 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @cxgb4_remove_tid(i32 %62, i32 0, i32 %63, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @kfree_skb(%struct.sk_buff* %68)
  br label %322

70:                                               ; preds = %52
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TCP_LISTEN, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %307

77:                                               ; preds = %70
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = call i64 @inet_csk_reqsk_queue_is_full(%struct.sock* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %307

82:                                               ; preds = %77
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = call i64 @sk_acceptq_is_full(%struct.sock* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %307

87:                                               ; preds = %82
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = call %struct.request_sock* @inet_reqsk_alloc(i32* @chtls_rsk_ops, %struct.sock* %88, i32 1)
  store %struct.request_sock* %89, %struct.request_sock** %9, align 8
  %90 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %91 = icmp ne %struct.request_sock* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %307

93:                                               ; preds = %87
  %94 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %95 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %97 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %99 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %101 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %103 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %105 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ntohl(i32 %106)
  %108 = call i64 @T6_ETH_HDR_LEN_G(i32 %107)
  store i64 %108, i64* %24, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i64, i64* @ETH_HLEN, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %93
  %113 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %114 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %113, i64 1
  %115 = bitcast %struct.cpl_pass_accept_req* %114 to %struct.ethhdr*
  store %struct.ethhdr* %115, %struct.ethhdr** %15, align 8
  %116 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %117 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %116, i64 1
  %118 = bitcast %struct.ethhdr* %117 to %struct.iphdr*
  store %struct.iphdr* %118, %struct.iphdr** %16, align 8
  %119 = load %struct.ethhdr*, %struct.ethhdr** %15, align 8
  %120 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %119, i64 1
  %121 = bitcast %struct.ethhdr* %120 to i8*
  store i8* %121, i8** %17, align 8
  br label %132

122:                                              ; preds = %93
  %123 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %124 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %123, i64 1
  %125 = bitcast %struct.cpl_pass_accept_req* %124 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %125, %struct.vlan_ethhdr** %8, align 8
  %126 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %8, align 8
  %127 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %126, i64 1
  %128 = bitcast %struct.vlan_ethhdr* %127 to %struct.iphdr*
  store %struct.iphdr* %128, %struct.iphdr** %16, align 8
  %129 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %8, align 8
  %130 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %129, i64 1
  %131 = bitcast %struct.vlan_ethhdr* %130 to i8*
  store i8* %131, i8** %17, align 8
  br label %132

132:                                              ; preds = %122, %112
  %133 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %134 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 4
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %304

138:                                              ; preds = %132
  %139 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %140 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %139, i64 1
  %141 = bitcast %struct.iphdr* %140 to %struct.tcphdr*
  store %struct.tcphdr* %141, %struct.tcphdr** %13, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %144 = bitcast %struct.iphdr* %143 to i8*
  %145 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %146 = bitcast %struct.cpl_pass_accept_req* %145 to i8*
  %147 = ptrtoint i8* %144 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = call i32 @skb_set_network_header(%struct.sk_buff* %142, i32 %150)
  %152 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %153 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %152)
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  store i32 0, i32* %154, align 4
  %155 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %156 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ntohl(i32 %157)
  %159 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %160 = call %struct.TYPE_11__* @tcp_rsk(%struct.request_sock* %159)
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  %162 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %163 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %164 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %167 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @chtls_set_req_port(%struct.request_sock* %162, i32 %165, i32 %168)
  %170 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %171 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %172 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @chtls_set_req_addr(%struct.request_sock* %170, i32 %173, i32 %176)
  %178 = load %struct.iphdr*, %struct.iphdr** %16, align 8
  %179 = call i32 @ipv4_get_dsfield(%struct.iphdr* %178)
  store i32 %179, i32* %23, align 4
  %180 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %181 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp sle i32 %183, 14
  br i1 %184, label %185, label %203

185:                                              ; preds = %138
  %186 = load %struct.sock*, %struct.sock** %3, align 8
  %187 = call %struct.TYPE_12__* @sock_net(%struct.sock* %186)
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %185
  %193 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %194 = call %struct.TYPE_13__* @inet_rsk(%struct.request_sock* %193)
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  store i32 1, i32* %195, align 4
  %196 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %197 = getelementptr inbounds %struct.cpl_pass_accept_req, %struct.cpl_pass_accept_req* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %201 = call %struct.TYPE_13__* @inet_rsk(%struct.request_sock* %200)
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  store i32 %199, i32* %202, align 4
  br label %203

203:                                              ; preds = %192, %185, %138
  %204 = load %struct.sock*, %struct.sock** %3, align 8
  %205 = getelementptr inbounds %struct.sock, %struct.sock* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %208 = call %struct.TYPE_13__* @inet_rsk(%struct.request_sock* %207)
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 3
  store i32 %206, i32* %209, align 4
  %210 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %211 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %203
  %215 = load %struct.tcphdr*, %struct.tcphdr** %13, align 8
  %216 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br label %219

219:                                              ; preds = %214, %203
  %220 = phi i1 [ false, %203 ], [ %218, %214 ]
  %221 = zext i1 %220 to i32
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %249

224:                                              ; preds = %219
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @INET_ECN_is_not_ect(i32 %225)
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %22, align 4
  %230 = load %struct.sock*, %struct.sock** %3, align 8
  %231 = call %struct.TYPE_12__* @sock_net(%struct.sock* %230)
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  store i32 %234, i32* %25, align 4
  %235 = load i32, i32* %22, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %224
  %238 = load i32, i32* %25, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %237, %224
  %241 = load %struct.sock*, %struct.sock** %3, align 8
  %242 = call i64 @tcp_ca_needs_ecn(%struct.sock* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %240, %237
  %245 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %246 = call %struct.TYPE_13__* @inet_rsk(%struct.request_sock* %245)
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 2
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %244, %240
  br label %249

249:                                              ; preds = %248, %219
  %250 = load %struct.sock*, %struct.sock** %3, align 8
  %251 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %252 = load i8*, i8** %17, align 8
  %253 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %254 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %255 = call %struct.sock* @chtls_recv_sock(%struct.sock* %250, %struct.request_sock* %251, i8* %252, %struct.cpl_pass_accept_req* %253, %struct.chtls_dev* %254)
  store %struct.sock* %255, %struct.sock** %14, align 8
  %256 = load %struct.sock*, %struct.sock** %14, align 8
  %257 = icmp ne %struct.sock* %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %249
  br label %307

259:                                              ; preds = %249
  %260 = load %struct.sock*, %struct.sock** %14, align 8
  %261 = call i64 @chtls_get_module(%struct.sock* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  br label %307

264:                                              ; preds = %259
  %265 = load %struct.sock*, %struct.sock** %3, align 8
  %266 = call i32 @inet_csk_reqsk_queue_added(%struct.sock* %265)
  %267 = load %struct.sock*, %struct.sock** %14, align 8
  %268 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 0
  store %struct.sock* %267, %struct.sock** %269, align 8
  %270 = load %struct.sock*, %struct.sock** %14, align 8
  %271 = call i32 @chtls_install_cpl_ops(%struct.sock* %270)
  %272 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %273 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.sock*, %struct.sock** %14, align 8
  %276 = load i32, i32* %20, align 4
  %277 = load %struct.sock*, %struct.sock** %14, align 8
  %278 = getelementptr inbounds %struct.sock, %struct.sock* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @cxgb4_insert_tid(i32 %274, %struct.sock* %275, i32 %276, i32 %279)
  %281 = load %struct.sock*, %struct.sock** %14, align 8
  %282 = call %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock* %281)
  store %struct.chtls_sock* %282, %struct.chtls_sock** %11, align 8
  %283 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %284 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = call i64 @lookup_stid(i32 %285, i32 %286)
  %288 = inttoptr i64 %287 to %struct.listen_ctx*
  store %struct.listen_ctx* %288, %struct.listen_ctx** %7, align 8
  %289 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %290 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %291 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %290, i32 0, i32 1
  store %struct.listen_ctx* %289, %struct.listen_ctx** %291, align 8
  %292 = load %struct.listen_ctx*, %struct.listen_ctx** %7, align 8
  %293 = getelementptr inbounds %struct.listen_ctx, %struct.listen_ctx* %292, i32 0, i32 0
  %294 = load %struct.chtls_sock*, %struct.chtls_sock** %11, align 8
  %295 = getelementptr inbounds %struct.chtls_sock, %struct.chtls_sock* %294, i32 0, i32 0
  %296 = bitcast i32* %295 to %struct.sk_buff*
  %297 = call i32 @__skb_queue_tail(i32* %293, %struct.sk_buff* %296)
  %298 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %299 = load %struct.cpl_pass_accept_req*, %struct.cpl_pass_accept_req** %6, align 8
  %300 = load i32, i32* %20, align 4
  %301 = call i32 @chtls_pass_accept_rpl(%struct.sk_buff* %298, %struct.cpl_pass_accept_req* %299, i32 %300)
  %302 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %303 = call i32 @kfree_skb(%struct.sk_buff* %302)
  br label %322

304:                                              ; preds = %137
  %305 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %306 = call i32 @chtls_reqsk_free(%struct.request_sock* %305)
  br label %307

307:                                              ; preds = %304, %263, %258, %92, %86, %81, %76
  %308 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %309 = load i32, i32* %20, align 4
  %310 = call i32 @mk_tid_release(%struct.sk_buff* %308, i32 0, i32 %309)
  %311 = load %struct.chtls_dev*, %struct.chtls_dev** %12, align 8
  %312 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %311, i32 0, i32 0
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %319 = call i32 @cxgb4_ofld_send(i32 %317, %struct.sk_buff* %318)
  %320 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %321 = call i32 @kfree_skb(%struct.sk_buff* %320)
  br label %322

322:                                              ; preds = %307, %264, %59, %49
  ret void
}

declare dso_local %struct.cpl_pass_accept_req* @cplhdr(%struct.sk_buff*) #1

declare dso_local i32 @GET_TID(%struct.cpl_pass_accept_req*) #1

declare dso_local %struct.TYPE_14__* @BLOG_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.sock* @lookup_tid(i32, i32) #1

declare dso_local i32 @PASS_OPEN_TID_G(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @cxgb4_remove_tid(i32, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @inet_csk_reqsk_queue_is_full(%struct.sock*) #1

declare dso_local i64 @sk_acceptq_is_full(%struct.sock*) #1

declare dso_local %struct.request_sock* @inet_reqsk_alloc(i32*, %struct.sock*, i32) #1

declare dso_local i64 @T6_ETH_HDR_LEN_G(i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_11__* @tcp_rsk(%struct.request_sock*) #1

declare dso_local i32 @chtls_set_req_port(%struct.request_sock*, i32, i32) #1

declare dso_local i32 @chtls_set_req_addr(%struct.request_sock*, i32, i32) #1

declare dso_local i32 @ipv4_get_dsfield(%struct.iphdr*) #1

declare dso_local %struct.TYPE_12__* @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_13__* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @INET_ECN_is_not_ect(i32) #1

declare dso_local i64 @tcp_ca_needs_ecn(%struct.sock*) #1

declare dso_local %struct.sock* @chtls_recv_sock(%struct.sock*, %struct.request_sock*, i8*, %struct.cpl_pass_accept_req*, %struct.chtls_dev*) #1

declare dso_local i64 @chtls_get_module(%struct.sock*) #1

declare dso_local i32 @inet_csk_reqsk_queue_added(%struct.sock*) #1

declare dso_local i32 @chtls_install_cpl_ops(%struct.sock*) #1

declare dso_local i32 @cxgb4_insert_tid(i32, %struct.sock*, i32, i32) #1

declare dso_local %struct.chtls_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i64 @lookup_stid(i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @chtls_pass_accept_rpl(%struct.sk_buff*, %struct.cpl_pass_accept_req*, i32) #1

declare dso_local i32 @chtls_reqsk_free(%struct.request_sock*) #1

declare dso_local i32 @mk_tid_release(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
