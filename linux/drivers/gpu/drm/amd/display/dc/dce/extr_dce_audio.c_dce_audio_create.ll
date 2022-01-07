; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_audio_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_audio.c_dce_audio_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.dce_audio_registers = type { i32 }
%struct.dce_audio_shift = type { i32 }
%struct.dce_audio_mask = type { i32 }
%struct.dce_audio = type { %struct.audio, %struct.dce_audio_mask*, %struct.dce_audio_shift*, %struct.dce_audio_registers* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.audio* @dce_audio_create(%struct.dc_context* %0, i32 %1, %struct.dce_audio_registers* %2, %struct.dce_audio_shift* %3, %struct.dce_audio_mask* %4) #0 {
  %6 = alloca %struct.audio*, align 8
  %7 = alloca %struct.dc_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce_audio_registers*, align 8
  %10 = alloca %struct.dce_audio_shift*, align 8
  %11 = alloca %struct.dce_audio_mask*, align 8
  %12 = alloca %struct.dce_audio*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dce_audio_registers* %2, %struct.dce_audio_registers** %9, align 8
  store %struct.dce_audio_shift* %3, %struct.dce_audio_shift** %10, align 8
  store %struct.dce_audio_mask* %4, %struct.dce_audio_mask** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dce_audio* @kzalloc(i32 48, i32 %13)
  store %struct.dce_audio* %14, %struct.dce_audio** %12, align 8
  %15 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %16 = icmp eq %struct.dce_audio* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %19 = call i32 @ASSERT_CRITICAL(%struct.dce_audio* %18)
  store %struct.audio* null, %struct.audio** %6, align 8
  br label %43

20:                                               ; preds = %5
  %21 = load %struct.dc_context*, %struct.dc_context** %7, align 8
  %22 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %23 = getelementptr inbounds %struct.dce_audio, %struct.dce_audio* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.audio, %struct.audio* %23, i32 0, i32 2
  store %struct.dc_context* %21, %struct.dc_context** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %27 = getelementptr inbounds %struct.dce_audio, %struct.dce_audio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.audio, %struct.audio* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %30 = getelementptr inbounds %struct.dce_audio, %struct.dce_audio* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.audio, %struct.audio* %30, i32 0, i32 1
  store i32* @funcs, i32** %31, align 8
  %32 = load %struct.dce_audio_registers*, %struct.dce_audio_registers** %9, align 8
  %33 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %34 = getelementptr inbounds %struct.dce_audio, %struct.dce_audio* %33, i32 0, i32 3
  store %struct.dce_audio_registers* %32, %struct.dce_audio_registers** %34, align 8
  %35 = load %struct.dce_audio_shift*, %struct.dce_audio_shift** %10, align 8
  %36 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %37 = getelementptr inbounds %struct.dce_audio, %struct.dce_audio* %36, i32 0, i32 2
  store %struct.dce_audio_shift* %35, %struct.dce_audio_shift** %37, align 8
  %38 = load %struct.dce_audio_mask*, %struct.dce_audio_mask** %11, align 8
  %39 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %40 = getelementptr inbounds %struct.dce_audio, %struct.dce_audio* %39, i32 0, i32 1
  store %struct.dce_audio_mask* %38, %struct.dce_audio_mask** %40, align 8
  %41 = load %struct.dce_audio*, %struct.dce_audio** %12, align 8
  %42 = getelementptr inbounds %struct.dce_audio, %struct.dce_audio* %41, i32 0, i32 0
  store %struct.audio* %42, %struct.audio** %6, align 8
  br label %43

43:                                               ; preds = %20, %17
  %44 = load %struct.audio*, %struct.audio** %6, align 8
  ret %struct.audio* %44
}

declare dso_local %struct.dce_audio* @kzalloc(i32, i32) #1

declare dso_local i32 @ASSERT_CRITICAL(%struct.dce_audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
