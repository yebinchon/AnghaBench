; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_update_intf_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder_phys_cmd.c__dpu_encoder_phys_cmd_update_intf_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_phys = type { i32, %struct.dpu_hw_ctl* }
%struct.dpu_hw_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.dpu_hw_ctl.0*, %struct.dpu_hw_intf_cfg*)* }
%struct.dpu_hw_ctl.0 = type opaque
%struct.dpu_hw_intf_cfg = type { i32, i32, i32, i32, i32 }
%struct.dpu_encoder_phys_cmd = type { i32 }

@DPU_CTL_MODE_SEL_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_encoder_phys*)* @_dpu_encoder_phys_cmd_update_intf_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_encoder_phys_cmd_update_intf_cfg(%struct.dpu_encoder_phys* %0) #0 {
  %2 = alloca %struct.dpu_encoder_phys*, align 8
  %3 = alloca %struct.dpu_encoder_phys_cmd*, align 8
  %4 = alloca %struct.dpu_hw_ctl*, align 8
  %5 = alloca %struct.dpu_hw_intf_cfg, align 4
  store %struct.dpu_encoder_phys* %0, %struct.dpu_encoder_phys** %2, align 8
  %6 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %7 = call %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys* %6)
  store %struct.dpu_encoder_phys_cmd* %7, %struct.dpu_encoder_phys_cmd** %3, align 8
  %8 = bitcast %struct.dpu_hw_intf_cfg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 20, i1 false)
  %9 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %10 = icmp ne %struct.dpu_encoder_phys* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %14 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %13, i32 0, i32 1
  %15 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %14, align 8
  store %struct.dpu_hw_ctl* %15, %struct.dpu_hw_ctl** %4, align 8
  %16 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %17 = icmp ne %struct.dpu_hw_ctl* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %20 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dpu_hw_ctl.0*, %struct.dpu_hw_intf_cfg*)*, i32 (%struct.dpu_hw_ctl.0*, %struct.dpu_hw_intf_cfg*)** %21, align 8
  %23 = icmp ne i32 (%struct.dpu_hw_ctl.0*, %struct.dpu_hw_intf_cfg*)* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %12
  br label %46

25:                                               ; preds = %18
  %26 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %27 = getelementptr inbounds %struct.dpu_encoder_phys, %struct.dpu_encoder_phys* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %5, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @DPU_CTL_MODE_SEL_CMD, align 4
  %31 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.dpu_encoder_phys_cmd*, %struct.dpu_encoder_phys_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.dpu_encoder_phys_cmd, %struct.dpu_encoder_phys_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %2, align 8
  %37 = call i32 @dpu_encoder_helper_get_3d_blend_mode(%struct.dpu_encoder_phys* %36)
  %38 = getelementptr inbounds %struct.dpu_hw_intf_cfg, %struct.dpu_hw_intf_cfg* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %40 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.dpu_hw_ctl.0*, %struct.dpu_hw_intf_cfg*)*, i32 (%struct.dpu_hw_ctl.0*, %struct.dpu_hw_intf_cfg*)** %41, align 8
  %43 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %4, align 8
  %44 = bitcast %struct.dpu_hw_ctl* %43 to %struct.dpu_hw_ctl.0*
  %45 = call i32 %42(%struct.dpu_hw_ctl.0* %44, %struct.dpu_hw_intf_cfg* %5)
  br label %46

46:                                               ; preds = %25, %24, %11
  ret void
}

declare dso_local %struct.dpu_encoder_phys_cmd* @to_dpu_encoder_phys_cmd(%struct.dpu_encoder_phys*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dpu_encoder_helper_get_3d_blend_mode(%struct.dpu_encoder_phys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
