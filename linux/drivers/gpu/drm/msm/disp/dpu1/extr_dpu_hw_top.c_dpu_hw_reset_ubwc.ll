; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_reset_ubwc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_reset_ubwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_mdss_cfg = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@UBWC_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mdp*, %struct.dpu_mdss_cfg*)* @dpu_hw_reset_ubwc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_reset_ubwc(%struct.dpu_hw_mdp* %0, %struct.dpu_mdss_cfg* %1) #0 {
  %3 = alloca %struct.dpu_hw_mdp*, align 8
  %4 = alloca %struct.dpu_mdss_cfg*, align 8
  %5 = alloca %struct.dpu_hw_blk_reg_map, align 4
  store %struct.dpu_hw_mdp* %0, %struct.dpu_hw_mdp** %3, align 8
  store %struct.dpu_mdss_cfg* %1, %struct.dpu_mdss_cfg** %4, align 8
  %6 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %3, align 8
  %7 = icmp ne %struct.dpu_hw_mdp* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %4, align 8
  %10 = icmp ne %struct.dpu_mdss_cfg* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  br label %35

12:                                               ; preds = %8
  %13 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.dpu_mdss_cfg, %struct.dpu_mdss_cfg* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IS_UBWC_20_SUPPORTED(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %35

21:                                               ; preds = %12
  %22 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %3, align 8
  %23 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %22, i32 0, i32 0
  %24 = bitcast %struct.dpu_hw_blk_reg_map* %5 to i8*
  %25 = bitcast %struct.dpu_hw_blk_reg_map* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, %struct.dpu_hw_blk_reg_map* %5, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @UBWC_STATIC, align 4
  %28 = load %struct.dpu_mdss_cfg*, %struct.dpu_mdss_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.dpu_mdss_cfg, %struct.dpu_mdss_cfg* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %5, i32 %27, i32 %33)
  br label %35

35:                                               ; preds = %21, %20, %11
  ret void
}

declare dso_local i32 @IS_UBWC_20_SUPPORTED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
