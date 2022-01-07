; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_disp_ovl_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_disp_ovl.c_mtk_disp_ovl_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_disp_ovl = type { i32, %struct.mtk_ddp_comp }
%struct.mtk_ddp_comp = type { i64 }

@DISP_REG_OVL_INTSTA = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_disp_ovl_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_disp_ovl_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtk_disp_ovl*, align 8
  %7 = alloca %struct.mtk_ddp_comp*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.mtk_disp_ovl*
  store %struct.mtk_disp_ovl* %9, %struct.mtk_disp_ovl** %6, align 8
  %10 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %6, align 8
  %11 = getelementptr inbounds %struct.mtk_disp_ovl, %struct.mtk_disp_ovl* %10, i32 0, i32 1
  store %struct.mtk_ddp_comp* %11, %struct.mtk_ddp_comp** %7, align 8
  %12 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %7, align 8
  %13 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DISP_REG_OVL_INTSTA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 0, i64 %16)
  %18 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %6, align 8
  %19 = getelementptr inbounds %struct.mtk_disp_ovl, %struct.mtk_disp_ovl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load %struct.mtk_disp_ovl*, %struct.mtk_disp_ovl** %6, align 8
  %26 = getelementptr inbounds %struct.mtk_disp_ovl, %struct.mtk_disp_ovl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %7, align 8
  %29 = call i32 @mtk_crtc_ddp_irq(i32 %27, %struct.mtk_ddp_comp* %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %22
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtk_crtc_ddp_irq(i32, %struct.mtk_ddp_comp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
