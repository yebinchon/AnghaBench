; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_stat_get_doit_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_stat_get_doit_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nlattr = type { i32 }
%struct.ib_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@stat_get_doit_qp.mode = internal global i32 0, align 4
@stat_get_doit_qp.mask = internal global i32 0, align 4
@RDMA_NLDEV_ATTR_STAT_COUNTER_ID = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_STAT_MODE = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_DEV_INDEX = common dso_local global i64 0, align 8
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_NL_NLDEV = common dso_local global i32 0, align 4
@RDMA_NLDEV_CMD_STAT_GET = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RDMA_COUNTER_MODE_AUTO = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_STAT_AUTO_MODE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*, %struct.nlattr**)* @stat_get_doit_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_get_doit_qp(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  %17 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %18 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_COUNTER_ID, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %26 = call i32 @nldev_res_get_counter_doit(%struct.sk_buff* %23, %struct.nlmsghdr* %24, %struct.netlink_ext_ack* %25)
  store i32 %26, i32* %5, align 4
  br label %164

27:                                               ; preds = %4
  %28 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %29 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_MODE, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %35 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %41 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39, %33, %27
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %164

48:                                               ; preds = %39
  %49 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %50 = load i64, i64* @RDMA_NLDEV_ATTR_DEV_INDEX, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_u32(%struct.nlattr* %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sock_net(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.ib_device* @ib_device_get_by_index(i32 %57, i32 %58)
  store %struct.ib_device* %59, %struct.ib_device** %10, align 8
  %60 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %61 = icmp ne %struct.ib_device* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %164

65:                                               ; preds = %48
  %66 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %67 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @nla_get_u32(%struct.nlattr* %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @rdma_is_port_valid(%struct.ib_device* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %14, align 4
  br label %160

78:                                               ; preds = %65
  %79 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.sk_buff* @nlmsg_new(i32 %79, i32 %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %11, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %160

87:                                               ; preds = %78
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call i32 @NETLINK_CB(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %95 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RDMA_NL_NLDEV, align 4
  %98 = load i32, i32* @RDMA_NLDEV_CMD_STAT_GET, align 4
  %99 = call i32 @RDMA_NL_GET_TYPE(i32 %97, i32 %98)
  %100 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %88, i32 %93, i32 %96, i32 %99, i32 0, i32 0)
  store %struct.nlmsghdr* %100, %struct.nlmsghdr** %7, align 8
  %101 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @rdma_counter_get_mode(%struct.ib_device* %101, i32 %102, i32* @stat_get_doit_qp.mode, i32* @stat_get_doit_qp.mask)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %87
  br label %157

107:                                              ; preds = %87
  %108 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %109 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %110 = call i64 @fill_nldev_handle(%struct.sk_buff* %108, %struct.ib_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %107
  %113 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %114 = load i64, i64* @RDMA_NLDEV_ATTR_PORT_INDEX, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i64 @nla_put_u32(%struct.sk_buff* %113, i64 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %120 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_MODE, align 8
  %121 = load i32, i32* @stat_get_doit_qp.mode, align 4
  %122 = call i64 @nla_put_u32(%struct.sk_buff* %119, i64 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118, %112, %107
  %125 = load i32, i32* @EMSGSIZE, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %157

127:                                              ; preds = %118
  %128 = load i32, i32* @stat_get_doit_qp.mode, align 4
  %129 = load i32, i32* @RDMA_COUNTER_MODE_AUTO, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %133 = load i64, i64* @RDMA_NLDEV_ATTR_STAT_AUTO_MODE_MASK, align 8
  %134 = load i32, i32* @stat_get_doit_qp.mask, align 4
  %135 = call i64 @nla_put_u32(%struct.sk_buff* %132, i64 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* @EMSGSIZE, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %14, align 4
  br label %157

140:                                              ; preds = %131, %127
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %143 = call i32 @nlmsg_end(%struct.sk_buff* %141, %struct.nlmsghdr* %142)
  %144 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %145 = call i32 @ib_device_put(%struct.ib_device* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @sock_net(i32 %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = call i32 @NETLINK_CB(%struct.sk_buff* %151)
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @rdma_nl_unicast(i32 %149, %struct.sk_buff* %150, i32 %155)
  store i32 %156, i32* %5, align 4
  br label %164

157:                                              ; preds = %137, %124, %106
  %158 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %159 = call i32 @nlmsg_free(%struct.sk_buff* %158)
  br label %160

160:                                              ; preds = %157, %84, %75
  %161 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %162 = call i32 @ib_device_put(%struct.ib_device* %161)
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %160, %140, %62, %45, %22
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @nldev_res_get_counter_doit(%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.ib_device* @ib_device_get_by_index(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @RDMA_NL_GET_TYPE(i32, i32) #1

declare dso_local i32 @rdma_counter_get_mode(%struct.ib_device*, i32, i32*, i32*) #1

declare dso_local i64 @fill_nldev_handle(%struct.sk_buff*, %struct.ib_device*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @ib_device_put(%struct.ib_device*) #1

declare dso_local i32 @rdma_nl_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
