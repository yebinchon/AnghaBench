; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_set_mute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_set_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_3__*, %struct.radeon_encoder_atom_dig* }
%struct.TYPE_3__ = type { i32 (%struct.drm_encoder*, i32, i32)* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_audio_set_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_audio_set_mute(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %8 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %7)
  store %struct.radeon_encoder* %8, %struct.radeon_encoder** %5, align 8
  %9 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %9, i32 0, i32 1
  %11 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %10, align 8
  store %struct.radeon_encoder_atom_dig* %11, %struct.radeon_encoder_atom_dig** %6, align 8
  %12 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %13 = icmp ne %struct.radeon_encoder_atom_dig* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  br label %46

20:                                               ; preds = %14
  %21 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.drm_encoder*, i32, i32)*, i32 (%struct.drm_encoder*, i32, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.drm_encoder*, i32, i32)* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.drm_encoder*, i32, i32)*, i32 (%struct.drm_encoder*, i32, i32)** %36, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %39 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 %37(%struct.drm_encoder* %38, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %19, %32, %25, %20
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
