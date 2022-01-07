; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_format_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_format_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32 }
%struct.rcar_du_plane_state = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@PnDDCR2_CODE = common dso_local global i32 0, align 4
@DRM_FORMAT_NV12 = common dso_local global i64 0, align 8
@DRM_FORMAT_NV21 = common dso_local global i64 0, align 8
@PnDDCR2_Y420 = common dso_local global i32 0, align 4
@PnDDCR2_NV21 = common dso_local global i32 0, align 4
@PnDDCR2_DIVU = common dso_local global i32 0, align 4
@PnDDCR2_DIVY = common dso_local global i32 0, align 4
@PnDDCR2 = common dso_local global i32 0, align 4
@PnDDCR4_CODE = common dso_local global i32 0, align 4
@RCAR_DU_PLANE_MEMORY = common dso_local global i64 0, align 8
@PnDDCR4_VSPS = common dso_local global i32 0, align 4
@PnDDCR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*, i32, %struct.rcar_du_plane_state*)* @rcar_du_plane_setup_format_gen2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_plane_setup_format_gen2(%struct.rcar_du_group* %0, i32 %1, %struct.rcar_du_plane_state* %2) #0 {
  %4 = alloca %struct.rcar_du_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcar_du_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rcar_du_plane_state* %2, %struct.rcar_du_plane_state** %6, align 8
  %9 = load i32, i32* @PnDDCR2_CODE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %13 = call i32 @rcar_du_plane_setup_mode(%struct.rcar_du_group* %10, i32 %11, %struct.rcar_du_plane_state* %12)
  %14 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %15 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %67

20:                                               ; preds = %3
  %21 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %22 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %20
  %27 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %28 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DRM_FORMAT_NV12, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %36 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DRM_FORMAT_NV21, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @PnDDCR2_Y420, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %48 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DRM_FORMAT_NV21, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @PnDDCR2_NV21, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i32, i32* @PnDDCR2_DIVU, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %66

62:                                               ; preds = %20
  %63 = load i32, i32* @PnDDCR2_DIVY, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @PnDDCR2, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %74 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PnDDCR4_CODE, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %81 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RCAR_DU_PLANE_MEMORY, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %67
  %86 = load i32, i32* @PnDDCR4_VSPS, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %67
  %90 = load %struct.rcar_du_group*, %struct.rcar_du_group** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @PnDDCR4, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %90, i32 %91, i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @rcar_du_plane_setup_mode(%struct.rcar_du_group*, i32, %struct.rcar_du_plane_state*) #1

declare dso_local i32 @rcar_du_plane_write(%struct.rcar_du_group*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
