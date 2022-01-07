; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssi_protocol_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssi_protocol_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hsi_client = type { i32 }
%struct.ssi_protocol = type { i32, i32, %struct.TYPE_6__*, i32, i32, %struct.hsi_client*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ssi_protocol_probe.ifname = internal constant [9 x i8] c"phonet%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ssip_rx_wd = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@ssip_tx_wd = common dso_local global i32 0, align 4
@ssip_keep_alive = common dso_local global i32 0, align 4
@ssip_xmit_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mcsaab-control\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get cmd channel (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mcsaab-data\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not get data channel (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"No memory for commands\0A\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ssip_pn_setup = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"No memory for netdev\0A\00", align 1
@PHONET_MIN_MTU = common dso_local global i32 0, align 4
@SSIP_MAX_MTU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Register netdev failed (%d)\0A\00", align 1
@ssip_list = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"channel configuration: cmd=%d, data=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ssi_protocol_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_protocol_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hsi_client*, align 8
  %5 = alloca %struct.ssi_protocol*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.hsi_client* @to_hsi_client(%struct.device* %7)
  store %struct.hsi_client* %8, %struct.hsi_client** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ssi_protocol* @kzalloc(i32 64, i32 %9)
  store %struct.ssi_protocol* %10, %struct.ssi_protocol** %5, align 8
  %11 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %12 = icmp ne %struct.ssi_protocol* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %163

16:                                               ; preds = %1
  %17 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %18 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %17, i32 0, i32 12
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %21 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %20, i32 0, i32 11
  %22 = load i32, i32* @ssip_rx_wd, align 4
  %23 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %24 = call i32 @timer_setup(i32* %21, i32 %22, i32 %23)
  %25 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %26 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %25, i32 0, i32 10
  %27 = load i32, i32* @ssip_tx_wd, align 4
  %28 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %29 = call i32 @timer_setup(i32* %26, i32 %27, i32 %28)
  %30 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %31 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %30, i32 0, i32 9
  %32 = load i32, i32* @ssip_keep_alive, align 4
  %33 = call i32 @timer_setup(i32* %31, i32 %32, i32 0)
  %34 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %35 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %34, i32 0, i32 8
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %38 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %37, i32 0, i32 7
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %41 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %40, i32 0, i32 6
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  %43 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %44 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %45 = call i32 @hsi_client_set_drvdata(%struct.hsi_client* %43, %struct.ssi_protocol* %44)
  %46 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %47 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %48 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %47, i32 0, i32 5
  store %struct.hsi_client* %46, %struct.hsi_client** %48, align 8
  %49 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %50 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %49, i32 0, i32 4
  %51 = load i32, i32* @ssip_xmit_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  %53 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %54 = call i8* @hsi_get_channel_id_by_name(%struct.hsi_client* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %57 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %59 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %16
  %63 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %64 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %159

69:                                               ; preds = %16
  %70 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %71 = call i8* @hsi_get_channel_id_by_name(%struct.hsi_client* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %74 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %76 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %69
  %80 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %81 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %6, align 4
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  br label %159

86:                                               ; preds = %69
  %87 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %88 = call i32 @ssip_alloc_cmds(%struct.ssi_protocol* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %159

94:                                               ; preds = %86
  %95 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %96 = load i32, i32* @ssip_pn_setup, align 4
  %97 = call %struct.TYPE_6__* @alloc_netdev(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @ssi_protocol_probe.ifname, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %99 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %98, i32 0, i32 2
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %101 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = icmp ne %struct.TYPE_6__* %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %94
  %105 = load %struct.device*, %struct.device** %3, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %156

109:                                              ; preds = %94
  %110 = load i32, i32* @PHONET_MIN_MTU, align 4
  %111 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %112 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @SSIP_MAX_MTU, align 4
  %116 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %117 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %115, i32* %119, align 4
  %120 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %121 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %120, i32 0, i32 2
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load %struct.device*, %struct.device** %3, align 8
  %124 = call i32 @SET_NETDEV_DEV(%struct.TYPE_6__* %122, %struct.device* %123)
  %125 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %126 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = call i32 @netif_carrier_off(%struct.TYPE_6__* %127)
  %129 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %130 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = call i32 @register_netdev(%struct.TYPE_6__* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %109
  %136 = load %struct.device*, %struct.device** %3, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  br label %151

139:                                              ; preds = %109
  %140 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %141 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %140, i32 0, i32 3
  %142 = call i32 @list_add(i32* %141, i32* @ssip_list)
  %143 = load %struct.device*, %struct.device** %3, align 8
  %144 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %145 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %148 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %149)
  store i32 0, i32* %2, align 4
  br label %163

151:                                              ; preds = %135
  %152 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %153 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @free_netdev(%struct.TYPE_6__* %154)
  br label %156

156:                                              ; preds = %151, %104
  %157 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %158 = call i32 @ssip_free_cmds(%struct.ssi_protocol* %157)
  br label %159

159:                                              ; preds = %156, %91, %79, %62
  %160 = load %struct.ssi_protocol*, %struct.ssi_protocol** %5, align 8
  %161 = call i32 @kfree(%struct.ssi_protocol* %160)
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %139, %13
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.hsi_client* @to_hsi_client(%struct.device*) #1

declare dso_local %struct.ssi_protocol* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hsi_client_set_drvdata(%struct.hsi_client*, %struct.ssi_protocol*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @hsi_get_channel_id_by_name(%struct.hsi_client*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ssip_alloc_cmds(%struct.ssi_protocol*) #1

declare dso_local %struct.TYPE_6__* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.TYPE_6__*, %struct.device*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_6__*) #1

declare dso_local i32 @register_netdev(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.TYPE_6__*) #1

declare dso_local i32 @ssip_free_cmds(%struct.ssi_protocol*) #1

declare dso_local i32 @kfree(%struct.ssi_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
