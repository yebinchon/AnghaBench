; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_ddp_comp_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_ddp_comp.c_mtk_ddp_comp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { %struct.mtk_ddp_comp** }
%struct.mtk_ddp_comp = type { i64 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_ddp_comp_register(%struct.drm_device* %0, %struct.mtk_ddp_comp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.mtk_ddp_comp*, align 8
  %6 = alloca %struct.mtk_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.mtk_ddp_comp* %1, %struct.mtk_ddp_comp** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  store %struct.mtk_drm_private* %9, %struct.mtk_drm_private** %6, align 8
  %10 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %6, align 8
  %11 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %10, i32 0, i32 0
  %12 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %11, align 8
  %13 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %5, align 8
  %14 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %12, i64 %15
  %17 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %16, align 8
  %18 = icmp ne %struct.mtk_ddp_comp* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %5, align 8
  %24 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %6, align 8
  %25 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %24, i32 0, i32 0
  %26 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %25, align 8
  %27 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_ddp_comp, %struct.mtk_ddp_comp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %26, i64 %29
  store %struct.mtk_ddp_comp* %23, %struct.mtk_ddp_comp** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
