; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vop = type { i32, i32, i32, i32, i32, %struct.vop_win*, %struct.TYPE_2__*, i64, i32*, i32 }
%struct.vop_win = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to get pm runtime: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to attach dma mapping, %d\0A\00", align 1
@common = common dso_local global i32 0, align 4
@standby = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_crtc_state*)* @vop_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_enable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca %struct.vop*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vop_win*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = call %struct.vop* @to_vop(%struct.drm_crtc* %10)
  store %struct.vop* %11, %struct.vop** %6, align 8
  %12 = load %struct.vop*, %struct.vop** %6, align 8
  %13 = getelementptr inbounds %struct.vop, %struct.vop* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.vop*, %struct.vop** %6, align 8
  %20 = getelementptr inbounds %struct.vop, %struct.vop* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @DRM_DEV_ERROR(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %155

25:                                               ; preds = %2
  %26 = load %struct.vop*, %struct.vop** %6, align 8
  %27 = call i32 @vop_core_clks_enable(%struct.vop* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %149

34:                                               ; preds = %25
  %35 = load %struct.vop*, %struct.vop** %6, align 8
  %36 = getelementptr inbounds %struct.vop, %struct.vop* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_enable(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %146

45:                                               ; preds = %34
  %46 = load %struct.vop*, %struct.vop** %6, align 8
  %47 = getelementptr inbounds %struct.vop, %struct.vop* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.vop*, %struct.vop** %6, align 8
  %50 = getelementptr inbounds %struct.vop, %struct.vop* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @rockchip_drm_dma_attach_device(i32 %48, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.vop*, %struct.vop** %6, align 8
  %57 = getelementptr inbounds %struct.vop, %struct.vop* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @DRM_DEV_ERROR(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %141

61:                                               ; preds = %45
  %62 = load %struct.vop*, %struct.vop** %6, align 8
  %63 = getelementptr inbounds %struct.vop, %struct.vop* %62, i32 0, i32 4
  %64 = call i32 @spin_lock(i32* %63)
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %87, %61
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.vop*, %struct.vop** %6, align 8
  %68 = getelementptr inbounds %struct.vop, %struct.vop* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.vop*, %struct.vop** %6, align 8
  %73 = getelementptr inbounds %struct.vop, %struct.vop* %72, i32 0, i32 8
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sdiv i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vop*, %struct.vop** %6, align 8
  %81 = getelementptr inbounds %struct.vop, %struct.vop* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call i32 @writel_relaxed(i32 %79, i64 %85)
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %8, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %92 = icmp ne %struct.drm_crtc_state* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %95 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %93, %90
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.vop*, %struct.vop** %6, align 8
  %102 = getelementptr inbounds %struct.vop, %struct.vop* %101, i32 0, i32 6
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %100, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %99
  %108 = load %struct.vop*, %struct.vop** %6, align 8
  %109 = getelementptr inbounds %struct.vop, %struct.vop* %108, i32 0, i32 5
  %110 = load %struct.vop_win*, %struct.vop_win** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.vop_win, %struct.vop_win* %110, i64 %112
  store %struct.vop_win* %113, %struct.vop_win** %9, align 8
  %114 = load %struct.vop*, %struct.vop** %6, align 8
  %115 = load %struct.vop_win*, %struct.vop_win** %9, align 8
  %116 = call i32 @vop_win_disable(%struct.vop* %114, %struct.vop_win* %115)
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %99

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %93
  %122 = load %struct.vop*, %struct.vop** %6, align 8
  %123 = getelementptr inbounds %struct.vop, %struct.vop* %122, i32 0, i32 4
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.vop*, %struct.vop** %6, align 8
  %126 = call i32 @vop_cfg_done(%struct.vop* %125)
  %127 = load %struct.vop*, %struct.vop** %6, align 8
  %128 = getelementptr inbounds %struct.vop, %struct.vop* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load %struct.vop*, %struct.vop** %6, align 8
  %130 = getelementptr inbounds %struct.vop, %struct.vop* %129, i32 0, i32 4
  %131 = call i32 @spin_lock(i32* %130)
  %132 = load %struct.vop*, %struct.vop** %6, align 8
  %133 = load i32, i32* @common, align 4
  %134 = load i32, i32* @standby, align 4
  %135 = call i32 @VOP_REG_SET(%struct.vop* %132, i32 %133, i32 %134, i32 1)
  %136 = load %struct.vop*, %struct.vop** %6, align 8
  %137 = getelementptr inbounds %struct.vop, %struct.vop* %136, i32 0, i32 4
  %138 = call i32 @spin_unlock(i32* %137)
  %139 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %140 = call i32 @drm_crtc_vblank_on(%struct.drm_crtc* %139)
  store i32 0, i32* %3, align 4
  br label %155

141:                                              ; preds = %55
  %142 = load %struct.vop*, %struct.vop** %6, align 8
  %143 = getelementptr inbounds %struct.vop, %struct.vop* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @clk_disable(i32 %144)
  br label %146

146:                                              ; preds = %141, %44
  %147 = load %struct.vop*, %struct.vop** %6, align 8
  %148 = call i32 @vop_core_clks_disable(%struct.vop* %147)
  br label %149

149:                                              ; preds = %146, %33
  %150 = load %struct.vop*, %struct.vop** %6, align 8
  %151 = getelementptr inbounds %struct.vop, %struct.vop* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @pm_runtime_put_sync(i32 %152)
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %149, %121, %18
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.vop* @to_vop(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @vop_core_clks_enable(%struct.vop*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @rockchip_drm_dma_attach_device(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @vop_win_disable(%struct.vop*, %struct.vop_win*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vop_cfg_done(%struct.vop*) #1

declare dso_local i32 @VOP_REG_SET(%struct.vop*, i32, i32, i32) #1

declare dso_local i32 @drm_crtc_vblank_on(%struct.drm_crtc*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @vop_core_clks_disable(%struct.vop*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
