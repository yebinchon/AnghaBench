; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-dsp.c_imx_dsp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-dsp.c_imx_dsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.imx_dsp_ipc = type { %struct.imx_dsp_chan*, %struct.device* }
%struct.imx_dsp_chan = type { i32, i32, %struct.imx_dsp_ipc*, %struct.mbox_client }
%struct.mbox_client = type { i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DSP_MU_CHAN_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"txdb%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rxdb%d\00", align 1
@imx_dsp_handle_rx = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to request mbox chan %s ret %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"request mbox chan %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"NXP i.MX DSP IPC initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_dsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_dsp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.imx_dsp_ipc*, align 8
  %6 = alloca %struct.imx_dsp_chan*, align 8
  %7 = alloca %struct.mbox_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_set_of_node_from_dev(%struct.device* %15, i32 %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.imx_dsp_ipc* @devm_kzalloc(%struct.device* %21, i32 16, i32 %22)
  store %struct.imx_dsp_ipc* %23, %struct.imx_dsp_ipc** %5, align 8
  %24 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %5, align 8
  %25 = icmp ne %struct.imx_dsp_ipc* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %146

29:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %109, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DSP_MU_CHAN_NUM, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %112

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i8* @kasprintf(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i8* %40, i8** %8, align 8
  br label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 2
  %45 = call i8* @kasprintf(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %146

52:                                               ; preds = %46
  %53 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %5, align 8
  %54 = getelementptr inbounds %struct.imx_dsp_ipc, %struct.imx_dsp_ipc* %53, i32 0, i32 0
  %55 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %55, i64 %57
  store %struct.imx_dsp_chan* %58, %struct.imx_dsp_chan** %6, align 8
  %59 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %6, align 8
  %60 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %59, i32 0, i32 3
  store %struct.mbox_client* %60, %struct.mbox_client** %7, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %63 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %62, i32 0, i32 3
  store %struct.device* %61, %struct.device** %63, align 8
  %64 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %65 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %67 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* @imx_dsp_handle_rx, align 4
  %69 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %70 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %5, align 8
  %72 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %6, align 8
  %73 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %72, i32 0, i32 2
  store %struct.imx_dsp_ipc* %71, %struct.imx_dsp_ipc** %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = srem i32 %74, 2
  %76 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %6, align 8
  %77 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.mbox_client*, %struct.mbox_client** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @mbox_request_channel_byname(%struct.mbox_client* %78, i8* %79)
  %81 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %6, align 8
  %82 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %6, align 8
  %84 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %52
  %89 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %6, align 8
  %90 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @EPROBE_DEFER, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %88
  br label %123

103:                                              ; preds = %52
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @dev_dbg(%struct.device* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @kfree(i8* %107)
  br label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %30

112:                                              ; preds = %30
  %113 = load %struct.device*, %struct.device** %4, align 8
  %114 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %5, align 8
  %115 = getelementptr inbounds %struct.imx_dsp_ipc, %struct.imx_dsp_ipc* %114, i32 0, i32 1
  store %struct.device* %113, %struct.device** %115, align 8
  %116 = load %struct.device*, %struct.device** %4, align 8
  %117 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %5, align 8
  %118 = call i32 @dev_set_drvdata(%struct.device* %116, %struct.imx_dsp_ipc* %117)
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 @dev_info(%struct.device* %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = call i32 @devm_of_platform_populate(%struct.device* %121)
  store i32 %122, i32* %2, align 4
  br label %146

123:                                              ; preds = %102
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @kfree(i8* %124)
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %141, %123
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %5, align 8
  %132 = getelementptr inbounds %struct.imx_dsp_ipc, %struct.imx_dsp_ipc* %131, i32 0, i32 0
  %133 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %133, i64 %135
  store %struct.imx_dsp_chan* %136, %struct.imx_dsp_chan** %6, align 8
  %137 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %6, align 8
  %138 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @mbox_free_channel(i32 %139)
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %126

144:                                              ; preds = %126
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %144, %112, %49, %26
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @device_set_of_node_from_dev(%struct.device*, i32) #1

declare dso_local %struct.imx_dsp_ipc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @mbox_request_channel_byname(%struct.mbox_client*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.imx_dsp_ipc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @devm_of_platform_populate(%struct.device*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
