; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_pingpong_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_pingpong_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dpu_encoder_phys_cmd = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid arg(s), enc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pp %d, enabling mode:\0A\00", align 1
@PINGPONG_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @_dpu_encoder_phys_cmd_pingpong_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_phys_cmd_pingpong_config(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %4 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %5 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %4)
  store %struct.dpu_encoder_phys_cmd* %5, %struct.dpu_encoder_phys_cmd** %3, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %7 = icmp ne %struct.dpu_encoder_phys* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18, %13, %8, %1
  %27 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %28 = icmp ne %struct.dpu_encoder_phys* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %48

31:                                               ; preds = %18
  %32 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %3, align 8
  %33 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %34 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PINGPONG_0, align 8
  %39 = sub nsw i64 %37, %38
  %40 = call i32 @DPU_DEBUG_CMDENC(%struct.dpu_encoder_phys_cmd* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %42 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %41, i32 0, i32 0
  %43 = call i32 @drm_mode_debug_printmodeline(i32* %42)
  %44 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %45 = call i32 @_dpu_encoder_phys_cmd_update_intf_cfg(%struct.dpu_encoder_phys* %44)
  %46 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %47 = call i32 @dpu_encoder_phys_cmd_tearcheck_config(%struct.dpu_encoder_phys* %46)
  br label %48

48:                                               ; preds = %31, %26
  ret void
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local i32 @DPU_DEBUG_CMDENC(%struct.dpu_encoder_phys_cmd*, i8*, i64) #1

declare dso_local i32 @drm_mode_debug_printmodeline(i32*) #1

declare dso_local i32 @_dpu_encoder_phys_cmd_update_intf_cfg(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @dpu_encoder_phys_cmd_tearcheck_config(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
