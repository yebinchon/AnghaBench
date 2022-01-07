; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.s10_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.s10_priv*, i32, %struct.device* }
%struct.fpga_manager = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s10_receive_callback = common dso_local global i32 0, align 4
@SVC_CLIENT_FPGA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't get service channel (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Stratix10 SOC FPGA Manager\00", align 1
@s10_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to create FPGA manager\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to register FPGA manager\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s10_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s10_priv*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.s10_priv* @devm_kzalloc(%struct.device* %10, i32 32, i32 %11)
  store %struct.s10_priv* %12, %struct.s10_priv** %5, align 8
  %13 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %14 = icmp ne %struct.s10_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %21 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store %struct.device* %19, %struct.device** %22, align 8
  %23 = load i32, i32* @s10_receive_callback, align 4
  %24 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %25 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %28 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %29 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.s10_priv* %27, %struct.s10_priv** %30, align 8
  %31 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %32 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %31, i32 0, i32 2
  %33 = load i32, i32* @SVC_CLIENT_FPGA, align 4
  %34 = call i32 @stratix10_svc_request_channel_byname(%struct.TYPE_2__* %32, i32 %33)
  %35 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %36 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %38 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %18
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* @SVC_CLIENT_FPGA, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %47 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %85

50:                                               ; preds = %18
  %51 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %52 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %51, i32 0, i32 1
  %53 = call i32 @init_completion(i32* %52)
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %56 = call %struct.fpga_manager* @fpga_mgr_create(%struct.device* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* @s10_ops, %struct.s10_priv* %55)
  store %struct.fpga_manager* %56, %struct.fpga_manager** %6, align 8
  %57 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %58 = icmp ne %struct.fpga_manager* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %50
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %79

64:                                               ; preds = %50
  %65 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %66 = call i32 @fpga_mgr_register(%struct.fpga_manager* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %73 = call i32 @fpga_mgr_free(%struct.fpga_manager* %72)
  br label %79

74:                                               ; preds = %64
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %77 = call i32 @platform_set_drvdata(%struct.platform_device* %75, %struct.fpga_manager* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %85

79:                                               ; preds = %69, %59
  %80 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %81 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @stratix10_svc_free_channel(i32 %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %74, %42, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.s10_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @stratix10_svc_request_channel_byname(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.fpga_manager* @fpga_mgr_create(%struct.device*, i8*, i32*, %struct.s10_priv*) #1

declare dso_local i32 @fpga_mgr_register(%struct.fpga_manager*) #1

declare dso_local i32 @fpga_mgr_free(%struct.fpga_manager*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fpga_manager*) #1

declare dso_local i32 @stratix10_svc_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
