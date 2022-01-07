; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/virtual/extr_virtual_stream_encoder.c_virtual_stream_encoder_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/virtual/extr_virtual_stream_encoder.c_virtual_stream_encoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stream_encoder* @virtual_stream_encoder_create(%struct.dc_context* %0, %struct.dc_bios* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.dc_bios*, align 8
  %6 = alloca %struct.stream_encoder*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.dc_bios* %1, %struct.dc_bios** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.stream_encoder* @kzalloc(i32 4, i32 %7)
  store %struct.stream_encoder* %8, %struct.stream_encoder** %6, align 8
  %9 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  %10 = icmp ne %struct.stream_encoder* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.stream_encoder* null, %struct.stream_encoder** %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %15 = load %struct.dc_bios*, %struct.dc_bios** %5, align 8
  %16 = call i64 @virtual_stream_encoder_construct(%struct.stream_encoder* %13, %struct.dc_context* %14, %struct.dc_bios* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  store %struct.stream_encoder* %19, %struct.stream_encoder** %3, align 8
  br label %24

20:                                               ; preds = %12
  %21 = call i32 (...) @BREAK_TO_DEBUGGER()
  %22 = load %struct.stream_encoder*, %struct.stream_encoder** %6, align 8
  %23 = call i32 @kfree(%struct.stream_encoder* %22)
  store %struct.stream_encoder* null, %struct.stream_encoder** %3, align 8
  br label %24

24:                                               ; preds = %20, %18, %11
  %25 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  ret %struct.stream_encoder* %25
}

declare dso_local %struct.stream_encoder* @kzalloc(i32, i32) #1

declare dso_local i64 @virtual_stream_encoder_construct(%struct.stream_encoder*, %struct.dc_context*, %struct.dc_bios*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @kfree(%struct.stream_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
