; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_get_chardev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_get_chardev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ib_client_nl_info = type { i32, %struct.TYPE_4__*, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }

@RDMA_NLDEV_ATTR_MAX = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_CHARDEV_TYPE_SIZE = common dso_local global i32 0, align 4
@nldev_policy = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_CHARDEV_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_GET_CHARDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_CHARDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PAD = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_CHARDEV_ABI = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_CHARDEV_NAME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_get_chardev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_get_chardev(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ib_client_nl_info, align 8
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 4
  %18 = alloca %struct.TYPE_5__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %19 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @RDMA_NLDEV_ATTR_CHARDEV_TYPE_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = bitcast %struct.ib_client_nl_info* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 32, i1 false)
  store %struct.ib_device* null, %struct.ib_device** %12, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %28 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @nldev_policy, align 4
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %32 = call i32 @nlmsg_parse(%struct.nlmsghdr* %27, i32 0, %struct.nlattr** %22, i32 %29, i32 %30, %struct.netlink_ext_ack* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load i64, i64* @RDMA_NLDEV_ATTR_CHARDEV_TYPE, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %205

43:                                               ; preds = %35
  %44 = load i64, i64* @RDMA_NLDEV_ATTR_CHARDEV_TYPE, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = trunc i64 %24 to i32
  %48 = call i32 @nla_strlcpy(i8* %25, %struct.nlattr* %46, i32 %47)
  %49 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %93

53:                                               ; preds = %43
  %54 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i8* @nla_get_u32(%struct.nlattr* %56)
  store i8* %57, i8** %14, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sock_net(i32 %60)
  %62 = load i8*, i8** %14, align 8
  %63 = call %struct.ib_device* @ib_device_get_by_index(i32 %61, i8* %62)
  store %struct.ib_device* %63, %struct.ib_device** %12, align 8
  %64 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %65 = icmp ne %struct.ib_device* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %205

69:                                               ; preds = %53
  %70 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i8* @nla_get_u32(%struct.nlattr* %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  %81 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %82 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @rdma_is_port_valid(%struct.ib_device* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %74
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %15, align 4
  br label %197

89:                                               ; preds = %74
  br label %92

90:                                               ; preds = %69
  %91 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  br label %92

92:                                               ; preds = %90, %89
  br label %102

93:                                               ; preds = %43
  %94 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %95 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %94
  %96 = load %struct.nlattr*, %struct.nlattr** %95, align 8
  %97 = icmp ne %struct.nlattr* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %205

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %92
  %103 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.sk_buff* @nlmsg_new(i32 %103, i32 %104)
  store %struct.sk_buff* %105, %struct.sk_buff** %13, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %107 = icmp ne %struct.sk_buff* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %197

111:                                              ; preds = %102
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = call i32 @NETLINK_CB(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %119 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %122 = load i32, i32* @RDMA_NLDEV_CMD_GET_CHARDEV, align 4
  %123 = call i32 @RDMA_NL_GET_TYPE(i32 %121, i32 %122)
  %124 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %112, i32 %117, i32 %120, i32 %123, i32 0, i32 0)
  store %struct.nlmsghdr* %124, %struct.nlmsghdr** %6, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %126 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 3
  store %struct.sk_buff* %125, %struct.sk_buff** %126, align 8
  %127 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %128 = call i32 @ib_get_client_nl_info(%struct.ib_device* %127, i8* %25, %struct.ib_client_nl_info* %11)
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %111
  br label %194

132:                                              ; preds = %111
  %133 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %134 = load i32, i32* @RDMA_NLDEV_ATTR_CHARDEV, align 4
  %135 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @huge_encode_dev(i32 %138)
  %140 = load i32, i32* @RDMA_NLDEV_ATTR_PAD, align 4
  %141 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %133, i32 %134, i32 %139, i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  br label %190

145:                                              ; preds = %132
  %146 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %147 = load i32, i32* @RDMA_NLDEV_ATTR_CHARDEV_ABI, align 4
  %148 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @RDMA_NLDEV_ATTR_PAD, align 4
  %151 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %146, i32 %147, i32 %149, i32 %150)
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %190

155:                                              ; preds = %145
  %156 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %157 = load i32, i32* @RDMA_NLDEV_ATTR_CHARDEV_NAME, align 4
  %158 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = call i32 @dev_name(%struct.TYPE_4__* %159)
  %161 = call i64 @nla_put_string(%struct.sk_buff* %156, i32 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32, i32* @EMSGSIZE, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %15, align 4
  br label %190

166:                                              ; preds = %155
  %167 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %168 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %169 = call i32 @nlmsg_end(%struct.sk_buff* %167, %struct.nlmsghdr* %168)
  %170 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = call i32 @put_device(%struct.TYPE_4__* %171)
  %173 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %174 = icmp ne %struct.ib_device* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %177 = call i32 @ib_device_put(%struct.ib_device* %176)
  br label %178

178:                                              ; preds = %175, %166
  %179 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @sock_net(i32 %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = call i32 @NETLINK_CB(%struct.sk_buff* %184)
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %185, i32* %186, align 4
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @rdma_nl_unicast(i32 %182, %struct.sk_buff* %183, i32 %188)
  store i32 %189, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %205

190:                                              ; preds = %163, %154, %144
  %191 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %11, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = call i32 @put_device(%struct.TYPE_4__* %192)
  br label %194

194:                                              ; preds = %190, %131
  %195 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %196 = call i32 @nlmsg_free(%struct.sk_buff* %195)
  br label %197

197:                                              ; preds = %194, %108, %86
  %198 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %199 = icmp ne %struct.ib_device* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %202 = call i32 @ib_device_put(%struct.ib_device* %201)
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %205

205:                                              ; preds = %203, %178, %98, %66, %40
  %206 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #3

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i32) #3

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #3

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i8*) #3

declare dso_local i32 @sock_net(i32) #3

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #3

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #3

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #3

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #3

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #3

declare dso_local i32 @ib_get_client_nl_info(%struct.ib_device*, i8*, %struct.ib_client_nl_info*) #3

declare dso_local i32 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #3

declare dso_local i32 @huge_encode_dev(i32) #3

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #3

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #3

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #3

declare dso_local i32 @put_device(%struct.TYPE_4__*) #3

declare dso_local i32 @ib_device_put(%struct.ib_device*) #3

declare dso_local i32 @rdma_nl_unicast(i32, %struct.sk_buff*, i32) #3

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
