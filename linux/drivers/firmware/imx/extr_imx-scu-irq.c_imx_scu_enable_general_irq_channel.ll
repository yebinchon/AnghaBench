; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu-irq.c_imx_scu_enable_general_irq_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-scu-irq.c_imx_scu_enable_general_irq_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.of_phandle_args = type { i32 }
%struct.mbox_client = type { i32, %struct.device* }
%struct.mbox_chan = type { i32 }

@imx_sc_irq_ipc_handle = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx_scu_irq_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gip3\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to request mbox chan gip3, ret %d\0A\00", align 1
@imx_sc_irq_work = common dso_local global i32 0, align 4
@imx_scu_irq_work_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"mu\00", align 1
@IMX_SC_R_MU_0A = common dso_local global i64 0, align 8
@mu_resource_id = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_scu_enable_general_irq_channel(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.mbox_client*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @imx_scu_get_handle(i32* @imx_sc_irq_ipc_handle)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %2, align 4
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mbox_client* @devm_kzalloc(%struct.device* %15, i32 16, i32 %16)
  store %struct.mbox_client* %17, %struct.mbox_client** %5, align 8
  %18 = load %struct.mbox_client*, %struct.mbox_client** %5, align 8
  %19 = icmp ne %struct.mbox_client* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %67

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.mbox_client*, %struct.mbox_client** %5, align 8
  %26 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %25, i32 0, i32 1
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load i32, i32* @imx_scu_irq_callback, align 4
  %28 = load %struct.mbox_client*, %struct.mbox_client** %5, align 8
  %29 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mbox_client*, %struct.mbox_client** %5, align 8
  %31 = call %struct.mbox_chan* @mbox_request_channel_byname(%struct.mbox_client* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.mbox_chan* %31, %struct.mbox_chan** %6, align 8
  %32 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %33 = call i64 @IS_ERR(%struct.mbox_chan* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.mbox_chan* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load %struct.mbox_client*, %struct.mbox_client** %5, align 8
  %43 = call i32 @devm_kfree(%struct.device* %41, %struct.mbox_client* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %23
  %46 = load i32, i32* @imx_scu_irq_work_handler, align 4
  %47 = call i32 @INIT_WORK(i32* @imx_sc_irq_work, i32 %46)
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @of_parse_phandle_with_args(i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0, %struct.of_phandle_args* %4)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @of_alias_get_id(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i64, i64* @IMX_SC_R_MU_0A, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  store i64 %65, i64* @mu_resource_id, align 8
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %35, %20, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @imx_scu_get_handle(i32*) #1

declare dso_local %struct.mbox_client* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.mbox_chan* @mbox_request_channel_byname(%struct.mbox_client*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.mbox_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.mbox_chan*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.mbox_client*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @of_parse_phandle_with_args(i32, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
