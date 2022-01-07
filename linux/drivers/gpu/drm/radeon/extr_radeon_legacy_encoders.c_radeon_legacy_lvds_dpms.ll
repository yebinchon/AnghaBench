; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_lvds_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_encoders.c_radeon_legacy_lvds_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }
%struct.radeon_encoder = type { %struct.radeon_encoder_lvds* }
%struct.radeon_encoder_lvds = type { i32 }
%struct.radeon_encoder_atom_dig = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_legacy_lvds_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_lvds_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %8 = alloca %struct.radeon_encoder_lvds*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %5, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %15 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %14)
  store %struct.radeon_encoder* %15, %struct.radeon_encoder** %6, align 8
  %16 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %18 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %17, i32 0, i32 0
  %19 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %18, align 8
  %20 = icmp ne %struct.radeon_encoder_lvds* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %27, i32 0, i32 0
  %29 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %28, align 8
  %30 = bitcast %struct.radeon_encoder_lvds* %29 to %struct.radeon_encoder_atom_dig*
  store %struct.radeon_encoder_atom_dig* %30, %struct.radeon_encoder_atom_dig** %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %33 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %41

34:                                               ; preds = %21
  %35 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %35, i32 0, i32 0
  %37 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %36, align 8
  store %struct.radeon_encoder_lvds* %37, %struct.radeon_encoder_lvds** %8, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.radeon_encoder_lvds*, %struct.radeon_encoder_lvds** %8, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder_lvds, %struct.radeon_encoder_lvds* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %26
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @radeon_legacy_lvds_update(%struct.drm_encoder* %43, i32 %44)
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @radeon_legacy_lvds_update(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
