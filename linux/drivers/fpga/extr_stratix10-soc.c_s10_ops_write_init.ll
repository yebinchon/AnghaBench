; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_ops_write_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_ops_write_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.s10_priv* }
%struct.s10_priv = type { i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.fpga_image_info = type { i32 }
%struct.stratix10_svc_command_config_type = type { i32 }

@FPGA_MGR_PARTIAL_RECONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Requesting partial reconfiguration.\0A\00", align 1
@COMMAND_RECONFIG_FLAG_PARTIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Requesting full reconfiguration.\0A\00", align 1
@COMMAND_RECONFIG = common dso_local global i32 0, align 4
@S10_RECONFIG_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"timeout waiting for RECONFIG_REQUEST\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"error (%d) waiting for RECONFIG_REQUEST\0A\00", align 1
@SVC_STATUS_RECONFIG_REQUEST_OK = common dso_local global i32 0, align 4
@NUM_SVC_BUFS = common dso_local global i64 0, align 8
@SVC_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @s10_ops_write_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_ops_write_init(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca %struct.fpga_image_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.s10_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.stratix10_svc_command_config_type, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %5, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %16 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %15, i32 0, i32 0
  %17 = load %struct.s10_priv*, %struct.s10_priv** %16, align 8
  store %struct.s10_priv* %17, %struct.s10_priv** %9, align 8
  %18 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %19 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %10, align 8
  %22 = getelementptr inbounds %struct.stratix10_svc_command_config_type, %struct.stratix10_svc_command_config_type* %11, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %24 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FPGA_MGR_PARTIAL_RECONFIG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load %struct.device*, %struct.device** %10, align 8
  %31 = call i32 @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @COMMAND_RECONFIG_FLAG_PARTIAL, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = getelementptr inbounds %struct.stratix10_svc_command_config_type, %struct.stratix10_svc_command_config_type* %11, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %40

37:                                               ; preds = %4
  %38 = load %struct.device*, %struct.device** %10, align 8
  %39 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %42 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %41, i32 0, i32 3
  %43 = call i32 @reinit_completion(i32* %42)
  %44 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %45 = load i32, i32* @COMMAND_RECONFIG, align 4
  %46 = call i32 @s10_svc_send_msg(%struct.s10_priv* %44, i32 %45, %struct.stratix10_svc_command_config_type* %11, i32 4)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %114

50:                                               ; preds = %40
  %51 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %52 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %51, i32 0, i32 3
  %53 = load i32, i32* @S10_RECONFIG_TIMEOUT, align 4
  %54 = call i32 @wait_for_completion_interruptible_timeout(i32* %52, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %10, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %14, align 4
  br label %114

62:                                               ; preds = %50
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.device*, %struct.device** %10, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %114

69:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  %70 = load i32, i32* @SVC_STATUS_RECONFIG_REQUEST_OK, align 4
  %71 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %72 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %71, i32 0, i32 2
  %73 = call i32 @test_and_clear_bit(i32 %70, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %14, align 4
  br label %114

78:                                               ; preds = %69
  store i64 0, i64* %13, align 8
  br label %79

79:                                               ; preds = %110, %78
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* @NUM_SVC_BUFS, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %79
  %84 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %85 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SVC_BUF_SIZE, align 4
  %88 = call i8* @stratix10_svc_allocate_memory(i32 %86, i32 %87)
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %93 = call i32 @s10_free_buffers(%struct.fpga_manager* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %14, align 4
  br label %114

96:                                               ; preds = %83
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %99 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  %104 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %105 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %96
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %13, align 8
  br label %79

113:                                              ; preds = %79
  br label %114

114:                                              ; preds = %113, %91, %75, %65, %57, %49
  %115 = load %struct.s10_priv*, %struct.s10_priv** %9, align 8
  %116 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @stratix10_svc_done(i32 %117)
  %119 = load i32, i32* %14, align 4
  ret i32 %119
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @s10_svc_send_msg(%struct.s10_priv*, i32, %struct.stratix10_svc_command_config_type*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i8* @stratix10_svc_allocate_memory(i32, i32) #1

declare dso_local i32 @s10_free_buffers(%struct.fpga_manager*) #1

declare dso_local i32 @stratix10_svc_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
