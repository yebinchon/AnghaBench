; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_layer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i64 }
%struct.mtk_plane_state = type { %struct.mtk_plane_pending_state }
%struct.mtk_plane_pending_state = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mtk_disp_ovl = type { i32 }

@OVL_CON_AEN = common dso_local global i32 0, align 4
@OVL_CON_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*)* @mtk_ovl_layer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ovl_layer_config(%struct.mtk_ddp_comp* %0, i32 %1, %struct.mtk_plane_state* %2) #0 {
  %4 = alloca %struct.mtk_ddp_comp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_plane_state*, align 8
  %7 = alloca %struct.mtk_disp_ovl*, align 8
  %8 = alloca %struct.mtk_plane_pending_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mtk_plane_state* %2, %struct.mtk_plane_state** %6, align 8
  %15 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %16 = call %struct.mtk_disp_ovl* @comp_to_ovl(%struct.mtk_ddp_comp* %15)
  store %struct.mtk_disp_ovl* %16, %struct.mtk_disp_ovl** %7, align 8
  %17 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %6, align 8
  %18 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %17, i32 0, i32 0
  store %struct.mtk_plane_pending_state* %18, %struct.mtk_plane_pending_state** %8, align 8
  %19 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %20 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 65535
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %27 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %30 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %34 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %38 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 16
  %41 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %42 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %40, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %46 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %3
  %50 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @mtk_ovl_layer_off(%struct.mtk_ddp_comp* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %3
  %54 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ovl_fmt_convert(%struct.mtk_disp_ovl* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @OVL_CON_AEN, align 4
  %61 = load i32, i32* @OVL_CON_ALPHA, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %68 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @DISP_REG_OVL_CON(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @writel_relaxed(i32 %66, i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %76 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @DISP_REG_OVL_PITCH(i32 %78)
  %80 = add nsw i64 %77, %79
  %81 = call i32 @writel_relaxed(i32 %74, i64 %80)
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %84 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @DISP_REG_OVL_SRC_SIZE(i32 %86)
  %88 = add nsw i64 %85, %87
  %89 = call i32 @writel_relaxed(i32 %82, i64 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %92 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @DISP_REG_OVL_OFFSET(i32 %94)
  %96 = add nsw i64 %93, %95
  %97 = call i32 @writel_relaxed(i32 %90, i64 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %100 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %7, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @DISP_REG_OVL_ADDR(%struct.mtk_disp_ovl* %102, i32 %103)
  %105 = add nsw i64 %101, %104
  %106 = call i32 @writel_relaxed(i32 %98, i64 %105)
  %107 = load %struct.mtk_plane_pending_state*, %struct.mtk_plane_pending_state** %8, align 8
  %108 = getelementptr inbounds %struct.mtk_plane_pending_state, %struct.mtk_plane_pending_state* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %65
  %112 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @mtk_ovl_layer_on(%struct.mtk_ddp_comp* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %65
  ret void
}

declare dso_local %struct.mtk_disp_ovl* @comp_to_ovl(%struct.mtk_ddp_comp*) #1

declare dso_local i32 @mtk_ovl_layer_off(%struct.mtk_ddp_comp*, i32) #1

declare dso_local i32 @ovl_fmt_convert(%struct.mtk_disp_ovl*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @DISP_REG_OVL_CON(i32) #1

declare dso_local i64 @DISP_REG_OVL_PITCH(i32) #1

declare dso_local i64 @DISP_REG_OVL_SRC_SIZE(i32) #1

declare dso_local i64 @DISP_REG_OVL_OFFSET(i32) #1

declare dso_local i64 @DISP_REG_OVL_ADDR(%struct.mtk_disp_ovl*, i32) #1

declare dso_local i32 @mtk_ovl_layer_on(%struct.mtk_ddp_comp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
