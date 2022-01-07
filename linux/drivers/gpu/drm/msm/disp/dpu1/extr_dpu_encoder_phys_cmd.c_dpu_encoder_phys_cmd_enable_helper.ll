; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_enable_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c_dpu_encoder_phys_cmd_enable_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.dpu_hw_ctl*, i32 }
%struct.dpu_hw_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*, i32)*, i32 (%struct.dpu_hw_ctl.1*, i32*, i32)* }
%struct.dpu_hw_ctl.0 = type opaque
%struct.dpu_hw_ctl.1 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"invalid arg(s), encoder %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @dpu_encoder_phys_cmd_enable_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_encoder_phys_cmd_enable_helper(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_hw_ctl*, align 8
  %4 = alloca i32, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %6 = icmp ne %struct.dpu_encoder_phys* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %9 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %8, i32 0, i32 1
  %10 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %9, align 8
  %11 = icmp ne %struct.dpu_hw_ctl* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %7, %1
  %18 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %19 = icmp ne %struct.dpu_encoder_phys* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %56

22:                                               ; preds = %12
  %23 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %24 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dpu_encoder_helper_split_config(%struct.dpu_encoder_phys* %23, i32 %26)
  %28 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %29 = call i32 @_dpu_encoder_phys_cmd_pingpong_config(%struct.dpu_encoder_phys* %28)
  %30 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %31 = call i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %56

34:                                               ; preds = %22
  %35 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %36 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %35, i32 0, i32 1
  %37 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %36, align 8
  store %struct.dpu_hw_ctl* %37, %struct.dpu_hw_ctl** %3, align 8
  %38 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %39 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.dpu_hw_ctl.1*, i32*, i32)*, i32 (%struct.dpu_hw_ctl.1*, i32*, i32)** %40, align 8
  %42 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %43 = bitcast %struct.dpu_hw_ctl* %42 to %struct.dpu_hw_ctl.1*
  %44 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %45 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %41(%struct.dpu_hw_ctl.1* %43, i32* %4, i32 %46)
  %48 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %49 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.dpu_hw_ctl.0*, i32)*, i32 (%struct.dpu_hw_ctl.0*, i32)** %50, align 8
  %52 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %3, align 8
  %53 = bitcast %struct.dpu_hw_ctl* %52 to %struct.dpu_hw_ctl.0*
  %54 = load i32, i32* %4, align 4
  %55 = call i32 %51(%struct.dpu_hw_ctl.0* %53, i32 %54)
  br label %56

56:                                               ; preds = %34, %33, %17
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*, i32) #1

declare dso_local i32 @dpu_encoder_helper_split_config(%struct.dpu_encoder_phys*, i32) #1

declare dso_local i32 @_dpu_encoder_phys_cmd_pingpong_config(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @dpu_encoder_phys_cmd_is_master(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
