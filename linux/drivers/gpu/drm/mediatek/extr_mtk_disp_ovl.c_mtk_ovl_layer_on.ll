; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_layer_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_ovl_layer_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ddp_comp = type { i64 }

@OVL_RDMA_MEM_GMC = common dso_local global i32 0, align 4
@DISP_REG_OVL_SRC_CON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ddp_comp*, i32)* @mtk_ovl_layer_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_ovl_layer_on(%struct.mtk_ddp_comp* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_ddp_comp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_ddp_comp* %0, %struct.mtk_ddp_comp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @DISP_REG_OVL_RDMA_CTRL(i32 %9)
  %11 = add nsw i64 %8, %10
  %12 = call i32 @writel(i32 1, i64 %11)
  %13 = load i32, i32* @OVL_RDMA_MEM_GMC, align 4
  %14 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @DISP_REG_OVL_RDMA_GMC(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @writel(i32 %13, i64 %19)
  %21 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %22 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DISP_REG_OVL_SRC_CON, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = or i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DISP_REG_OVL_SRC_CON, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @DISP_REG_OVL_RDMA_CTRL(i32) #1

declare dso_local i64 @DISP_REG_OVL_RDMA_GMC(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
