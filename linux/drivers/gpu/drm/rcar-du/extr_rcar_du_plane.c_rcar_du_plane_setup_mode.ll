; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32 }
%struct.rcar_du_plane_state = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PnALPHAR = common dso_local global i32 0, align 4
@PnALPHAR_ABIT_0 = common dso_local global i32 0, align 4
@PnALPHAR_ABIT_X = common dso_local global i32 0, align 4
@PnMR_BM_MD = common dso_local global i32 0, align 4
@RCAR_DU_COLORKEY_MASK = common dso_local global i32 0, align 4
@RCAR_DU_COLORKEY_NONE = common dso_local global i32 0, align 4
@PnMR_SPIM_TP_OFF = common dso_local global i32 0, align 4
@DRM_FORMAT_YUYV = common dso_local global i32 0, align 4
@PnMR_YCDF_YUYV = common dso_local global i32 0, align 4
@PnMR = common dso_local global i32 0, align 4
@PnTC2R = common dso_local global i32 0, align 4
@PnTC3R = common dso_local global i32 0, align 4
@PnTC3R_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*, i32, %struct.rcar_du_plane_state*)* @rcar_du_plane_setup_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_plane_setup_mode(%struct.rcar_du_group* %0, i32 %1, %struct.rcar_du_plane_state* %2) #0 {
  %4 = alloca %struct.rcar_du_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcar_du_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rcar_du_plane_state* %2, %struct.rcar_du_plane_state** %6, align 8
  %9 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %10 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 129
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PnALPHAR, align 4
  %19 = load i32, i32* @PnALPHAR_ABIT_0, align 4
  %20 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %16, i32 %17, i32 %18, i32 %19)
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PnALPHAR, align 4
  %25 = load i32, i32* @PnALPHAR_ABIT_X, align 4
  %26 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %27 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 8
  %31 = or i32 %25, %30
  %32 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %22, i32 %23, i32 %24, i32 %31)
  br label %33

33:                                               ; preds = %21, %15
  %34 = load i32, i32* @PnMR_BM_MD, align 4
  %35 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %36 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %42 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RCAR_DU_COLORKEY_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @RCAR_DU_COLORKEY_NONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load i32, i32* @PnMR_SPIM_TP_OFF, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %33
  %53 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %54 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DRM_FORMAT_YUYV, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @PnMR_YCDF_YUYV, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PnMR, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %65, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %71 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %132 [
    i32 130, label %75
    i32 132, label %98
    i32 129, label %98
    i32 128, label %121
    i32 131, label %121
  ]

75:                                               ; preds = %64
  %76 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %77 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 16252928
  %80 = ashr i32 %79, 8
  %81 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %82 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 64512
  %85 = ashr i32 %84, 5
  %86 = or i32 %80, %85
  %87 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %88 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 248
  %91 = ashr i32 %90, 3
  %92 = or i32 %86, %91
  store i32 %92, i32* %7, align 4
  %93 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @PnTC2R, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %93, i32 %94, i32 %95, i32 %96)
  br label %132

98:                                               ; preds = %64, %64
  %99 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %100 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, 16252928
  %103 = ashr i32 %102, 9
  %104 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %105 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 63488
  %108 = ashr i32 %107, 6
  %109 = or i32 %103, %108
  %110 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %111 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, 248
  %114 = ashr i32 %113, 3
  %115 = or i32 %109, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @PnTC2R, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %116, i32 %117, i32 %118, i32 %119)
  br label %132

121:                                              ; preds = %64, %64
  %122 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @PnTC3R, align 4
  %125 = load i32, i32* @PnTC3R_CODE, align 4
  %126 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %127 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, 16777215
  %130 = or i32 %125, %129
  %131 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %122, i32 %123, i32 %124, i32 %130)
  br label %132

132:                                              ; preds = %64, %121, %98, %75
  ret void
}

declare dso_local i32 @rcar_du_plane_write(%struct.rcar_du_group*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
