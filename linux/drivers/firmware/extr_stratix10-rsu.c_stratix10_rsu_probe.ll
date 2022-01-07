; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_stratix10_rsu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_stratix10_rsu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stratix10_rsu_priv = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.stratix10_rsu_priv*, i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INVALID_RETRY_COUNTER = common dso_local global i32 0, align 4
@SVC_CLIENT_RSU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"couldn't get service channel %s\0A\00", align 1
@COMMAND_RSU_STATUS = common dso_local global i32 0, align 4
@rsu_status_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error, getting RSU status %i\0A\00", align 1
@RSU_FW_VERSION_MASK = common dso_local global i32 0, align 4
@COMMAND_RSU_RETRY = common dso_local global i32 0, align 4
@rsu_retry_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Error, getting RSU retry %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stratix10_rsu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stratix10_rsu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stratix10_rsu_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.stratix10_rsu_priv* @devm_kzalloc(%struct.device* %9, i32 96, i32 %10)
  store %struct.stratix10_rsu_priv* %11, %struct.stratix10_rsu_priv** %5, align 8
  %12 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %13 = icmp ne %struct.stratix10_rsu_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %20 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store %struct.device* %18, %struct.device** %21, align 8
  %22 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %23 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %26 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %27 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.stratix10_rsu_priv* %25, %struct.stratix10_rsu_priv** %28, align 8
  %29 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %30 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %33 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %36 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %39 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %42 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %45 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @INVALID_RETRY_COUNTER, align 4
  %48 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %49 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %51 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %50, i32 0, i32 4
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %54 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %53, i32 0, i32 3
  %55 = load i32, i32* @SVC_CLIENT_RSU, align 4
  %56 = call i32 @stratix10_svc_request_channel_byname(%struct.TYPE_4__* %54, i32 %55)
  %57 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %58 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %60 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %17
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* @SVC_CLIENT_RSU, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %69 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PTR_ERR(i32 %70)
  store i32 %71, i32* %2, align 4
  br label %119

72:                                               ; preds = %17
  %73 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %74 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %73, i32 0, i32 2
  %75 = call i32 @init_completion(i32* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %78 = call i32 @platform_set_drvdata(%struct.platform_device* %76, %struct.stratix10_rsu_priv* %77)
  %79 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %80 = load i32, i32* @COMMAND_RSU_STATUS, align 4
  %81 = load i32, i32* @rsu_status_callback, align 4
  %82 = call i32 @rsu_send_msg(%struct.stratix10_rsu_priv* %79, i32 %80, i32 0, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %90 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @stratix10_svc_free_channel(i32 %91)
  br label %93

93:                                               ; preds = %85, %72
  %94 = load i32, i32* @RSU_FW_VERSION_MASK, align 4
  %95 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %96 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @FIELD_GET(i32 %94, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %93
  %102 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %103 = load i32, i32* @COMMAND_RSU_RETRY, align 4
  %104 = load i32, i32* @rsu_retry_callback, align 4
  %105 = call i32 @rsu_send_msg(%struct.stratix10_rsu_priv* %102, i32 %103, i32 0, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %5, align 8
  %113 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @stratix10_svc_free_channel(i32 %114)
  br label %116

116:                                              ; preds = %108, %101
  br label %117

117:                                              ; preds = %116, %93
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %64, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.stratix10_rsu_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @stratix10_svc_request_channel_byname(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stratix10_rsu_priv*) #1

declare dso_local i32 @rsu_send_msg(%struct.stratix10_rsu_priv*, i32, i32, i32) #1

declare dso_local i32 @stratix10_svc_free_channel(i32) #1

declare dso_local i64 @FIELD_GET(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
