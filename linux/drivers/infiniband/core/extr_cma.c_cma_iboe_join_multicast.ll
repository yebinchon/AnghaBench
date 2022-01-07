; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_iboe_join_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_iboe_join_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i64, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.cma_multicast = type { i64, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { %struct.iboe_mcast_work* }
%struct.iboe_mcast_work = type { i32, %struct.cma_multicast*, %struct.rdma_id_private*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i64 }
%struct.net_device = type { i32 }

@SENDONLY_FULLMEMBER_JOIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_PS_UDP = common dso_local global i64 0, align 8
@RDMA_UDP_QKEY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i32 0, align 4
@IPV6_DEFAULT_HOPLIMIT = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@iboe_mcast_work_handler = common dso_local global i32 0, align 4
@cma_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.cma_multicast*)* @cma_iboe_join_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_iboe_join_multicast(%struct.rdma_id_private* %0, %struct.cma_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_multicast*, align 8
  %6 = alloca %struct.iboe_mcast_work*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.cma_multicast* %1, %struct.cma_multicast** %5, align 8
  %13 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %14 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store %struct.rdma_dev_addr* %17, %struct.rdma_dev_addr** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %19 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %18, i32 0, i32 3
  %20 = bitcast i32* %19 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %9, align 8
  store %struct.net_device* null, %struct.net_device** %10, align 8
  %21 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %22 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @SENDONLY_FULLMEMBER_JOIN, align 4
  %25 = call i64 @BIT(i32 %24)
  %26 = icmp eq i64 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %29 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %28, i32 0, i32 3
  %30 = bitcast i32* %29 to %struct.sockaddr*
  %31 = call i64 @cma_zero_addr(%struct.sockaddr* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %254

36:                                               ; preds = %2
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 56, i32 %37)
  %39 = bitcast i8* %38 to %struct.iboe_mcast_work*
  store %struct.iboe_mcast_work* %39, %struct.iboe_mcast_work** %6, align 8
  %40 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %41 = icmp ne %struct.iboe_mcast_work* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %254

45:                                               ; preds = %36
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 4, i32 %46)
  %48 = bitcast i8* %47 to %struct.iboe_mcast_work*
  %49 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %50 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store %struct.iboe_mcast_work* %48, %struct.iboe_mcast_work** %51, align 8
  %52 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %53 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %54, align 8
  %56 = icmp ne %struct.iboe_mcast_work* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %250

60:                                               ; preds = %45
  %61 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %62 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %67 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %71 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @rdma_start_port(i32 %74)
  %76 = sub i64 %69, %75
  %77 = getelementptr inbounds i32, i32* %65, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %80 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %81 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %82, align 8
  %84 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @cma_iboe_set_mgid(%struct.sockaddr* %79, i32* %85, i32 %86)
  %88 = call i32 @cpu_to_be16(i32 65535)
  %89 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %90 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %91, align 8
  %93 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  store i32 %88, i32* %94, align 8
  %95 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %96 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RDMA_PS_UDP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %60
  %102 = load i32, i32* @RDMA_UDP_QKEY, align 4
  %103 = call i32 @cpu_to_be32(i32 %102)
  %104 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %105 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %106, align 8
  %108 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 5
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %101, %60
  %111 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %112 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %117 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %120 = getelementptr inbounds %struct.rdma_dev_addr, %struct.rdma_dev_addr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.net_device* @dev_get_by_index(i32 %118, i64 %121)
  store %struct.net_device* %122, %struct.net_device** %10, align 8
  br label %123

123:                                              ; preds = %115, %110
  %124 = load %struct.net_device*, %struct.net_device** %10, align 8
  %125 = icmp ne %struct.net_device* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %244

129:                                              ; preds = %123
  %130 = load %struct.net_device*, %struct.net_device** %10, align 8
  %131 = call i32 @iboe_get_rate(%struct.net_device* %130)
  %132 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %133 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %134, align 8
  %136 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  store i32 %131, i32* %137, align 8
  %138 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %139 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %140, align 8
  %142 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %10, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @iboe_get_mtu(i32 %146)
  %148 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %149 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %150, align 8
  %152 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  store i32 %147, i32* %153, align 8
  %154 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %155 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @AF_INET, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %129
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %159
  %164 = load i32, i32* @IPV6_DEFAULT_HOPLIMIT, align 4
  %165 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %166 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %167, align 8
  %169 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 8
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %163
  %174 = load %struct.net_device*, %struct.net_device** %10, align 8
  %175 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %176 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %177, align 8
  %179 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = call i32 @cma_igmp_send(%struct.net_device* %174, i32* %180, i32 1)
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %173, %163
  br label %183

183:                                              ; preds = %182, %159
  br label %192

184:                                              ; preds = %129
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* @ENOTSUPP, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %188, %184
  br label %192

192:                                              ; preds = %191, %183
  %193 = load %struct.net_device*, %struct.net_device** %10, align 8
  %194 = call i32 @dev_put(%struct.net_device* %193)
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %192
  %198 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %199 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %200, align 8
  %202 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %197, %192
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %209, %206
  br label %244

213:                                              ; preds = %197
  %214 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %215 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = bitcast i32* %218 to %struct.sockaddr*
  %220 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %221 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %222, align 8
  %224 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = call i32 @rdma_ip2gid(%struct.sockaddr* %219, i32* %225)
  %227 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %228 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %229 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %228, i32 0, i32 2
  store %struct.rdma_id_private* %227, %struct.rdma_id_private** %229, align 8
  %230 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %231 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %232 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %231, i32 0, i32 1
  store %struct.cma_multicast* %230, %struct.cma_multicast** %232, align 8
  %233 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %234 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %233, i32 0, i32 0
  %235 = load i32, i32* @iboe_mcast_work_handler, align 4
  %236 = call i32 @INIT_WORK(i32* %234, i32 %235)
  %237 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %238 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %237, i32 0, i32 2
  %239 = call i32 @kref_get(i32* %238)
  %240 = load i32, i32* @cma_wq, align 4
  %241 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %242 = getelementptr inbounds %struct.iboe_mcast_work, %struct.iboe_mcast_work* %241, i32 0, i32 0
  %243 = call i32 @queue_work(i32 %240, i32* %242)
  store i32 0, i32* %3, align 4
  br label %254

244:                                              ; preds = %212, %126
  %245 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %246 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  %248 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %247, align 8
  %249 = call i32 @kfree(%struct.iboe_mcast_work* %248)
  br label %250

250:                                              ; preds = %244, %57
  %251 = load %struct.iboe_mcast_work*, %struct.iboe_mcast_work** %6, align 8
  %252 = call i32 @kfree(%struct.iboe_mcast_work* %251)
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %250, %213, %42, %33
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i64 @cma_zero_addr(%struct.sockaddr*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @rdma_start_port(i32) #1

declare dso_local i32 @cma_iboe_set_mgid(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32, i64) #1

declare dso_local i32 @iboe_get_rate(%struct.net_device*) #1

declare dso_local i32 @iboe_get_mtu(i32) #1

declare dso_local i32 @cma_igmp_send(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @rdma_ip2gid(%struct.sockaddr*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.iboe_mcast_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
