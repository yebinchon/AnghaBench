; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ib_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IB_FW_VERSION_NAME_MAX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PORT_INDEX = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_CAP_FLAGS = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_PAD = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_FW_VERSION = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_NODE_GUID = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_SYS_IMAGE_GUID = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_NODE_TYPE = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_DIM = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_DEV_PROTOCOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"opa\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ib\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"iw\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"roce\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"usnic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ib_device*)* @fill_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_dev_info(%struct.sk_buff* %0, %struct.ib_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  %11 = load i32, i32* @IB_FW_VERSION_NAME_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %17 = call i64 @fill_nldev_handle(%struct.sk_buff* %15, %struct.ib_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EMSGSIZE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @RDMA_NLDEV_ATTR_PORT_INDEX, align 4
  %25 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %26 = call i32 @rdma_end_port(%struct.ib_device* %25)
  %27 = call i64 @nla_put_u32(%struct.sk_buff* %23, i32 %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

32:                                               ; preds = %22
  %33 = call i32 @BUILD_BUG_ON(i32 0)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @RDMA_NLDEV_ATTR_CAP_FLAGS, align 4
  %36 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RDMA_NLDEV_ATTR_PAD, align 4
  %41 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %34, i32 %35, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EMSGSIZE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

46:                                               ; preds = %32
  %47 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %48 = call i32 @ib_get_device_fw_str(%struct.ib_device* %47, i8* %14)
  %49 = call i64 @strlen(i8* %14)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load i32, i32* @RDMA_NLDEV_ATTR_FW_VERSION, align 4
  %54 = call i32 @nla_put_string(%struct.sk_buff* %52, i32 %53, i8* %14)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

59:                                               ; preds = %51, %46
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @RDMA_NLDEV_ATTR_NODE_GUID, align 4
  %62 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %63 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be64_to_cpu(i32 %64)
  %66 = load i32, i32* @RDMA_NLDEV_ATTR_PAD, align 4
  %67 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %60, i32 %61, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

72:                                               ; preds = %59
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @RDMA_NLDEV_ATTR_SYS_IMAGE_GUID, align 4
  %75 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %76 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be64_to_cpu(i32 %78)
  %80 = load i32, i32* @RDMA_NLDEV_ATTR_PAD, align 4
  %81 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %73, i32 %74, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* @EMSGSIZE, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

86:                                               ; preds = %72
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @RDMA_NLDEV_ATTR_DEV_NODE_TYPE, align 4
  %89 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %90 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @nla_put_u8(%struct.sk_buff* %87, i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EMSGSIZE, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

97:                                               ; preds = %86
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = load i32, i32* @RDMA_NLDEV_ATTR_DEV_DIM, align 4
  %100 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %101 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @nla_put_u8(%struct.sk_buff* %98, i32 %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @EMSGSIZE, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

108:                                              ; preds = %97
  %109 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %110 = call i32 @rdma_start_port(%struct.ib_device* %109)
  store i32 %110, i32* %9, align 4
  %111 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @rdma_cap_opa_mad(%struct.ib_device* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = load i32, i32* @RDMA_NLDEV_ATTR_DEV_PROTOCOL, align 4
  %118 = call i32 @nla_put_string(%struct.sk_buff* %116, i32 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %118, i32* %8, align 4
  br label %159

119:                                              ; preds = %108
  %120 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @rdma_protocol_ib(%struct.ib_device* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load i32, i32* @RDMA_NLDEV_ATTR_DEV_PROTOCOL, align 4
  %127 = call i32 @nla_put_string(%struct.sk_buff* %125, i32 %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %127, i32* %8, align 4
  br label %158

128:                                              ; preds = %119
  %129 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @rdma_protocol_iwarp(%struct.ib_device* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %135 = load i32, i32* @RDMA_NLDEV_ATTR_DEV_PROTOCOL, align 4
  %136 = call i32 @nla_put_string(%struct.sk_buff* %134, i32 %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %136, i32* %8, align 4
  br label %157

137:                                              ; preds = %128
  %138 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i64 @rdma_protocol_roce(%struct.ib_device* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = load i32, i32* @RDMA_NLDEV_ATTR_DEV_PROTOCOL, align 4
  %145 = call i32 @nla_put_string(%struct.sk_buff* %143, i32 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %145, i32* %8, align 4
  br label %156

146:                                              ; preds = %137
  %147 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = call i64 @rdma_protocol_usnic(%struct.ib_device* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = load i32, i32* @RDMA_NLDEV_ATTR_DEV_PROTOCOL, align 4
  %154 = call i32 @nla_put_string(%struct.sk_buff* %152, i32 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %151, %146
  br label %156

156:                                              ; preds = %155, %142
  br label %157

157:                                              ; preds = %156, %133
  br label %158

158:                                              ; preds = %157, %124
  br label %159

159:                                              ; preds = %158, %115
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %161

161:                                              ; preds = %159, %105, %94, %83, %69, %56, %43, %29, %19
  %162 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %162)
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @fill_nldev_handle(%struct.sk_buff*, %struct.ib_device*) #2

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @rdma_end_port(%struct.ib_device*) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #2

declare dso_local i32 @ib_get_device_fw_str(%struct.ib_device*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i8*) #2

declare dso_local i32 @be64_to_cpu(i32) #2

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #2

declare dso_local i32 @rdma_start_port(%struct.ib_device*) #2

declare dso_local i64 @rdma_cap_opa_mad(%struct.ib_device*, i32) #2

declare dso_local i64 @rdma_protocol_ib(%struct.ib_device*, i32) #2

declare dso_local i64 @rdma_protocol_iwarp(%struct.ib_device*, i32) #2

declare dso_local i64 @rdma_protocol_roce(%struct.ib_device*, i32) #2

declare dso_local i64 @rdma_protocol_usnic(%struct.ib_device*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
