; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_write_sad_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_audio.c_radeon_audio_write_sad_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_encoder*, %struct.cea_sad*, i32)* }
%struct.cea_sad = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Couldn't read SADs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @radeon_audio_write_sad_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_audio_write_sad_regs(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.radeon_encoder*, align 8
  %5 = alloca %struct.cea_sad*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %8 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %7)
  store %struct.drm_connector* %8, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %10 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %9)
  store %struct.radeon_encoder* %10, %struct.radeon_encoder** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = icmp ne %struct.drm_connector* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %16 = call i32 @radeon_connector_edid(%struct.drm_connector* %15)
  %17 = call i32 @drm_edid_to_sad(i32 %16, %struct.cea_sad** %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %53

23:                                               ; preds = %14
  %24 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %25 = icmp ne %struct.cea_sad* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %23
  %34 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.drm_encoder*, %struct.cea_sad*, i32)*, i32 (%struct.drm_encoder*, %struct.cea_sad*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.drm_encoder*, %struct.cea_sad*, i32)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load %struct.radeon_encoder*, %struct.radeon_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.drm_encoder*, %struct.cea_sad*, i32)*, i32 (%struct.drm_encoder*, %struct.cea_sad*, i32)** %44, align 8
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %47 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 %45(%struct.drm_encoder* %46, %struct.cea_sad* %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %33, %23
  %51 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %52 = call i32 @kfree(%struct.cea_sad* %51)
  br label %53

53:                                               ; preds = %50, %20, %13
  ret void
}

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @drm_edid_to_sad(i32, %struct.cea_sad**) #1

declare dso_local i32 @radeon_connector_edid(%struct.drm_connector*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.cea_sad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
