; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_baco_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_baco_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@BACO_SEQ_BACO = common dso_local global i32 0, align 4
@SMU_BACO_STATE_ENTER = common dso_local global i32 0, align 4
@SMU_BACO_STATE_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_baco_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_baco_reset(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %6 = load i32, i32* @BACO_SEQ_BACO, align 4
  %7 = call i32 @smu_v11_0_baco_set_armd3_sequence(%struct.smu_context* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %14 = load i32, i32* @SMU_BACO_STATE_ENTER, align 4
  %15 = call i32 @smu_v11_0_baco_set_state(%struct.smu_context* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %12
  %21 = call i32 @msleep(i32 10)
  %22 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %23 = load i32, i32* @SMU_BACO_STATE_EXIT, align 4
  %24 = call i32 @smu_v11_0_baco_set_state(%struct.smu_context* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %18, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @smu_v11_0_baco_set_armd3_sequence(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_v11_0_baco_set_state(%struct.smu_context*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
