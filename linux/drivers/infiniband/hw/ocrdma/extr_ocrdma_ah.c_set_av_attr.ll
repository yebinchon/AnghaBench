; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_set_av_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_ah.c_set_av_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.ocrdma_grh* }
%struct.ocrdma_grh = type { i32*, i32, i32, i32*, i32*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32*, i8*, i8*, i8* }
%struct.ocrdma_ah = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rdma_ah_attr = type { i32 }
%union.ib_gid = type { %struct.ocrdma_grh* }
%struct.ocrdma_eth_vlan = type { i32*, i32, i32, i32*, i32*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32*, i8*, i8*, i8* }
%struct.iphdr = type { i32*, i32, i32, i32*, i32*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32*, i8*, i8*, i8* }
%struct.ib_global_route = type { i32, i32, i32, %union.ib_gid, i32 }
%union.anon = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IBOE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ocrdma%d:Using VLAN with PFC is recommended\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ocrdma%d:Using VLAN 0 for this connection\0A\00", align 1
@OCRDMA_VID_PCP_SHIFT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@RDMA_NETWORK_IPV4 = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@OCRDMA_AV_VLAN_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_ah*, %struct.rdma_ah_attr*, %union.ib_gid*, i32, i32*, i32)* @set_av_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_av_attr(%struct.ocrdma_dev* %0, %struct.ocrdma_ah* %1, %struct.rdma_ah_attr* %2, %union.ib_gid* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_dev*, align 8
  %10 = alloca %struct.ocrdma_ah*, align 8
  %11 = alloca %struct.rdma_ah_attr*, align 8
  %12 = alloca %union.ib_gid*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocrdma_eth_vlan, align 8
  %18 = alloca %struct.ocrdma_grh, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.iphdr, align 8
  %23 = alloca %struct.ib_global_route*, align 8
  %24 = alloca %union.anon, align 4
  %25 = alloca %union.anon, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %9, align 8
  store %struct.ocrdma_ah* %1, %struct.ocrdma_ah** %10, align 8
  store %struct.rdma_ah_attr* %2, %struct.rdma_ah_attr** %11, align 8
  store %union.ib_gid* %3, %union.ib_gid** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store i32 17, i32* %21, align 4
  %26 = bitcast %struct.ocrdma_eth_vlan* %17 to %struct.ocrdma_grh*
  %27 = call i32 @memset(%struct.ocrdma_grh* %26, i32 0, i32 112)
  %28 = call i32 @memset(%struct.ocrdma_grh* %18, i32 0, i32 112)
  %29 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %30 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %33 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ocrdma_hdr_type_to_proto_num(i32 %31, i64 %34)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %7
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %256

41:                                               ; preds = %7
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* @ETH_P_IBOE, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 27, i32 17
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  %51 = icmp sgt i32 %50, 4095
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %41
  %53 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %54 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %61 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %69 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %73 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %67, %64
  %77 = call i8* @cpu_to_be16(i32 33024)
  %78 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %17, i32 0, i32 13
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* %20, align 4
  %80 = call i8* @cpu_to_be16(i32 %79)
  %81 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %17, i32 0, i32 15
  store i8* %80, i8** %81, align 8
  %82 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %83 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 7
  %86 = load i32, i32* @OCRDMA_VID_PCP_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i8* @cpu_to_be16(i32 %90)
  %92 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %17, i32 0, i32 14
  store i8* %91, i8** %92, align 8
  store i32 112, i32* %19, align 4
  %93 = load i32*, i32** %14, align 8
  store i32 1, i32* %93, align 4
  br label %98

94:                                               ; preds = %59
  %95 = load i32, i32* %20, align 4
  %96 = call i8* @cpu_to_be16(i32 %95)
  %97 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %17, i32 0, i32 13
  store i8* %96, i8** %97, align 8
  store i32 4, i32* %19, align 4
  br label %98

98:                                               ; preds = %94, %76
  %99 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %17, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %103 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %104, align 8
  %106 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %105, i64 0
  %107 = load i32, i32* @ETH_ALEN, align 4
  %108 = call i32 @memcpy(i32* %101, %struct.ocrdma_grh* %106, i32 %107)
  %109 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %9, align 8
  %110 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %111 = getelementptr inbounds %struct.ocrdma_eth_vlan, %struct.ocrdma_eth_vlan* %17, i32 0, i32 12
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = call i32 @ocrdma_resolve_dmac(%struct.ocrdma_dev* %109, %struct.rdma_ah_attr* %110, i32* %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %98
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %8, align 4
  br label %256

119:                                              ; preds = %98
  %120 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %11, align 8
  %121 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %120)
  store %struct.ib_global_route* %121, %struct.ib_global_route** %23, align 8
  %122 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %123 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %126 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %128 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = bitcast %struct.ocrdma_eth_vlan* %17 to %struct.ocrdma_grh*
  %132 = load i32, i32* %19, align 4
  %133 = call i32 @memcpy(i32* %130, %struct.ocrdma_grh* %131, i32 %132)
  %134 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %135 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RDMA_NETWORK_IPV4, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %186

139:                                              ; preds = %119
  %140 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %141 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 17664, %142
  %144 = call i8* @htons(i32 %143)
  %145 = bitcast %struct.iphdr* %22 to i8**
  store i8* %144, i8** %145, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i8* @cpu_to_be16(i32 %146)
  %148 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 11
  store i8* %147, i8** %148, align 8
  %149 = load i32, i32* @IP_DF, align 4
  %150 = call i8* @htons(i32 %149)
  %151 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 10
  store i8* %150, i8** %151, align 8
  %152 = call i8* @htons(i32 0)
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 9
  store i8* %152, i8** %153, align 8
  %154 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %155 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 1
  store i32 %156, i32* %157, align 8
  %158 = load i32, i32* %21, align 4
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 2
  store i32 %158, i32* %159, align 4
  %160 = bitcast %union.anon* %24 to %struct.sockaddr*
  %161 = load %union.ib_gid*, %union.ib_gid** %12, align 8
  %162 = call i32 @rdma_gid2ip(%struct.sockaddr* %160, %union.ib_gid* %161)
  %163 = bitcast %union.anon* %24 to %struct.sockaddr_in*
  %164 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 8
  store i32 %166, i32* %167, align 4
  %168 = bitcast %union.anon* %25 to %struct.sockaddr*
  %169 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %170 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %169, i32 0, i32 3
  %171 = call i32 @rdma_gid2ip(%struct.sockaddr* %168, %union.ib_gid* %170)
  %172 = bitcast %union.anon* %25 to %struct.sockaddr_in*
  %173 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 7
  store i32 %175, i32* %176, align 8
  %177 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %178 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = bitcast %struct.TYPE_6__* %179 to i32*
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = bitcast %struct.iphdr* %22 to %struct.ocrdma_grh*
  %185 = call i32 @memcpy(i32* %183, %struct.ocrdma_grh* %184, i32 112)
  br label %232

186:                                              ; preds = %119
  %187 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %18, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load %union.ib_gid*, %union.ib_gid** %12, align 8
  %191 = bitcast %union.ib_gid* %190 to %struct.ocrdma_grh**
  %192 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %191, align 8
  %193 = call i32 @memcpy(i32* %189, %struct.ocrdma_grh* %192, i32 8)
  %194 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %195 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = shl i32 %196, 24
  %198 = or i32 1610612736, %197
  %199 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %200 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %198, %201
  %203 = call i8* @cpu_to_be32(i32 %202)
  %204 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %18, i32 0, i32 6
  store i8* %203, i8** %204, align 8
  %205 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %18, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %209 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %208, i32 0, i32 3
  %210 = bitcast %union.ib_gid* %209 to %struct.ocrdma_grh**
  %211 = load %struct.ocrdma_grh*, %struct.ocrdma_grh** %210, align 8
  %212 = call i32 @memcpy(i32* %207, %struct.ocrdma_grh* %211, i32 8)
  %213 = load i32, i32* %13, align 4
  %214 = shl i32 %213, 16
  %215 = load i32, i32* %21, align 4
  %216 = shl i32 %215, 8
  %217 = or i32 %214, %216
  %218 = load %struct.ib_global_route*, %struct.ib_global_route** %23, align 8
  %219 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %217, %220
  %222 = call i8* @cpu_to_be32(i32 %221)
  %223 = getelementptr inbounds %struct.ocrdma_grh, %struct.ocrdma_grh* %18, i32 0, i32 5
  store i8* %222, i8** %223, align 8
  %224 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %225 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %224, i32 0, i32 1
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = bitcast %struct.TYPE_6__* %226 to i32*
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = call i32 @memcpy(i32* %230, %struct.ocrdma_grh* %18, i32 112)
  br label %232

232:                                              ; preds = %186, %139
  %233 = load i32*, i32** %14, align 8
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = load i32, i32* @OCRDMA_AV_VLAN_VALID, align 4
  %238 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %239 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %238, i32 0, i32 1
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %237
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %236, %232
  %245 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %246 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @cpu_to_le32(i32 %249)
  %251 = load %struct.ocrdma_ah*, %struct.ocrdma_ah** %10, align 8
  %252 = getelementptr inbounds %struct.ocrdma_ah, %struct.ocrdma_ah* %251, i32 0, i32 1
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  store i32 %250, i32* %254, align 4
  %255 = load i32, i32* %16, align 4
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %244, %117, %38
  %257 = load i32, i32* %8, align 4
  ret i32 %257
}

declare dso_local i32 @memset(%struct.ocrdma_grh*, i32, i32) #1

declare dso_local i32 @ocrdma_hdr_type_to_proto_num(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ocrdma_grh*, i32) #1

declare dso_local i32 @ocrdma_resolve_dmac(%struct.ocrdma_dev*, %struct.rdma_ah_attr*, i32*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @rdma_gid2ip(%struct.sockaddr*, %union.ib_gid*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
