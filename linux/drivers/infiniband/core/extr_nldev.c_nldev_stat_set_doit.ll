; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_stat_set_doit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_stat_set_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ib_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@RDMA_NLDEV_ATTR_MAX = common dso_local global i32 0, align 4
@nldev_policy = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_STAT_RES = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_STAT_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_RES_QP = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_STAT_SET = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_AUTO = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_STAT_AUTO_MODE_MASK = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_RES_LQPN = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_STAT_COUNTER_ID = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_stat_set_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_stat_set_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ib_device*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_2__, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %22 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %14, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @nldev_policy, align 4
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %31 = call i32 @nlmsg_parse(%struct.nlmsghdr* %26, i32 0, %struct.nlattr** %25, i32 %28, i32 %29, %struct.netlink_ext_ack* %30)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %3
  %35 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_RES, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_MODE, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %44, %39, %34, %3
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

57:                                               ; preds = %49
  %58 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_RES, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i64 @nla_get_u32(%struct.nlattr* %60)
  %62 = load i64, i64* @RDMA_NLDEV_ATTR_RES_QP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

67:                                               ; preds = %57
  %68 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i64 @nla_get_u32(%struct.nlattr* %70)
  store i64 %71, i64* %8, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sock_net(i32 %74)
  %76 = load i64, i64* %8, align 8
  %77 = call %struct.ib_device* @ib_device_get_by_index(i32 %75, i64 %76)
  store %struct.ib_device* %77, %struct.ib_device** %16, align 8
  %78 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %79 = icmp ne %struct.ib_device* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

83:                                               ; preds = %67
  %84 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i64 @nla_get_u32(%struct.nlattr* %86)
  store i64 %87, i64* %9, align 8
  %88 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @rdma_is_port_valid(%struct.ib_device* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %18, align 4
  br label %229

95:                                               ; preds = %83
  %96 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.sk_buff* @nlmsg_new(i32 %96, i32 %97)
  store %struct.sk_buff* %98, %struct.sk_buff** %17, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %100 = icmp ne %struct.sk_buff* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %18, align 4
  br label %229

104:                                              ; preds = %95
  %105 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @NETLINK_CB(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %112 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %115 = load i32, i32* @RDMA_NLDEV_CMD_STAT_SET, align 4
  %116 = call i32 @RDMA_NL_GET_TYPE(i32 %114, i32 %115)
  %117 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %105, i32 %110, i32 %113, i32 %116, i32 0, i32 0)
  store %struct.nlmsghdr* %117, %struct.nlmsghdr** %6, align 8
  %118 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_MODE, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = call i64 @nla_get_u32(%struct.nlattr* %120)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* @RDMA_COUNTER_MODE_AUTO, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %104
  %126 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_AUTO_MODE_MASK, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = icmp ne %struct.nlattr* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_AUTO_MODE_MASK, align 8
  %132 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %131
  %133 = load %struct.nlattr*, %struct.nlattr** %132, align 8
  %134 = call i64 @nla_get_u32(%struct.nlattr* %133)
  store i64 %134, i64* %11, align 8
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 1, i32 0
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @rdma_counter_set_auto_mode(%struct.ib_device* %136, i64 %137, i32 %141, i64 %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %226

147:                                              ; preds = %135
  br label %203

148:                                              ; preds = %104
  %149 = load i64, i64* @RDMA_NLDEV_ATTR_RES_LQPN, align 8
  %150 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %149
  %151 = load %struct.nlattr*, %struct.nlattr** %150, align 8
  %152 = call i64 @nla_get_u32(%struct.nlattr* %151)
  store i64 %152, i64* %12, align 8
  %153 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_COUNTER_ID, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  %156 = icmp ne %struct.nlattr* %155, null
  br i1 %156, label %157, label %167

157:                                              ; preds = %148
  %158 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_COUNTER_ID, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = call i64 @nla_get_u32(%struct.nlattr* %160)
  store i64 %161, i64* %13, align 8
  %162 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %163 = load i64, i64* %9, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* %13, align 8
  %166 = call i32 @rdma_counter_bind_qpn(%struct.ib_device* %162, i64 %163, i64 %164, i64 %165)
  store i32 %166, i32* %18, align 4
  br label %172

167:                                              ; preds = %148
  %168 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @rdma_counter_bind_qpn_alloc(%struct.ib_device* %168, i64 %169, i64 %170, i64* %13)
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %167, %157
  %173 = load i32, i32* %18, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %226

176:                                              ; preds = %172
  %177 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %178 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %179 = call i64 @fill_nldev_handle(%struct.sk_buff* %177, %struct.ib_device* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %199, label %181

181:                                              ; preds = %176
  %182 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %183 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i64 @nla_put_u32(%struct.sk_buff* %182, i64 %183, i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %181
  %188 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %189 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_COUNTER_ID, align 8
  %190 = load i64, i64* %13, align 8
  %191 = call i64 @nla_put_u32(%struct.sk_buff* %188, i64 %189, i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %195 = load i64, i64* @RDMA_NLDEV_ATTR_RES_LQPN, align 8
  %196 = load i64, i64* %12, align 8
  %197 = call i64 @nla_put_u32(%struct.sk_buff* %194, i64 %195, i64 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %193, %187, %181, %176
  %200 = load i32, i32* @EMSGSIZE, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %18, align 4
  br label %220

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %147
  %204 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %205 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %206 = call i32 @nlmsg_end(%struct.sk_buff* %204, %struct.nlmsghdr* %205)
  %207 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %208 = call i32 @ib_device_put(%struct.ib_device* %207)
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @sock_net(i32 %211)
  %213 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %215 = call i32 @NETLINK_CB(%struct.sk_buff* %214)
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %215, i32* %216, align 4
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @rdma_nl_unicast(i32 %212, %struct.sk_buff* %213, i32 %218)
  store i32 %219, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

220:                                              ; preds = %199
  %221 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %222 = load i64, i64* %9, align 8
  %223 = load i64, i64* %12, align 8
  %224 = load i64, i64* %13, align 8
  %225 = call i32 @rdma_counter_unbind_qpn(%struct.ib_device* %221, i64 %222, i64 %223, i64 %224)
  br label %226

226:                                              ; preds = %220, %175, %146
  %227 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %228 = call i32 @nlmsg_free(%struct.sk_buff* %227)
  br label %229

229:                                              ; preds = %226, %101, %92
  %230 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  %231 = call i32 @ib_device_put(%struct.ib_device* %230)
  %232 = load i32, i32* %18, align 4
  store i32 %232, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

233:                                              ; preds = %229, %203, %80, %64, %54
  %234 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i64) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #2

declare dso_local i32 @rdma_counter_set_auto_mode(%struct.ib_device*, i64, i32, i64) #2

declare dso_local i32 @rdma_counter_bind_qpn(%struct.ib_device*, i64, i64, i64) #2

declare dso_local i32 @rdma_counter_bind_qpn_alloc(%struct.ib_device*, i64, i64, i64*) #2

declare dso_local i64 @fill_nldev_handle(%struct.sk_buff*, %struct.ib_device*) #2

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i64, i64) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @ib_device_put(%struct.ib_device*) #2

declare dso_local i32 @rdma_nl_unicast(i32, %struct.sk_buff*, i32) #2

declare dso_local i32 @rdma_counter_unbind_qpn(%struct.ib_device*, i64, i64, i64) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
