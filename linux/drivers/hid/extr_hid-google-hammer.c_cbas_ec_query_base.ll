; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_cbas_ec_query_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_cbas_ec_query_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_device = type { i32 }
%struct.ec_params_mkbp_info = type { i32, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_MKBP_INFO = common dso_local global i32 0, align 4
@EC_MKBP_INFO_CURRENT = common dso_local global i32 0, align 4
@EC_MKBP_INFO_SUPPORTED = common dso_local global i32 0, align 4
@EC_MKBP_EVENT_SWITCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wrong result size: %d != %zu\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_device*, i32, i32*)* @cbas_ec_query_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbas_ec_query_base(%struct.cros_ec_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cros_ec_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ec_params_mkbp_info*, align 8
  %9 = alloca %struct.cros_ec_command*, align 8
  %10 = alloca i32, align 4
  store %struct.cros_ec_device* %0, %struct.cros_ec_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = call i64 @max(i32 4, i32 8)
  %12 = add i64 32, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cros_ec_command* @kzalloc(i64 %12, i32 %13)
  store %struct.cros_ec_command* %14, %struct.cros_ec_command** %9, align 8
  %15 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %16 = icmp ne %struct.cros_ec_command* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load i32, i32* @EC_CMD_MKBP_INFO, align 4
  %22 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %23 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %25 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %27 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %26, i32 0, i32 1
  store i32 8, i32* %27, align 4
  %28 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %29 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %28, i32 0, i32 2
  store i32 4, i32* %29, align 8
  %30 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %31 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ec_params_mkbp_info*
  store %struct.ec_params_mkbp_info* %33, %struct.ec_params_mkbp_info** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* @EC_MKBP_INFO_CURRENT, align 4
  br label %40

38:                                               ; preds = %20
  %39 = load i32, i32* @EC_MKBP_INFO_SUPPORTED, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.ec_params_mkbp_info*, %struct.ec_params_mkbp_info** %8, align 8
  %43 = getelementptr inbounds %struct.ec_params_mkbp_info, %struct.ec_params_mkbp_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @EC_MKBP_EVENT_SWITCH, align 4
  %45 = load %struct.ec_params_mkbp_info*, %struct.ec_params_mkbp_info** %8, align 8
  %46 = getelementptr inbounds %struct.ec_params_mkbp_info, %struct.ec_params_mkbp_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %48 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %49 = call i32 @cros_ec_cmd_xfer_status(%struct.cros_ec_device* %47, %struct.cros_ec_command* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 4
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.cros_ec_device*, %struct.cros_ec_device** %5, align 8
  %58 = getelementptr inbounds %struct.cros_ec_device, %struct.cros_ec_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %60, i32 4)
  %62 = load i32, i32* @EPROTO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %70

64:                                               ; preds = %52
  %65 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %66 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @cbas_parse_base_state(i64 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %64, %56
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %73 = call i32 @kfree(%struct.cros_ec_command* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.cros_ec_command* @kzalloc(i64, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(%struct.cros_ec_device*, %struct.cros_ec_command*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @cbas_parse_base_state(i64) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
