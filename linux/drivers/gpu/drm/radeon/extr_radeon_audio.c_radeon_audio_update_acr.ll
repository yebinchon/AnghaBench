; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_update_acr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_update_acr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_hdmi_acr = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_4__*, %struct.radeon_encoder_atom_dig* }
%struct.TYPE_4__ = type { i32 (%struct.drm_encoder*, i32, %struct.radeon_hdmi_acr*)* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_audio_update_acr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_audio_update_acr(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_hdmi_acr*, align 8
  %6 = alloca %struct.radeon_encoder*, align 8
  %7 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.radeon_hdmi_acr* @radeon_audio_acr(i32 %8)
  store %struct.radeon_hdmi_acr* %9, %struct.radeon_hdmi_acr** %5, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %10)
  store %struct.radeon_encoder* %11, %struct.radeon_encoder** %6, align 8
  %12 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %13 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %12, i32 0, i32 1
  %14 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %13, align 8
  store %struct.radeon_encoder_atom_dig* %14, %struct.radeon_encoder_atom_dig** %7, align 8
  %15 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %16 = icmp ne %struct.radeon_encoder_atom_dig* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  br label %49

23:                                               ; preds = %17
  %24 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.drm_encoder*, i32, %struct.radeon_hdmi_acr*)*, i32 (%struct.drm_encoder*, i32, %struct.radeon_hdmi_acr*)** %32, align 8
  %34 = icmp ne i32 (%struct.drm_encoder*, i32, %struct.radeon_hdmi_acr*)* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.radeon_encoder*, %struct.radeon_encoder** %6, align 8
  %37 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.drm_encoder*, i32, %struct.radeon_hdmi_acr*)*, i32 (%struct.drm_encoder*, i32, %struct.radeon_hdmi_acr*)** %39, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %42 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %7, align 8
  %43 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.radeon_hdmi_acr*, %struct.radeon_hdmi_acr** %5, align 8
  %48 = call i32 %40(%struct.drm_encoder* %41, i32 %46, %struct.radeon_hdmi_acr* %47)
  br label %49

49:                                               ; preds = %22, %35, %28, %23
  ret void
}

declare dso_local %struct.radeon_hdmi_acr* @radeon_audio_acr(i32) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
