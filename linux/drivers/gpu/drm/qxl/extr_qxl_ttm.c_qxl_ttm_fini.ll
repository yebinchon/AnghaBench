; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_ttm.c_qxl_ttm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TTM_PL_VRAM = common dso_local global i32 0, align 4
@TTM_PL_PRIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"qxl: ttm finalized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qxl_ttm_fini(%struct.qxl_device* %0) #0 {
  %2 = alloca %struct.qxl_device*, align 8
  store %struct.qxl_device* %0, %struct.qxl_device** %2, align 8
  %3 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %4 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* @TTM_PL_VRAM, align 4
  %7 = call i32 @ttm_bo_clean_mm(i32* %5, i32 %6)
  %8 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %9 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* @TTM_PL_PRIV, align 4
  %12 = call i32 @ttm_bo_clean_mm(i32* %10, i32 %11)
  %13 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %14 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @ttm_bo_device_release(i32* %15)
  %17 = call i32 @DRM_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ttm_bo_clean_mm(i32*, i32) #1

declare dso_local i32 @ttm_bo_device_release(i32*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
