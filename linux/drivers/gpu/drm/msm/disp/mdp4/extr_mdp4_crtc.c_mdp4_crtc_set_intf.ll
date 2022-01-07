; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_set_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_crtc.c_mdp4_crtc_set_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mdp4_crtc = type { i32, i32, i32 }
%struct.mdp4_kms = type { i32 }

@REG_MDP4_DISP_INTF_SEL = common dso_local global i32 0, align 4
@MDP4_DISP_INTF_SEL_PRIM__MASK = common dso_local global i32 0, align 4
@MDP4_DISP_INTF_SEL_SEC__MASK = common dso_local global i32 0, align 4
@MDP4_DISP_INTF_SEL_EXT__MASK = common dso_local global i32 0, align 4
@INTF_DSI_VIDEO = common dso_local global i32 0, align 4
@MDP4_DISP_INTF_SEL_DSI_CMD = common dso_local global i32 0, align 4
@MDP4_DISP_INTF_SEL_DSI_VIDEO = common dso_local global i32 0, align 4
@INTF_DSI_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: intf_sel=%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp4_crtc_set_intf(%struct.drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdp4_crtc*, align 8
  %8 = alloca %struct.mdp4_kms*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = call %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc* %10)
  store %struct.mdp4_crtc* %11, %struct.mdp4_crtc** %7, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %13 = call %struct.mdp4_kms* @get_kms(%struct.drm_crtc* %12)
  store %struct.mdp4_kms* %13, %struct.mdp4_kms** %8, align 8
  %14 = load %struct.mdp4_kms*, %struct.mdp4_kms** %8, align 8
  %15 = load i32, i32* @REG_MDP4_DISP_INTF_SEL, align 4
  %16 = call i32 @mdp4_read(%struct.mdp4_kms* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %7, align 8
  %18 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %47 [
    i32 129, label %20
    i32 128, label %29
    i32 130, label %38
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @MDP4_DISP_INTF_SEL_PRIM__MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @MDP4_DISP_INTF_SEL_PRIM(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %47

29:                                               ; preds = %3
  %30 = load i32, i32* @MDP4_DISP_INTF_SEL_SEC__MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MDP4_DISP_INTF_SEL_SEC(i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %47

38:                                               ; preds = %3
  %39 = load i32, i32* @MDP4_DISP_INTF_SEL_EXT__MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @MDP4_DISP_INTF_SEL_EXT(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %3, %38, %29, %20
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @INTF_DSI_VIDEO, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* @MDP4_DISP_INTF_SEL_DSI_CMD, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @MDP4_DISP_INTF_SEL_DSI_VIDEO, align 4
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %72

59:                                               ; preds = %47
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @INTF_DSI_CMD, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @MDP4_DISP_INTF_SEL_DSI_VIDEO, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @MDP4_DISP_INTF_SEL_DSI_CMD, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %63, %59
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %7, align 8
  %75 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %77 = call i32 @blend_setup(%struct.drm_crtc* %76)
  %78 = load %struct.mdp4_crtc*, %struct.mdp4_crtc** %7, align 8
  %79 = getelementptr inbounds %struct.mdp4_crtc, %struct.mdp4_crtc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.mdp4_kms*, %struct.mdp4_kms** %8, align 8
  %84 = load i32, i32* @REG_MDP4_DISP_INTF_SEL, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @mdp4_write(%struct.mdp4_kms* %83, i32 %84, i32 %85)
  ret void
}

declare dso_local %struct.mdp4_crtc* @to_mdp4_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i32 @mdp4_read(%struct.mdp4_kms*, i32) #1

declare dso_local i32 @MDP4_DISP_INTF_SEL_PRIM(i32) #1

declare dso_local i32 @MDP4_DISP_INTF_SEL_SEC(i32) #1

declare dso_local i32 @MDP4_DISP_INTF_SEL_EXT(i32) #1

declare dso_local i32 @blend_setup(%struct.drm_crtc*) #1

declare dso_local i32 @DBG(i8*, i32, i32) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
