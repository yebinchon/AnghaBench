; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_update_num_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_update_num_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_straps = type { i64, i32, i32 }
%struct.audio_support = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"DC: unexpected audio fuse!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource_straps*, i32*, %struct.audio_support*)* @update_num_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_num_audio(%struct.resource_straps* %0, i32* %1, %struct.audio_support* %2) #0 {
  %4 = alloca %struct.resource_straps*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.audio_support*, align 8
  store %struct.resource_straps* %0, %struct.resource_straps** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.audio_support* %2, %struct.audio_support** %6, align 8
  %7 = load %struct.audio_support*, %struct.audio_support** %6, align 8
  %8 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.audio_support*, %struct.audio_support** %6, align 8
  %10 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.audio_support*, %struct.audio_support** %6, align 8
  %12 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.resource_straps*, %struct.resource_straps** %4, align 8
  %14 = getelementptr inbounds %struct.resource_straps, %struct.resource_straps* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.resource_straps*, %struct.resource_straps** %4, align 8
  %19 = getelementptr inbounds %struct.resource_straps, %struct.resource_straps* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.audio_support*, %struct.audio_support** %6, align 8
  %25 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load %struct.audio_support*, %struct.audio_support** %6, align 8
  %27 = getelementptr inbounds %struct.audio_support, %struct.audio_support* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %17
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.resource_straps*, %struct.resource_straps** %4, align 8
  %31 = getelementptr inbounds %struct.resource_straps, %struct.resource_straps* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %36 [
    i32 0, label %33
    i32 1, label %34
  ]

33:                                               ; preds = %29
  br label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  store i32 1, i32* %35, align 4
  br label %38

36:                                               ; preds = %29
  %37 = call i32 @DC_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %34, %33
  ret void
}

declare dso_local i32 @DC_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
