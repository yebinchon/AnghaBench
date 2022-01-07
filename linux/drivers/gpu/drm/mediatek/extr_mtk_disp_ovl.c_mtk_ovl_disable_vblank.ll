; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i64 }
%struct.mtk_disp_ovl = type { i32* }

@DISP_REG_OVL_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*)* @mtk_ovl_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ovl_disable_vblank(%struct.mtk_ddp_comp* %0) #0 {
  %2 = alloca %struct.mtk_ddp_comp*, align 8
  %3 = alloca %struct.mtk_disp_ovl*, align 8
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %2, align 8
  %4 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %2, align 8
  %5 = call %struct.mtk_disp_ovl* @comp_to_ovl(%struct.mtk_ddp_comp* %4)
  store %struct.mtk_disp_ovl* %5, %struct.mtk_disp_ovl** %3, align 8
  %6 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_disp_ovl, %struct.mtk_disp_ovl* %6, i32 0, i32 0
  store i32* null, i32** %7, align 8
  %8 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %2, align 8
  %9 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DISP_REG_OVL_INTEN, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 0, i64 %12)
  ret void
}

declare dso_local %struct.mtk_disp_ovl* @comp_to_ovl(%struct.mtk_ddp_comp*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
