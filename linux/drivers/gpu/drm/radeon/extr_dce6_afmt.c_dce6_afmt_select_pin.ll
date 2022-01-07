; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_afmt_select_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_afmt_select_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@AFMT_AUDIO_SRC_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce6_afmt_select_pin(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.radeon_device*, %struct.radeon_device** %9, align 8
  store %struct.radeon_device* %10, %struct.radeon_device** %3, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %11)
  store %struct.radeon_encoder* %12, %struct.radeon_encoder** %4, align 8
  %13 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %13, i32 0, i32 0
  %15 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %14, align 8
  store %struct.radeon_encoder_atom_dig* %15, %struct.radeon_encoder_atom_dig** %5, align 8
  %16 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %17 = icmp ne %struct.radeon_encoder_atom_dig* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %18, %1
  br label %44

29:                                               ; preds = %23
  %30 = load i64, i64* @AFMT_AUDIO_SRC_CONTROL, align 8
  %31 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %30, %35
  %37 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AFMT_AUDIO_SRC_SELECT(i32 %41)
  %43 = call i32 @WREG32(i64 %36, i32 %42)
  br label %44

44:                                               ; preds = %29, %28
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @AFMT_AUDIO_SRC_SELECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
