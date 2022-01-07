; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi-cec.c_dw_hdmi_cec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.dw_hdmi_cec_data = type { i32, i32, i32 }
%struct.dw_hdmi_cec = type { i32, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HDMI_CEC_TX_CNT = common dso_local global i32 0, align 4
@HDMI_CEC_MASK = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_CEC_STAT0 = common dso_local global i32 0, align 4
@HDMI_CEC_POLARITY = common dso_local global i32 0, align 4
@dw_hdmi_cec_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dw_hdmi\00", align 1
@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_CONNECTOR_INFO = common dso_local global i32 0, align 4
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@dw_hdmi_cec_del = common dso_local global i32 0, align 4
@dw_hdmi_cec_hardirq = common dso_local global i32 0, align 4
@dw_hdmi_cec_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"dw-hdmi-cec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw_hdmi_cec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_cec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dw_hdmi_cec_data*, align 8
  %5 = alloca %struct.dw_hdmi_cec*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.dw_hdmi_cec_data* @dev_get_platdata(%struct.TYPE_13__* %8)
  store %struct.dw_hdmi_cec_data* %9, %struct.dw_hdmi_cec_data** %4, align 8
  %10 = load %struct.dw_hdmi_cec_data*, %struct.dw_hdmi_cec_data** %4, align 8
  %11 = icmp ne %struct.dw_hdmi_cec_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %151

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dw_hdmi_cec* @devm_kzalloc(%struct.TYPE_13__* %17, i32 32, i32 %18)
  store %struct.dw_hdmi_cec* %19, %struct.dw_hdmi_cec** %5, align 8
  %20 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %21 = icmp ne %struct.dw_hdmi_cec* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %151

25:                                               ; preds = %15
  %26 = load %struct.dw_hdmi_cec_data*, %struct.dw_hdmi_cec_data** %4, align 8
  %27 = getelementptr inbounds %struct.dw_hdmi_cec_data, %struct.dw_hdmi_cec_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %30 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dw_hdmi_cec_data*, %struct.dw_hdmi_cec_data** %4, align 8
  %32 = getelementptr inbounds %struct.dw_hdmi_cec_data, %struct.dw_hdmi_cec_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %35 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dw_hdmi_cec_data*, %struct.dw_hdmi_cec_data** %4, align 8
  %37 = getelementptr inbounds %struct.dw_hdmi_cec_data, %struct.dw_hdmi_cec_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %40 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.dw_hdmi_cec* %42)
  %44 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %45 = load i32, i32* @HDMI_CEC_TX_CNT, align 4
  %46 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %44, i32 0, i32 %45)
  %47 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %48 = load i32, i32* @HDMI_CEC_MASK, align 4
  %49 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %47, i32 -1, i32 %48)
  %50 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %51 = load i32, i32* @HDMI_IH_MUTE_CEC_STAT0, align 4
  %52 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %50, i32 -1, i32 %51)
  %53 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %54 = load i32, i32* @HDMI_CEC_POLARITY, align 4
  %55 = call i32 @dw_hdmi_write(%struct.dw_hdmi_cec* %53, i32 0, i32 %54)
  %56 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %57 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %58 = load i32, i32* @CEC_CAP_CONNECTOR_INFO, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  %61 = call %struct.TYPE_14__* @cec_allocate_adapter(i32* @dw_hdmi_cec_ops, %struct.dw_hdmi_cec* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %63 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %62, i32 0, i32 1
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %63, align 8
  %64 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %65 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = call i64 @IS_ERR(%struct.TYPE_14__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %25
  %70 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %71 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = call i32 @PTR_ERR(%struct.TYPE_14__* %72)
  store i32 %73, i32* %2, align 4
  br label %151

74:                                               ; preds = %25
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %77 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* @dw_hdmi_cec_del, align 4
  %83 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %84 = call i32 @devm_add_action(%struct.TYPE_13__* %81, i32 %82, %struct.dw_hdmi_cec* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %74
  %88 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %89 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %88, i32 0, i32 1
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = call i32 @cec_delete_adapter(%struct.TYPE_14__* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %151

93:                                               ; preds = %74
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %97 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @dw_hdmi_cec_hardirq, align 4
  %100 = load i32, i32* @dw_hdmi_cec_thread, align 4
  %101 = load i32, i32* @IRQF_SHARED, align 4
  %102 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %103 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = call i32 @devm_request_threaded_irq(%struct.TYPE_13__* %95, i32 %98, i32 %99, i32 %100, i32 %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %151

110:                                              ; preds = %93
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %116 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i32 @cec_notifier_cec_adap_register(i32 %114, i32* null, %struct.TYPE_14__* %117)
  %119 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %120 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %122 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %110
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %151

128:                                              ; preds = %110
  %129 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %130 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %129, i32 0, i32 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cec_register_adapter(%struct.TYPE_14__* %131, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %141 = getelementptr inbounds %struct.dw_hdmi_cec, %struct.dw_hdmi_cec* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @cec_notifier_cec_adap_unregister(i32 %142)
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %151

145:                                              ; preds = %128
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load i32, i32* @dw_hdmi_cec_del, align 4
  %149 = load %struct.dw_hdmi_cec*, %struct.dw_hdmi_cec** %5, align 8
  %150 = call i32 @devm_remove_action(%struct.TYPE_13__* %147, i32 %148, %struct.dw_hdmi_cec* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %145, %139, %125, %108, %87, %69, %22, %12
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.dw_hdmi_cec_data* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local %struct.dw_hdmi_cec* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw_hdmi_cec*) #1

declare dso_local i32 @dw_hdmi_write(%struct.dw_hdmi_cec*, i32, i32) #1

declare dso_local %struct.TYPE_14__* @cec_allocate_adapter(i32*, %struct.dw_hdmi_cec*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_13__*, i32, %struct.dw_hdmi_cec*) #1

declare dso_local i32 @cec_delete_adapter(%struct.TYPE_14__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_13__*, i32, i32, i32, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @cec_notifier_cec_adap_register(i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @cec_register_adapter(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @cec_notifier_cec_adap_unregister(i32) #1

declare dso_local i32 @devm_remove_action(%struct.TYPE_13__*, i32, %struct.dw_hdmi_cec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
