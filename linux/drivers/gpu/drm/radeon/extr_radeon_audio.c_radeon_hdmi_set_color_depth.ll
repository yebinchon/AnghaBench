; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_hdmi_set_color_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_hdmi_set_color_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i64 }
%struct.radeon_encoder = type { %struct.TYPE_3__*, %struct.radeon_encoder_atom_dig* }
%struct.TYPE_3__ = type { i32 (%struct.drm_encoder*, i32, i32)* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @radeon_hdmi_set_color_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_hdmi_set_color_depth(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  store i32 8, i32* %3, align 4
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %7)
  store %struct.radeon_encoder* %8, %struct.radeon_encoder** %4, align 8
  %9 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %9, i32 0, i32 1
  %11 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  store %struct.radeon_encoder_atom_dig* %11, %struct.radeon_encoder_atom_dig** %5, align 8
  %12 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %13 = icmp ne %struct.radeon_encoder_atom_dig* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %16 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %59

20:                                               ; preds = %14
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %27 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.radeon_crtc* @to_radeon_crtc(i64 %28)
  store %struct.radeon_crtc* %29, %struct.radeon_crtc** %6, align 8
  %30 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.drm_encoder*, i32, i32)*, i32 (%struct.drm_encoder*, i32, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.drm_encoder*, i32, i32)* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.drm_encoder*, i32, i32)*, i32 (%struct.drm_encoder*, i32, i32)** %49, align 8
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %52 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 %50(%struct.drm_encoder* %51, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %19, %45, %38, %33
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
