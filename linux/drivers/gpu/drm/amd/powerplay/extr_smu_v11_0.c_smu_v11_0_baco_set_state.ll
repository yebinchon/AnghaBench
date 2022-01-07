; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_baco_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_baco_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_baco_context }
%struct.smu_baco_context = type { i32, i32 }

@SMU_BACO_STATE_ENTER = common dso_local global i32 0, align 4
@SMU_MSG_EnterBaco = common dso_local global i32 0, align 4
@BACO_SEQ_BACO = common dso_local global i32 0, align 4
@SMU_MSG_ExitBaco = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @smu_v11_0_baco_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_baco_set_state(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_baco_context*, align 8
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 0
  store %struct.smu_baco_context* %9, %struct.smu_baco_context** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %11 = call i32 @smu_v11_0_baco_get_state(%struct.smu_context* %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.smu_baco_context*, %struct.smu_baco_context** %6, align 8
  %17 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SMU_BACO_STATE_ENTER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %24 = load i32, i32* @SMU_MSG_EnterBaco, align 4
  %25 = load i32, i32* @BACO_SEQ_BACO, align 4
  %26 = call i32 @smu_send_smc_msg_with_param(%struct.smu_context* %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %15
  %28 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %29 = load i32, i32* @SMU_MSG_ExitBaco, align 4
  %30 = call i32 @smu_send_smc_msg(%struct.smu_context* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.smu_baco_context*, %struct.smu_baco_context** %6, align 8
  %38 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.smu_baco_context*, %struct.smu_baco_context** %6, align 8
  %41 = getelementptr inbounds %struct.smu_baco_context, %struct.smu_baco_context* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @smu_v11_0_baco_get_state(%struct.smu_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_send_smc_msg_with_param(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @smu_send_smc_msg(%struct.smu_context*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
