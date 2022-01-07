; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_mst_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_mst_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_encoder_mst = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_mst* }

@.str = private unnamed_addr constant [61 x i8] c"setting active device to %08x from %08x %08x for encoder %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dig clock %p %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @radeon_mst_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_mst_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.radeon_encoder_mst*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_connector_atom_dig*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %11)
  store %struct.radeon_encoder* %12, %struct.radeon_encoder** %8, align 8
  store i32 24, i32* %10, align 4
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 0
  %15 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %14, align 8
  store %struct.radeon_encoder_mst* %15, %struct.radeon_encoder_mst** %7, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @drm_dp_calc_pbn_mode(i32 %18, i32 %19)
  %21 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %27, %32
  %34 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %39 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %44 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %49 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %54 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47, i32 %52, i32 %58)
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %61 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %60, i32 0)
  %62 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %7, align 8
  %63 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %65, align 8
  store %struct.radeon_connector_atom_dig* %66, %struct.radeon_connector_atom_dig** %9, align 8
  %67 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %68 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @drm_dp_max_lane_count(i32 %69)
  %71 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %72 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %74 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @drm_dp_max_link_rate(i32 %75)
  %77 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %78 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %80 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %81 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %9, align 8
  %84 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.radeon_connector_atom_dig* %79, i32 %82, i32 %85)
  ret i32 1
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @drm_dp_calc_pbn_mode(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @drm_dp_max_lane_count(i32) #1

declare dso_local i32 @drm_dp_max_link_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
