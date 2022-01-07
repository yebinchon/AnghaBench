; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_net.c_fwnet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.ieee1394_device_id = type { i32 }
%struct.fw_device = type { %struct.fw_card* }
%struct.fw_card = type { i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.fwnet_device = type { i32, i32, %struct.fw_card*, %struct.TYPE_3__, %struct.net_device*, i32, i64, i64, i64, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%union.fwnet_hwaddr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@fwnet_device_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"firewire%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@fwnet_init_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWNET_BROADCAST_ERROR = common dso_local global i32 0, align 4
@FWNET_NO_FIFO_ADDR = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@fwnet_device_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"IP over IEEE 1394 on card %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, %struct.ieee1394_device_id*)* @fwnet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnet_probe(%struct.fw_unit* %0, %struct.ieee1394_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca %struct.ieee1394_device_id*, align 8
  %6 = alloca %struct.fw_device*, align 8
  %7 = alloca %struct.fw_card*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fwnet_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.fwnet_hwaddr*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store %struct.ieee1394_device_id* %1, %struct.ieee1394_device_id** %5, align 8
  %13 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %14 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %13)
  store %struct.fw_device* %14, %struct.fw_device** %6, align 8
  %15 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 0
  %17 = load %struct.fw_card*, %struct.fw_card** %16, align 8
  store %struct.fw_card* %17, %struct.fw_card** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 @mutex_lock(i32* @fwnet_device_mutex)
  %19 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %20 = call %struct.fwnet_device* @fwnet_dev_find(%struct.fw_card* %19)
  store %struct.fwnet_device* %20, %struct.fwnet_device** %10, align 8
  %21 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %22 = icmp ne %struct.fwnet_device* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %25 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %24, i32 0, i32 4
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  br label %155

27:                                               ; preds = %2
  %28 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %29 = load i32, i32* @fwnet_init_dev, align 4
  %30 = call %struct.net_device* @alloc_netdev(i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  store %struct.net_device* %30, %struct.net_device** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = icmp eq %struct.net_device* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = call i32 @mutex_unlock(i32* @fwnet_device_mutex)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %179

37:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %40 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @SET_NETDEV_DEV(%struct.net_device* %38, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = call %struct.fwnet_device* @netdev_priv(%struct.net_device* %43)
  store %struct.fwnet_device* %44, %struct.fwnet_device** %10, align 8
  %45 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %46 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %45, i32 0, i32 11
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load i32, i32* @FWNET_BROADCAST_ERROR, align 4
  %49 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %50 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %52 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %51, i32 0, i32 9
  store i32* null, i32** %52, align 8
  %53 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %54 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %56 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @FWNET_NO_FIFO_ADDR, align 4
  %58 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %59 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %61 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %63 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %62, i32 0, i32 5
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %66 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %67 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %66, i32 0, i32 2
  store %struct.fw_card* %65, %struct.fw_card** %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %70 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %69, i32 0, i32 4
  store %struct.net_device* %68, %struct.net_device** %70, align 8
  %71 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %72 = call i32 @fwnet_fifo_start(%struct.fwnet_device* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %37
  br label %171

76:                                               ; preds = %37
  %77 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %78 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %82 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %8, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  store i32 1500, i32* %84, align 8
  %85 = load i32, i32* @ETH_MIN_MTU, align 4
  %86 = load %struct.net_device*, %struct.net_device** %8, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.net_device*, %struct.net_device** %8, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  store i32 4096, i32* %89, align 4
  %90 = load %struct.net_device*, %struct.net_device** %8, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %union.fwnet_hwaddr*
  store %union.fwnet_hwaddr* %93, %union.fwnet_hwaddr** %12, align 8
  %94 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %95 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %union.fwnet_hwaddr*, %union.fwnet_hwaddr** %12, align 8
  %98 = bitcast %union.fwnet_hwaddr* %97 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = call i32 @put_unaligned_be64(i32 %96, i32* %99)
  %101 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %102 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %101, i32 0, i32 2
  %103 = load %struct.fw_card*, %struct.fw_card** %102, align 8
  %104 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %union.fwnet_hwaddr*, %union.fwnet_hwaddr** %12, align 8
  %107 = bitcast %union.fwnet_hwaddr* %106 to %struct.TYPE_4__*
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 4
  %109 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %110 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %109, i32 0, i32 2
  %111 = load %struct.fw_card*, %struct.fw_card** %110, align 8
  %112 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %union.fwnet_hwaddr*, %union.fwnet_hwaddr** %12, align 8
  %115 = bitcast %union.fwnet_hwaddr* %114 to %struct.TYPE_4__*
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 4
  %117 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %118 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %119, 32
  %121 = load %union.fwnet_hwaddr*, %union.fwnet_hwaddr** %12, align 8
  %122 = bitcast %union.fwnet_hwaddr* %121 to %struct.TYPE_4__*
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = call i32 @put_unaligned_be16(i32 %120, i32* %123)
  %125 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %126 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %union.fwnet_hwaddr*, %union.fwnet_hwaddr** %12, align 8
  %129 = bitcast %union.fwnet_hwaddr* %128 to %struct.TYPE_4__*
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = call i32 @put_unaligned_be32(i32 %127, i32* %130)
  %132 = load %struct.net_device*, %struct.net_device** %8, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @memset(i32 %134, i32 -1, i32 %137)
  %139 = load %struct.net_device*, %struct.net_device** %8, align 8
  %140 = call i32 @register_netdev(%struct.net_device* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %76
  br label %171

144:                                              ; preds = %76
  %145 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %146 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %145, i32 0, i32 1
  %147 = call i32 @list_add_tail(i32* %146, i32* @fwnet_device_list)
  %148 = load %struct.net_device*, %struct.net_device** %8, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 2
  %150 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %151 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dev_name(i32 %152)
  %154 = call i32 @dev_notice(i32* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %144, %23
  %156 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %157 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %158 = load %struct.fw_device*, %struct.fw_device** %6, align 8
  %159 = call i32 @fwnet_add_peer(%struct.fwnet_device* %156, %struct.fw_unit* %157, %struct.fw_device* %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load %struct.net_device*, %struct.net_device** %8, align 8
  %167 = call i32 @unregister_netdev(%struct.net_device* %166)
  %168 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %169 = getelementptr inbounds %struct.fwnet_device, %struct.fwnet_device* %168, i32 0, i32 1
  %170 = call i32 @list_del(i32* %169)
  br label %171

171:                                              ; preds = %165, %143, %75
  %172 = load %struct.fwnet_device*, %struct.fwnet_device** %10, align 8
  %173 = call i32 @fwnet_fifo_stop(%struct.fwnet_device* %172)
  %174 = load %struct.net_device*, %struct.net_device** %8, align 8
  %175 = call i32 @free_netdev(%struct.net_device* %174)
  br label %176

176:                                              ; preds = %171, %162, %155
  %177 = call i32 @mutex_unlock(i32* @fwnet_device_mutex)
  %178 = load i32, i32* %11, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %176, %33
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fwnet_device* @fwnet_dev_find(%struct.fw_card*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local %struct.fwnet_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @fwnet_fifo_start(%struct.fwnet_device*) #1

declare dso_local i32 @put_unaligned_be64(i32, i32*) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @fwnet_add_peer(%struct.fwnet_device*, %struct.fw_unit*, %struct.fw_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fwnet_fifo_stop(%struct.fwnet_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
