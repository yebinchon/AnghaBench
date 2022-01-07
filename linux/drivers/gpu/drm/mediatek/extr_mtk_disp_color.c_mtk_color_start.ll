; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_color.c_mtk_color_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_color.c_mtk_color_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i64 }
%struct.mtk_disp_color = type { i32 }

@COLOR_BYPASS_ALL = common dso_local global i32 0, align 4
@COLOR_SEQ_SEL = common dso_local global i32 0, align 4
@DISP_COLOR_CFG_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*)* @mtk_color_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_color_start(%struct.mtk_ddp_comp* %0) #0 {
  %2 = alloca %struct.mtk_ddp_comp*, align 8
  %3 = alloca %struct.mtk_disp_color*, align 8
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %2, align 8
  %4 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %2, align 8
  %5 = call %struct.mtk_disp_color* @comp_to_color(%struct.mtk_ddp_comp* %4)
  store %struct.mtk_disp_color* %5, %struct.mtk_disp_color** %3, align 8
  %6 = load i32, i32* @COLOR_BYPASS_ALL, align 4
  %7 = load i32, i32* @COLOR_SEQ_SEL, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DISP_COLOR_CFG_MAIN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  %15 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %2, align 8
  %16 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mtk_disp_color*, %struct.mtk_disp_color** %3, align 8
  %19 = call i64 @DISP_COLOR_START(%struct.mtk_disp_color* %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @writel(i32 1, i64 %20)
  ret void
}

declare dso_local %struct.mtk_disp_color* @comp_to_color(%struct.mtk_ddp_comp*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @DISP_COLOR_START(%struct.mtk_disp_color*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
