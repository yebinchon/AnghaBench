; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu.c_imx_scu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_sc_ipc = type { i32, i32, %struct.device*, %struct.imx_sc_chan* }
%struct.device = type { i32 }
%struct.imx_sc_chan = type { i32, i32, %struct.imx_sc_ipc*, %struct.mbox_client }
%struct.mbox_client = type { i32, i32, i32, %struct.device* }
%struct.platform_device = type { %struct.device }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCU_MU_CHAN_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tx%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rx%d\00", align 1
@imx_scu_rx_callback = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to request mbox chan %s ret %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"request mbox chan %s\0A\00", align 1
@imx_sc_ipc_handle = common dso_local global %struct.imx_sc_ipc* null, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to enable general irq channel: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"NXP i.MX SCU Initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_scu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_scu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.imx_sc_ipc*, align 8
  %6 = alloca %struct.imx_sc_chan*, align 8
  %7 = alloca %struct.mbox_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.imx_sc_ipc* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.imx_sc_ipc* %15, %struct.imx_sc_ipc** %5, align 8
  %16 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %17 = icmp ne %struct.imx_sc_ipc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %129

21:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %102, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @SCU_MU_CHAN_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %105

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i8* @kasprintf(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i8* %32, i8** %8, align 8
  br label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 4
  %37 = call i8* @kasprintf(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %129

44:                                               ; preds = %38
  %45 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %46 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %45, i32 0, i32 3
  %47 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %47, i64 %49
  store %struct.imx_sc_chan* %50, %struct.imx_sc_chan** %6, align 8
  %51 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %6, align 8
  %52 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %51, i32 0, i32 3
  store %struct.mbox_client* %52, %struct.mbox_client** %7, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %55 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %54, i32 0, i32 3
  store %struct.device* %53, %struct.device** %55, align 8
  %56 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %57 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %59 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* @imx_scu_rx_callback, align 4
  %61 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %62 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %64 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %6, align 8
  %65 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %64, i32 0, i32 2
  store %struct.imx_sc_ipc* %63, %struct.imx_sc_ipc** %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = srem i32 %66, 4
  %68 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %6, align 8
  %69 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @mbox_request_channel_byname(%struct.mbox_client* %70, i8* %71)
  %73 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %6, align 8
  %74 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %6, align 8
  %76 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %44
  %81 = load %struct.imx_sc_chan*, %struct.imx_sc_chan** %6, align 8
  %82 = getelementptr inbounds %struct.imx_sc_chan, %struct.imx_sc_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @EPROBE_DEFER, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %80
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %2, align 4
  br label %129

96:                                               ; preds = %44
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @kfree(i8* %100)
  br label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %22

105:                                              ; preds = %22
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %108 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %107, i32 0, i32 2
  store %struct.device* %106, %struct.device** %108, align 8
  %109 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %110 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %109, i32 0, i32 1
  %111 = call i32 @mutex_init(i32* %110)
  %112 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  %113 = getelementptr inbounds %struct.imx_sc_ipc, %struct.imx_sc_ipc* %112, i32 0, i32 0
  %114 = call i32 @init_completion(i32* %113)
  %115 = load %struct.imx_sc_ipc*, %struct.imx_sc_ipc** %5, align 8
  store %struct.imx_sc_ipc* %115, %struct.imx_sc_ipc** @imx_sc_ipc_handle, align 8
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = call i32 @imx_scu_enable_general_irq_channel(%struct.device* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @dev_warn(%struct.device* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %105
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 @dev_info(%struct.device* %125, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = call i32 @devm_of_platform_populate(%struct.device* %127)
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %124, %94, %41, %18
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.imx_sc_ipc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @mbox_request_channel_byname(%struct.mbox_client*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @imx_scu_enable_general_irq_channel(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
