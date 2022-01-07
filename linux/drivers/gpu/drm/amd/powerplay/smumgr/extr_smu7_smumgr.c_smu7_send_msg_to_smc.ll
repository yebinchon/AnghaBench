; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_send_msg_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu7_smumgr.c_smu7_send_msg_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@SMC_RESP_0 = common dso_local global i32 0, align 4
@SMC_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"last message was not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\0A last message was failed ret is %d\0A\00", align 1
@mmSMC_RESP_0 = common dso_local global i32 0, align 4
@mmSMC_MESSAGE_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"message %x was not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\0A failed to send message %x ret is %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smu7_send_msg_to_smc(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %7 = load i32, i32* @SMC_RESP_0, align 4
  %8 = load i32, i32* @SMC_RESP, align 4
  %9 = call i32 @PHM_WAIT_FIELD_UNEQUAL(%struct.pp_hwmgr* %6, i32 %7, i32 %8, i32 0)
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SMC_RESP_0, align 4
  %14 = load i32, i32* @SMC_RESP, align 4
  %15 = call i32 @PHM_READ_FIELD(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 254
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %18
  %28 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @mmSMC_RESP_0, align 4
  %32 = call i32 @cgs_write_register(i32 %30, i32 %31, i32 0)
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @mmSMC_MESSAGE_0, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @cgs_write_register(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %40 = load i32, i32* @SMC_RESP_0, align 4
  %41 = load i32, i32* @SMC_RESP, align 4
  %42 = call i32 @PHM_WAIT_FIELD_UNEQUAL(%struct.pp_hwmgr* %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %44 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SMC_RESP_0, align 4
  %47 = load i32, i32* @SMC_RESP, align 4
  %48 = call i32 @PHM_READ_FIELD(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 254
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %62

54:                                               ; preds = %27
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %51
  ret i32 0
}

declare dso_local i32 @PHM_WAIT_FIELD_UNEQUAL(%struct.pp_hwmgr*, i32, i32, i32) #1

declare dso_local i32 @PHM_READ_FIELD(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
