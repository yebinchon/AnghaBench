; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_update_blending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_update_blending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.mpcc_blnd_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dcn20_mpc = type { i32 }
%struct.mpcc = type { %struct.mpcc_blnd_cfg }

@MPCC_CONTROL = common dso_local global i32* null, align 8
@MPCC_ALPHA_BLND_MODE = common dso_local global i32 0, align 4
@MPCC_ALPHA_MULTIPLIED_MODE = common dso_local global i32 0, align 4
@MPCC_BLND_ACTIVE_OVERLAP_ONLY = common dso_local global i32 0, align 4
@MPCC_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@MPCC_GLOBAL_GAIN = common dso_local global i32 0, align 4
@MPCC_BG_BPC = common dso_local global i32 0, align 4
@MPCC_BOT_GAIN_MODE = common dso_local global i32 0, align 4
@MPCC_TOP_GAIN = common dso_local global i32* null, align 8
@MPCC_BOT_GAIN_INSIDE = common dso_local global i32* null, align 8
@MPCC_BOT_GAIN_OUTSIDE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc2_update_blending(%struct.mpc* %0, %struct.mpcc_blnd_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca %struct.mpcc_blnd_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn20_mpc*, align 8
  %8 = alloca %struct.mpcc*, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store %struct.mpcc_blnd_cfg* %1, %struct.mpcc_blnd_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mpc*, %struct.mpc** %4, align 8
  %10 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %9)
  store %struct.dcn20_mpc* %10, %struct.dcn20_mpc** %7, align 8
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
  %21 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MPCC_ALPHA_MULTIPLIED_MODE, align 4
  %24 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MPCC_BLND_ACTIVE_OVERLAP_ONLY, align 4
  %28 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %29 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MPCC_GLOBAL_ALPHA, align 4
  %32 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MPCC_GLOBAL_GAIN, align 4
  %36 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MPCC_BG_BPC, align 4
  %40 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MPCC_BOT_GAIN_MODE, align 4
  %44 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %45 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @REG_UPDATE_7(i32 %18, i32 %19, i32 %22, i32 %23, i32 %26, i32 %27, i32 %30, i32 %31, i32 %34, i32 %35, i32 %38, i32 %39, i32 %42, i32 %43, i32 %46)
  %48 = load i32*, i32** @MPCC_TOP_GAIN, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @MPCC_TOP_GAIN, align 8
  %54 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %55 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REG_SET(i32 %52, i32 0, i32* %53, i32 %56)
  %58 = load i32*, i32** @MPCC_BOT_GAIN_INSIDE, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @MPCC_BOT_GAIN_INSIDE, align 8
  %64 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %65 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @REG_SET(i32 %62, i32 0, i32* %63, i32 %66)
  %68 = load i32*, i32** @MPCC_BOT_GAIN_OUTSIDE, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @MPCC_BOT_GAIN_OUTSIDE, align 8
  %74 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %75 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @REG_SET(i32 %72, i32 0, i32* %73, i32 %76)
  %78 = load %struct.mpc*, %struct.mpc** %4, align 8
  %79 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %80 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %79, i32 0, i32 0
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @mpc1_set_bg_color(%struct.mpc* %78, i32* %80, i32 %81)
  %83 = load %struct.mpcc*, %struct.mpcc** %8, align 8
  %84 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %83, i32 0, i32 0
  %85 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %5, align 8
  %86 = bitcast %struct.mpcc_blnd_cfg* %84 to i8*
  %87 = bitcast %struct.mpcc_blnd_cfg* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 44, i1 false)
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local %struct.mpcc* @mpc1_get_mpcc(%struct.mpc*, i32) #1

declare dso_local i32 @REG_UPDATE_7(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

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
