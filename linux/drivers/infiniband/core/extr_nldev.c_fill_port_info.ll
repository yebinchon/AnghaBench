; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ib_device = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@EMSGSIZE = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_CAP_FLAGS = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PAD = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_SUBNET_PREFIX = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_LID = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_SM_LID = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_LMC = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PORT_STATE = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PORT_PHYS_STATE = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_NDEV_INDEX = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_NDEV_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ib_device*, i32, %struct.net*)* @fill_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_port_info(%struct.sk_buff* %0, %struct.ib_device* %1, i32 %2, %struct.net* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ib_port_attr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.net* %3, %struct.net** %9, align 8
  store %struct.net_device* null, %struct.net_device** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %16 = call i64 @fill_nldev_handle(%struct.sk_buff* %14, %struct.ib_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %161

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load i32, i32* @RDMA_NLDEV_ATTR_PORT_INDEX, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %161

30:                                               ; preds = %21
  %31 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ib_query_port(%struct.ib_device* %31, i32 %32, %struct.ib_port_attr* %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %161

38:                                               ; preds = %30
  %39 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @rdma_protocol_ib(%struct.ib_device* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %38
  %44 = call i32 @BUILD_BUG_ON(i32 1)
  %45 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 32
  %51 = or i32 %46, %50
  store i32 %51, i32* %13, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i32, i32* @RDMA_NLDEV_ATTR_CAP_FLAGS, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @RDMA_NLDEV_ATTR_PAD, align 4
  %56 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i32, i32* @EMSGSIZE, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %161

61:                                               ; preds = %43
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* @RDMA_NLDEV_ATTR_SUBNET_PREFIX, align 4
  %64 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @RDMA_NLDEV_ATTR_PAD, align 4
  %67 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %62, i32 %63, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %161

72:                                               ; preds = %61
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i32, i32* @RDMA_NLDEV_ATTR_LID, align 4
  %75 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @nla_put_u32(%struct.sk_buff* %73, i32 %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EMSGSIZE, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %161

82:                                               ; preds = %72
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = load i32, i32* @RDMA_NLDEV_ATTR_SM_LID, align 4
  %85 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nla_put_u32(%struct.sk_buff* %83, i32 %84, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EMSGSIZE, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %161

92:                                               ; preds = %82
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = load i32, i32* @RDMA_NLDEV_ATTR_LMC, align 4
  %95 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @nla_put_u8(%struct.sk_buff* %93, i32 %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @EMSGSIZE, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %161

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %38
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = load i32, i32* @RDMA_NLDEV_ATTR_PORT_STATE, align 4
  %106 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @nla_put_u8(%struct.sk_buff* %104, i32 %105, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* @EMSGSIZE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %161

113:                                              ; preds = %103
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load i32, i32* @RDMA_NLDEV_ATTR_PORT_PHYS_STATE, align 4
  %116 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @nla_put_u8(%struct.sk_buff* %114, i32 %115, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @EMSGSIZE, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %161

123:                                              ; preds = %113
  %124 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call %struct.net_device* @ib_device_get_netdev(%struct.ib_device* %124, i32 %125)
  store %struct.net_device* %126, %struct.net_device** %10, align 8
  %127 = load %struct.net_device*, %struct.net_device** %10, align 8
  %128 = icmp ne %struct.net_device* %127, null
  br i1 %128, label %129, label %152

129:                                              ; preds = %123
  %130 = load %struct.net_device*, %struct.net_device** %10, align 8
  %131 = call i32 @dev_net(%struct.net_device* %130)
  %132 = load %struct.net*, %struct.net** %9, align 8
  %133 = call i64 @net_eq(i32 %131, %struct.net* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %129
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = load i32, i32* @RDMA_NLDEV_ATTR_NDEV_INDEX, align 4
  %138 = load %struct.net_device*, %struct.net_device** %10, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @nla_put_u32(%struct.sk_buff* %136, i32 %137, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %153

145:                                              ; preds = %135
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = load i32, i32* @RDMA_NLDEV_ATTR_NDEV_NAME, align 4
  %148 = load %struct.net_device*, %struct.net_device** %10, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @nla_put_string(%struct.sk_buff* %146, i32 %147, i32 %150)
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %145, %129, %123
  br label %153

153:                                              ; preds = %152, %144
  %154 = load %struct.net_device*, %struct.net_device** %10, align 8
  %155 = icmp ne %struct.net_device* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.net_device*, %struct.net_device** %10, align 8
  %158 = call i32 @dev_put(%struct.net_device* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %159, %120, %110, %99, %89, %79, %69, %58, %36, %27, %18
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i64 @fill_nldev_handle(%struct.sk_buff*, %struct.ib_device*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.net_device* @ib_device_get_netdev(%struct.ib_device*, i32) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
