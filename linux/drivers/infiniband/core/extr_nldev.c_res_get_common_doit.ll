; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_res_get_common_doit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_res_get_common_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nldev_fill_res_entry = type { i64, i32, i32 (%struct.sk_buff*, i32, %struct.rdma_restrack_entry*, i64)*, i32 }
%struct.sk_buff = type { i32 }
%struct.rdma_restrack_entry = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ib_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@fill_entries = common dso_local global %struct.nldev_fill_res_entry* null, align 8
@RDMA_NLDEV_ATTR_MAX = common dso_local global i32 0, align 4
@nldev_policy = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i64 0, align 8
@NLDEV_PER_DEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*, i32)* @res_get_common_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_get_common_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nldev_fill_res_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rdma_restrack_entry*, align 8
  %14 = alloca %struct.ib_device*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  %23 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** @fill_entries, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %24, i64 %26
  store %struct.nldev_fill_res_entry* %27, %struct.nldev_fill_res_entry** %10, align 8
  %28 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca %struct.nlattr*, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  store i64 0, i64* %17, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %33 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @nldev_policy, align 4
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %37 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %32, i32 0, %struct.nlattr** %31, i32 %34, i32 %35, %struct.netlink_ext_ack* %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %4
  %41 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** %10, align 8
  %47 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** %10, align 8
  %52 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50, %45, %40, %4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %218

60:                                               ; preds = %50
  %61 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i64 @nla_get_u32(%struct.nlattr* %63)
  store i64 %64, i64* %15, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @sock_net(i32 %67)
  %69 = load i64, i64* %15, align 8
  %70 = call %struct.ib_device* @ib_device_get_by_index(i32 %68, i64 %69)
  store %struct.ib_device* %70, %struct.ib_device** %14, align 8
  %71 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %72 = icmp ne %struct.ib_device* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %218

76:                                               ; preds = %60
  %77 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = call i64 @nla_get_u32(%struct.nlattr* %84)
  store i64 %85, i64* %17, align 8
  %86 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @rdma_is_port_valid(%struct.ib_device* %86, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %20, align 4
  br label %214

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %76
  %95 = load i64, i64* %17, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** %10, align 8
  %99 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @NLDEV_PER_DEV, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %97, %94
  %105 = load i64, i64* %17, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** %10, align 8
  %109 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = xor i32 %110, -1
  %112 = load i32, i32* @NLDEV_PER_DEV, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107, %97
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %20, align 4
  br label %214

118:                                              ; preds = %107, %104
  %119 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** %10, align 8
  %120 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %121
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 8
  %124 = call i64 @nla_get_u32(%struct.nlattr* %123)
  store i64 %124, i64* %16, align 8
  %125 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i64, i64* %16, align 8
  %128 = call %struct.rdma_restrack_entry* @rdma_restrack_get_byid(%struct.ib_device* %125, i32 %126, i64 %127)
  store %struct.rdma_restrack_entry* %128, %struct.rdma_restrack_entry** %13, align 8
  %129 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %13, align 8
  %130 = call i64 @IS_ERR(%struct.rdma_restrack_entry* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %13, align 8
  %134 = call i32 @PTR_ERR(%struct.rdma_restrack_entry* %133)
  store i32 %134, i32* %20, align 4
  br label %214

135:                                              ; preds = %118
  %136 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %13, align 8
  %137 = call i32 @rdma_is_visible_in_pid_ns(%struct.rdma_restrack_entry* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* @ENOENT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %20, align 4
  br label %211

142:                                              ; preds = %135
  %143 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call %struct.sk_buff* @nlmsg_new(i32 %143, i32 %144)
  store %struct.sk_buff* %145, %struct.sk_buff** %19, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %147 = icmp ne %struct.sk_buff* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %20, align 4
  br label %211

151:                                              ; preds = %142
  %152 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = call i32 @NETLINK_CB(%struct.sk_buff* %153)
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %159 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %162 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** %10, align 8
  %163 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @RDMA_NL_GET_TYPE(i32 %161, i32 %164)
  %166 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %152, i32 %157, i32 %160, i32 %165, i32 0, i32 0)
  store %struct.nlmsghdr* %166, %struct.nlmsghdr** %7, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %168 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %169 = call i64 @fill_nldev_handle(%struct.sk_buff* %167, %struct.ib_device* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %151
  %172 = load i32, i32* @EMSGSIZE, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %20, align 4
  br label %208

174:                                              ; preds = %151
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = load i32, i32* @CAP_NET_ADMIN, align 4
  %177 = call i32 @netlink_capable(%struct.sk_buff* %175, i32 %176)
  store i32 %177, i32* %18, align 4
  %178 = load %struct.nldev_fill_res_entry*, %struct.nldev_fill_res_entry** %10, align 8
  %179 = getelementptr inbounds %struct.nldev_fill_res_entry, %struct.nldev_fill_res_entry* %178, i32 0, i32 2
  %180 = load i32 (%struct.sk_buff*, i32, %struct.rdma_restrack_entry*, i64)*, i32 (%struct.sk_buff*, i32, %struct.rdma_restrack_entry*, i64)** %179, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %182 = load i32, i32* %18, align 4
  %183 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %13, align 8
  %184 = load i64, i64* %17, align 8
  %185 = call i32 %180(%struct.sk_buff* %181, i32 %182, %struct.rdma_restrack_entry* %183, i64 %184)
  store i32 %185, i32* %20, align 4
  %186 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %13, align 8
  %187 = call i32 @rdma_restrack_put(%struct.rdma_restrack_entry* %186)
  %188 = load i32, i32* %20, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %174
  br label %208

191:                                              ; preds = %174
  %192 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %193 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %194 = call i32 @nlmsg_end(%struct.sk_buff* %192, %struct.nlmsghdr* %193)
  %195 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %196 = call i32 @ib_device_put(%struct.ib_device* %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @sock_net(i32 %199)
  %201 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %203 = call i32 @NETLINK_CB(%struct.sk_buff* %202)
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %203, i32* %204, align 4
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @rdma_nl_unicast(i32 %200, %struct.sk_buff* %201, i32 %206)
  store i32 %207, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %218

208:                                              ; preds = %190, %171
  %209 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %210 = call i32 @nlmsg_free(%struct.sk_buff* %209)
  br label %211

211:                                              ; preds = %208, %148, %139
  %212 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %13, align 8
  %213 = call i32 @rdma_restrack_put(%struct.rdma_restrack_entry* %212)
  br label %214

214:                                              ; preds = %211, %132, %115, %90
  %215 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %216 = call i32 @ib_device_put(%struct.ib_device* %215)
  %217 = load i32, i32* %20, align 4
  store i32 %217, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %218

218:                                              ; preds = %214, %191, %73, %57
  %219 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i64) #2

declare dso_local i32 @sock_net(i32) #2

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #2

declare dso_local %struct.rdma_restrack_entry* @rdma_restrack_get_byid(%struct.ib_device*, i32, i64) #2

declare dso_local i64 @IS_ERR(%struct.rdma_restrack_entry*) #2

declare dso_local i32 @PTR_ERR(%struct.rdma_restrack_entry*) #2

declare dso_local i32 @rdma_is_visible_in_pid_ns(%struct.rdma_restrack_entry*) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #2

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #2

declare dso_local i64 @fill_nldev_handle(%struct.sk_buff*, %struct.ib_device*) #2

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #2

declare dso_local i32 @rdma_restrack_put(%struct.rdma_restrack_entry*) #2

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #2

declare dso_local i32 @ib_device_put(%struct.ib_device*) #2

declare dso_local i32 @rdma_nl_unicast(i32, %struct.sk_buff*, i32) #2

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
