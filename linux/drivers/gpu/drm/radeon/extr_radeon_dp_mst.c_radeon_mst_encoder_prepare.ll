; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_mst_encoder_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_dp_mst.c_radeon_mst_encoder_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_connector = type { i32 }
%struct.radeon_encoder = type { i32, i32, %struct.radeon_encoder_mst* }
%struct.radeon_encoder_mst = type { i32, i32, %struct.radeon_encoder* }
%struct.radeon_encoder_atom_dig = type { i32, i32, %struct.radeon_encoder* }

@.str = private unnamed_addr constant [29 x i8] c"failed to find connector %p\0A\00", align 1
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @radeon_mst_encoder_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_mst_encoder_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.radeon_connector*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_encoder_mst*, align 8
  %7 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call %struct.radeon_connector* @radeon_mst_find_connector(%struct.drm_encoder* %8)
  store %struct.radeon_connector* %9, %struct.radeon_connector** %3, align 8
  %10 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %11 = icmp ne %struct.radeon_connector* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = ptrtoint %struct.drm_encoder* %13 to i32
  %15 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %4, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %20 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %21 = call i32 @radeon_mst_encoder_dpms(%struct.drm_encoder* %19, i32 %20)
  %22 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %23 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %22, i32 0, i32 2
  %24 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %23, align 8
  store %struct.radeon_encoder_mst* %24, %struct.radeon_encoder_mst** %6, align 8
  %25 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %25, i32 0, i32 2
  %27 = load %struct.radeon_encoder*, %struct.radeon_encoder** %26, align 8
  store %struct.radeon_encoder* %27, %struct.radeon_encoder** %5, align 8
  %28 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %29 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %28, i32 0, i32 2
  %30 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %29, align 8
  %31 = bitcast %struct.radeon_encoder_mst* %30 to %struct.radeon_encoder_atom_dig*
  store %struct.radeon_encoder_atom_dig* %31, %struct.radeon_encoder_atom_dig** %7, align 8
  %32 = load %struct.radeon_connector*, %struct.radeon_connector** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %58

41:                                               ; preds = %16
  %42 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %42, i32 0, i32 1
  %44 = call i32 @radeon_atom_pick_dig_encoder(i32* %43, i32 -1)
  %45 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %46 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %48 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @radeon_atom_set_enc_offset(i32 %49)
  %51 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %54 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %55 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @atombios_set_mst_encoder_crtc_source(%struct.drm_encoder* %53, i32 %56)
  br label %58

58:                                               ; preds = %41, %16
  %59 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %60 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %58, %12
  ret void
}

declare dso_local %struct.radeon_connector* @radeon_mst_find_connector(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_mst_encoder_dpms(%struct.drm_encoder*, i32) #1

declare dso_local i32 @radeon_atom_pick_dig_encoder(i32*, i32) #1

declare dso_local i32 @radeon_atom_set_enc_offset(i32) #1

declare dso_local i32 @atombios_set_mst_encoder_crtc_source(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
