; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_xgmi_pstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_xgmi_pstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_MSG_SetXgmiMode = common dso_local global i32 0, align 4
@XGMI_STATE_D0 = common dso_local global i32 0, align 4
@XGMI_STATE_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i64)* @smu_v11_0_set_xgmi_pstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_set_xgmi_pstate(%struct.smu_context* %0, i64 %1) #0 {
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %7 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %10 = load i32, i32* @SMU_MSG_SetXgmiMode, align 4
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @XGMI_STATE_D0, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @XGMI_STATE_D3, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %9, i32 %10, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %21 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
