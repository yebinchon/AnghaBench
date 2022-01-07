; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_stat_del_doit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_nldev_stat_del_doit.c"
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
@RDMA_NLDEV_ATTR_STAT_COUNTER_ID = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_RES_LQPN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_RES_QP = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_STAT_SET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @nldev_stat_del_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nldev_stat_del_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  %19 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %20 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %25 = load i32, i32* @RDMA_NLDEV_ATTR_MAX, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @nldev_policy, align 4
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %29 = call i32 @nlmsg_parse(%struct.nlmsghdr* %24, i32 0, %struct.nlattr** %23, i32 %26, i32 %27, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %3
  %33 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_RES, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_COUNTER_ID, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i64, i64* @RDMA_NLDEV_ATTR_RES_LQPN, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %47, %42, %37, %32, %3
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %187

60:                                               ; preds = %52
  %61 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_RES, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i64 @nla_get_u32(%struct.nlattr* %63)
  %65 = load i64, i64* @RDMA_NLDEV_ATTR_RES_QP, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %187

70:                                               ; preds = %60
  %71 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i64 @nla_get_u32(%struct.nlattr* %73)
  store i64 %74, i64* %12, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sock_net(i32 %77)
  %79 = load i64, i64* %12, align 8
  %80 = call %struct.ib_device* @ib_device_get_by_index(i32 %78, i64 %79)
  store %struct.ib_device* %80, %struct.ib_device** %10, align 8
  %81 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %82 = icmp ne %struct.ib_device* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %70
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %187

86:                                               ; preds = %70
  %87 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call i64 @nla_get_u32(%struct.nlattr* %89)
  store i64 %90, i64* %13, align 8
  %91 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @rdma_is_port_valid(%struct.ib_device* %91, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %16, align 4
  br label %183

98:                                               ; preds = %86
  %99 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.sk_buff* @nlmsg_new(i32 %99, i32 %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %11, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = icmp ne %struct.sk_buff* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %183

107:                                              ; preds = %98
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i32 @NETLINK_CB(%struct.sk_buff* %109)
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %115 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %118 = load i32, i32* @RDMA_NLDEV_CMD_STAT_SET, align 4
  %119 = call i32 @RDMA_NL_GET_TYPE(i32 %117, i32 %118)
  %120 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %108, i32 %113, i32 %116, i32 %119, i32 0, i32 0)
  store %struct.nlmsghdr* %120, %struct.nlmsghdr** %6, align 8
  %121 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_COUNTER_ID, align 8
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %121
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 8
  %124 = call i64 @nla_get_u32(%struct.nlattr* %123)
  store i64 %124, i64* %15, align 8
  %125 = load i64, i64* @RDMA_NLDEV_ATTR_RES_LQPN, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i64 @nla_get_u32(%struct.nlattr* %127)
  store i64 %128, i64* %14, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %130 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %131 = call i64 @fill_nldev_handle(%struct.sk_buff* %129, %struct.ib_device* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %107
  %134 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %135 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %136 = load i64, i64* %13, align 8
  %137 = call i64 @nla_put_u32(%struct.sk_buff* %134, i64 %135, i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %141 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_COUNTER_ID, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call i64 @nla_put_u32(%struct.sk_buff* %140, i64 %141, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %147 = load i64, i64* @RDMA_NLDEV_ATTR_RES_LQPN, align 8
  %148 = load i64, i64* %14, align 8
  %149 = call i64 @nla_put_u32(%struct.sk_buff* %146, i64 %147, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145, %139, %133, %107
  %152 = load i32, i32* @EMSGSIZE, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %16, align 4
  br label %180

154:                                              ; preds = %145
  %155 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %14, align 8
  %158 = load i64, i64* %15, align 8
  %159 = call i32 @rdma_counter_unbind_qpn(%struct.ib_device* %155, i64 %156, i64 %157, i64 %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %180

163:                                              ; preds = %154
  %164 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %165 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %166 = call i32 @nlmsg_end(%struct.sk_buff* %164, %struct.nlmsghdr* %165)
  %167 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %168 = call i32 @ib_device_put(%struct.ib_device* %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @sock_net(i32 %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call i32 @NETLINK_CB(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %175, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @rdma_nl_unicast(i32 %172, %struct.sk_buff* %173, i32 %178)
  store i32 %179, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %187

180:                                              ; preds = %162, %151
  %181 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %182 = call i32 @nlmsg_free(%struct.sk_buff* %181)
  br label %183

183:                                              ; preds = %180, %104, %95
  %184 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %185 = call i32 @ib_device_put(%struct.ib_device* %184)
  %186 = load i32, i32* %16, align 4
  store i32 %186, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %187

187:                                              ; preds = %183, %163, %83, %67, %57
  %188 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i32, i32* %4, align 4
  ret i32 %189
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

declare dso_local i64 @fill_nldev_handle(%struct.sk_buff*, %struct.ib_device*) #2

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i64, i64) #2

declare dso_local i32 @rdma_counter_unbind_qpn(%struct.ib_device*, i64, i64, i64) #2

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
