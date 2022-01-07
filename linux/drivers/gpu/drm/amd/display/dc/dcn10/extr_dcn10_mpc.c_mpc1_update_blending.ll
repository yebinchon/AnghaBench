; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_update_blending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_update_blending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.mpcc_blnd_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn10_mpc = type { i32 }
%struct.mpcc = type { %struct.mpcc_blnd_cfg }

@MPCC_CONTROL = common dso_local global i32* null, align 8
@MPCC_ALPHA_BLND_MODE = common dso_local global i32 0, align 4
@MPCC_ALPHA_MULTIPLIED_MODE = common dso_local global i32 0, align 4
@MPCC_BLND_ACTIVE_OVERLAP_ONLY = common dso_local global i32 0, align 4
@MPCC_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@MPCC_GLOBAL_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)* @mpc1_update_blending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc1_update_blending(%struct.mpc* %0, %struct.mpcc_blnd_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca %struct.mpcc_blnd_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_mpc*, align 8
  %8 = alloca %struct.mpcc*, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store %struct.mpcc_blnd_cfg* %1, %struct.mpcc_blnd_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mpc*, %struct.mpc** %4, align 8
  %10 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %9)
  store %struct.dcn10_mpc* %10, %struct.dcn10_mpc** %7, align 8
  %11 = load %struct.mpc*, %struct.mpc** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.mpcc* @mpc1_get_mpcc(%struct.mpc* %11, i32 %12)
  store %struct.mpcc* %13, %struct.mpcc** %8, align 8
  %14 = load i32*, i32** @MPCC_CONTROL, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MPCC_ALPHA_BLND_MODE, align 4
  %20 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MPCC_ALPHA_MULTIPLIED_MODE, align 4
  %24 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MPCC_BLND_ACTIVE_OVERLAP_ONLY, align 4
  %28 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MPCC_GLOBAL_ALPHA, align 4
  %32 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MPCC_GLOBAL_GAIN, align 4
  %36 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_UPDATE_5(i32 %18, i32 %19, i32 %22, i32 %23, i32 %26, i32 %27, i32 %30, i32 %31, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.mpc*, %struct.mpc** %4, align 8
  %41 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %41, i32 0, i32 0
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mpc1_set_bg_color(%struct.mpc* %40, i32* %42, i32 %43)
  %45 = load %struct.mpcc*, %struct.mpcc** %8, align 8
  %46 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %45, i32 0, i32 0
  %47 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %48 = bitcast %struct.mpcc_blnd_cfg* %46 to i8*
  %49 = bitcast %struct.mpcc_blnd_cfg* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 24, i1 false)
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local %struct.mpcc* @mpc1_get_mpcc(%struct.mpc*, i32) #1

declare dso_local i32 @REG_UPDATE_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mpc1_set_bg_color(%struct.mpc*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
