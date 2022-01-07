; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_stat_get_doit_default_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_stat_get_doit_default_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nlattr = type { i32 }
%struct.rdma_hw_stats = type { i32, i32*, i64* }
%struct.ib_device = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)*, i32 }
%struct.ib_device.0 = type opaque
%struct.TYPE_4__ = type { %struct.rdma_hw_stats* }
%struct.TYPE_6__ = type { i32 }

@RDMA_NLDEV_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_STAT_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_STAT_HWCOUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*, %struct.nlattr**)* @stat_get_doit_default_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_get_doit_default_counter(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.rdma_hw_stats*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_6__, align 4
  %21 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %23 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %29 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27, %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %239

36:                                               ; preds = %27
  %37 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %38 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i64 @nla_get_u32(%struct.nlattr* %40)
  store i64 %41, i64* %17, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sock_net(i32 %44)
  %46 = load i64, i64* %17, align 8
  %47 = call %struct.ib_device* @ib_device_get_by_index(i32 %45, i64 %46)
  store %struct.ib_device* %47, %struct.ib_device** %12, align 8
  %48 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %49 = icmp ne %struct.ib_device* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %239

53:                                               ; preds = %36
  %54 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %55 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %61 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)*, i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  br label %235

68:                                               ; preds = %59
  %69 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %70 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = call i64 @nla_get_u32(%struct.nlattr* %72)
  store i64 %73, i64* %18, align 8
  %74 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %75 = load i64, i64* %18, align 8
  %76 = call i32 @rdma_is_port_valid(%struct.ib_device* %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %13, align 4
  br label %235

81:                                               ; preds = %68
  %82 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.sk_buff* @nlmsg_new(i32 %82, i32 %83)
  store %struct.sk_buff* %84, %struct.sk_buff** %16, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %86 = icmp ne %struct.sk_buff* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %235

90:                                               ; preds = %81
  %91 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i32 @NETLINK_CB(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %98 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %101 = load i32, i32* @RDMA_NLDEV_CMD_STAT_GET, align 4
  %102 = call i32 @RDMA_NL_GET_TYPE(i32 %100, i32 %101)
  %103 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %91, i32 %96, i32 %99, i32 %102, i32 0, i32 0)
  store %struct.nlmsghdr* %103, %struct.nlmsghdr** %7, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %105 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %106 = call i64 @fill_nldev_handle(%struct.sk_buff* %104, %struct.ib_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %90
  %109 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %110 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %111 = load i64, i64* %18, align 8
  %112 = call i64 @nla_put_u32(%struct.sk_buff* %109, i64 %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108, %90
  %115 = load i32, i32* @EMSGSIZE, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %13, align 4
  br label %232

117:                                              ; preds = %108
  %118 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %119 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = icmp ne %struct.TYPE_4__* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %124 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %128, align 8
  br label %131

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %122
  %132 = phi %struct.rdma_hw_stats* [ %129, %122 ], [ null, %130 ]
  store %struct.rdma_hw_stats* %132, %struct.rdma_hw_stats** %10, align 8
  %133 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  %134 = icmp eq %struct.rdma_hw_stats* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %13, align 4
  br label %232

138:                                              ; preds = %131
  %139 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  %140 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %139, i32 0, i32 0
  %141 = call i32 @mutex_lock(i32* %140)
  %142 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %143 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)*, i32 (%struct.ib_device.0*, %struct.rdma_hw_stats*, i64, i32)** %144, align 8
  %146 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %147 = bitcast %struct.ib_device* %146 to %struct.ib_device.0*
  %148 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  %149 = load i64, i64* %18, align 8
  %150 = call i32 %145(%struct.ib_device.0* %147, %struct.rdma_hw_stats* %148, i64 %149, i32 0)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %138
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %13, align 4
  br label %228

156:                                              ; preds = %138
  %157 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %158 = load i32, i32* @RDMA_NLDEV_ATTR_STAT_HWCOUNTERS, align 4
  %159 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %157, i32 %158)
  store %struct.nlattr* %159, %struct.nlattr** %11, align 8
  %160 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %161 = icmp ne %struct.nlattr* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* @EMSGSIZE, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %13, align 4
  br label %228

165:                                              ; preds = %156
  store i32 0, i32* %15, align 4
  br label %166

166:                                              ; preds = %198, %165
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %166
  %171 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  %172 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %179 = load i64, i64* %18, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @rdma_counter_get_hwstat_value(%struct.ib_device* %178, i64 %179, i32 %180)
  %182 = add nsw i64 %177, %181
  store i64 %182, i64* %19, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %184 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  %185 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i64, i64* %19, align 8
  %192 = call i64 @fill_stat_hwcounter_entry(%struct.sk_buff* %183, i32 %190, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %170
  %195 = load i32, i32* @EMSGSIZE, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %13, align 4
  br label %224

197:                                              ; preds = %170
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %15, align 4
  br label %166

201:                                              ; preds = %166
  %202 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %203 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %204 = call i32 @nla_nest_end(%struct.sk_buff* %202, %struct.nlattr* %203)
  %205 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  %206 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %205, i32 0, i32 0
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %209 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %210 = call i32 @nlmsg_end(%struct.sk_buff* %208, %struct.nlmsghdr* %209)
  %211 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %212 = call i32 @ib_device_put(%struct.ib_device* %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @sock_net(i32 %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %219 = call i32 @NETLINK_CB(%struct.sk_buff* %218)
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %219, i32* %220, align 4
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @rdma_nl_unicast(i32 %216, %struct.sk_buff* %217, i32 %222)
  store i32 %223, i32* %5, align 4
  br label %239

224:                                              ; preds = %194
  %225 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %226 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %227 = call i32 @nla_nest_cancel(%struct.sk_buff* %225, %struct.nlattr* %226)
  br label %228

228:                                              ; preds = %224, %162, %153
  %229 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %10, align 8
  %230 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %229, i32 0, i32 0
  %231 = call i32 @mutex_unlock(i32* %230)
  br label %232

232:                                              ; preds = %228, %135, %114
  %233 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %234 = call i32 @nlmsg_free(%struct.sk_buff* %233)
  br label %235

235:                                              ; preds = %232, %87, %78, %65
  %236 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %237 = call i32 @ib_device_put(%struct.ib_device* %236)
  %238 = load i32, i32* %13, align 4
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %235, %201, %50, %33
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i64) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #1

declare dso_local i64 @fill_nldev_handle(%struct.sk_buff*, %struct.ib_device*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @rdma_counter_get_hwstat_value(%struct.ib_device*, i64, i32) #1

declare dso_local i64 @fill_stat_hwcounter_entry(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local i32 @rdma_nl_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
