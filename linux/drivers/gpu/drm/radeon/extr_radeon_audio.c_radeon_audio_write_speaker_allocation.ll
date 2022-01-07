; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_write_speaker_allocation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_write_speaker_allocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_encoder*, i32*, i32)* }

@.str = private unnamed_addr constant [49 x i8] c"Couldn't read Speaker Allocation Data Block: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @radeon_audio_write_speaker_allocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_audio_write_speaker_allocation(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %7)
  store %struct.drm_connector* %8, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %9)
  store %struct.radeon_encoder* %10, %struct.radeon_encoder** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = icmp ne %struct.drm_connector* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = call i32 @radeon_connector_edid(%struct.drm_connector* %15)
  %17 = call i32 @drm_edid_to_speaker_allocation(i32 %16, i32** %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.drm_encoder*, i32*, i32)*, i32 (%struct.drm_encoder*, i32*, i32)** %32, align 8
  %34 = icmp ne i32 (%struct.drm_encoder*, i32*, i32)* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %37 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.drm_encoder*, i32*, i32)*, i32 (%struct.drm_encoder*, i32*, i32)** %39, align 8
  %41 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 %40(%struct.drm_encoder* %41, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %28, %23
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @kfree(i32* %46)
  br label %48

48:                                               ; preds = %45, %13
  ret void
}

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @drm_edid_to_speaker_allocation(i32, i32**) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
