; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i64 }

@DISP_REG_OVL_ROI_SIZE = common dso_local global i64 0, align 8
@DISP_REG_OVL_ROI_BGCLR = common dso_local global i64 0, align 8
@DISP_REG_OVL_RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*, i32, i32, i32, i32)* @mtk_ovl_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ovl_config(%struct.mtk_ddp_comp* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mtk_ddp_comp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DISP_REG_OVL_ROI_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i32 %20, i64 %25)
  br label %27

27:                                               ; preds = %16, %13, %5
  %28 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %29 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DISP_REG_OVL_ROI_BGCLR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel_relaxed(i32 0, i64 %32)
  %34 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DISP_REG_OVL_RST, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 1, i64 %38)
  %40 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %6, align 8
  %41 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DISP_REG_OVL_RST, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
