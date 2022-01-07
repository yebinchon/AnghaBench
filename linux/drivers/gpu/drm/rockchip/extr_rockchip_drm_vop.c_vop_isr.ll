; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop = type { i32, i32, i32, i32, %struct.drm_crtc }
%struct.drm_crtc = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"couldn't enable clocks\0A\00", align 1
@status = common dso_local global i32 0, align 4
@INTR_MASK = common dso_local global i32 0, align 4
@clear = common dso_local global i32 0, align 4
@DSP_HOLD_VALID_INTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@LINE_FLAG_INTR = common dso_local global i32 0, align 4
@FS_INTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown VOP IRQs: %#02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vop_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vop*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.vop*
  store %struct.vop* %11, %struct.vop** %6, align 8
  %12 = load %struct.vop*, %struct.vop** %6, align 8
  %13 = getelementptr inbounds %struct.vop, %struct.vop* %12, i32 0, i32 4
  store %struct.drm_crtc* %13, %struct.drm_crtc** %7, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.vop*, %struct.vop** %6, align 8
  %16 = getelementptr inbounds %struct.vop, %struct.vop* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_if_in_use(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %115

22:                                               ; preds = %2
  %23 = load %struct.vop*, %struct.vop** %6, align 8
  %24 = call i64 @vop_core_clks_enable(%struct.vop* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.vop*, %struct.vop** %6, align 8
  %28 = getelementptr inbounds %struct.vop, %struct.vop* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DRM_DEV_ERROR_RATELIMITED(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %109

31:                                               ; preds = %22
  %32 = load %struct.vop*, %struct.vop** %6, align 8
  %33 = getelementptr inbounds %struct.vop, %struct.vop* %32, i32 0, i32 3
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.vop*, %struct.vop** %6, align 8
  %36 = load i32, i32* @status, align 4
  %37 = load i32, i32* @INTR_MASK, align 4
  %38 = call i32 @VOP_INTR_GET_TYPE(%struct.vop* %35, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.vop*, %struct.vop** %6, align 8
  %43 = load i32, i32* @clear, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @VOP_INTR_SET_TYPE(%struct.vop* %42, i32 %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.vop*, %struct.vop** %6, align 8
  %48 = getelementptr inbounds %struct.vop, %struct.vop* %47, i32 0, i32 3
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %106

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @DSP_HOLD_VALID_INTR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.vop*, %struct.vop** %6, align 8
  %60 = getelementptr inbounds %struct.vop, %struct.vop* %59, i32 0, i32 2
  %61 = call i32 @complete(i32* %60)
  %62 = load i32, i32* @DSP_HOLD_VALID_INTR, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %58, %53
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @LINE_FLAG_INTR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.vop*, %struct.vop** %6, align 8
  %74 = getelementptr inbounds %struct.vop, %struct.vop* %73, i32 0, i32 1
  %75 = call i32 @complete(i32* %74)
  %76 = load i32, i32* @LINE_FLAG_INTR, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @FS_INTR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %88 = call i32 @drm_crtc_handle_vblank(%struct.drm_crtc* %87)
  %89 = load %struct.vop*, %struct.vop** %6, align 8
  %90 = call i32 @vop_handle_vblank(%struct.vop* %89)
  %91 = load i32, i32* @FS_INTR, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %86, %81
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.vop*, %struct.vop** %6, align 8
  %101 = getelementptr inbounds %struct.vop, %struct.vop* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @DRM_DEV_ERROR(i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %52
  %107 = load %struct.vop*, %struct.vop** %6, align 8
  %108 = call i32 @vop_core_clks_disable(%struct.vop* %107)
  br label %109

109:                                              ; preds = %106, %26
  %110 = load %struct.vop*, %struct.vop** %6, align 8
  %111 = getelementptr inbounds %struct.vop, %struct.vop* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pm_runtime_put(i32 %112)
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @pm_runtime_get_if_in_use(i32) #1

declare dso_local i64 @vop_core_clks_enable(%struct.vop*) #1

declare dso_local i32 @DRM_DEV_ERROR_RATELIMITED(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @VOP_INTR_GET_TYPE(%struct.vop*, i32, i32) #1

declare dso_local i32 @VOP_INTR_SET_TYPE(%struct.vop*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @drm_crtc_handle_vblank(%struct.drm_crtc*) #1

declare dso_local i32 @vop_handle_vblank(%struct.vop*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @vop_core_clks_disable(%struct.vop*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
