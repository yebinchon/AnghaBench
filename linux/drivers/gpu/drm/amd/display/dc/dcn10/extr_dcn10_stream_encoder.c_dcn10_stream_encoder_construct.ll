; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_dcn10_stream_encoder_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_stream_encoder.c_dcn10_stream_encoder_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_stream_encoder = type { %struct.dcn10_stream_encoder_mask*, %struct.dcn10_stream_encoder_shift*, %struct.dcn10_stream_enc_registers*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dc_bios*, %struct.dc_context*, i32* }
%struct.dc_context = type { i32 }
%struct.dc_bios = type { i32 }
%struct.dcn10_stream_enc_registers = type { i32 }
%struct.dcn10_stream_encoder_shift = type { i32 }
%struct.dcn10_stream_encoder_mask = type { i32 }

@dcn10_str_enc_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_stream_encoder_construct(%struct.dcn10_stream_encoder* %0, %struct.dc_context* %1, %struct.dc_bios* %2, i32 %3, %struct.dcn10_stream_enc_registers* %4, %struct.dcn10_stream_encoder_shift* %5, %struct.dcn10_stream_encoder_mask* %6) #0 {
  %8 = alloca %struct.dcn10_stream_encoder*, align 8
  %9 = alloca %struct.dc_context*, align 8
  %10 = alloca %struct.dc_bios*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dcn10_stream_enc_registers*, align 8
  %13 = alloca %struct.dcn10_stream_encoder_shift*, align 8
  %14 = alloca %struct.dcn10_stream_encoder_mask*, align 8
  store %struct.dcn10_stream_encoder* %0, %struct.dcn10_stream_encoder** %8, align 8
  store %struct.dc_context* %1, %struct.dc_context** %9, align 8
  store %struct.dc_bios* %2, %struct.dc_bios** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.dcn10_stream_enc_registers* %4, %struct.dcn10_stream_enc_registers** %12, align 8
  store %struct.dcn10_stream_encoder_shift* %5, %struct.dcn10_stream_encoder_shift** %13, align 8
  store %struct.dcn10_stream_encoder_mask* %6, %struct.dcn10_stream_encoder_mask** %14, align 8
  %15 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %8, align 8
  %16 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32* @dcn10_str_enc_funcs, i32** %17, align 8
  %18 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %19 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %8, align 8
  %20 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store %struct.dc_context* %18, %struct.dc_context** %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %8, align 8
  %24 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %27 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %8, align 8
  %28 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store %struct.dc_bios* %26, %struct.dc_bios** %29, align 8
  %30 = load %struct.dcn10_stream_enc_registers*, %struct.dcn10_stream_enc_registers** %12, align 8
  %31 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %8, align 8
  %32 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %31, i32 0, i32 2
  store %struct.dcn10_stream_enc_registers* %30, %struct.dcn10_stream_enc_registers** %32, align 8
  %33 = load %struct.dcn10_stream_encoder_shift*, %struct.dcn10_stream_encoder_shift** %13, align 8
  %34 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %8, align 8
  %35 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %34, i32 0, i32 1
  store %struct.dcn10_stream_encoder_shift* %33, %struct.dcn10_stream_encoder_shift** %35, align 8
  %36 = load %struct.dcn10_stream_encoder_mask*, %struct.dcn10_stream_encoder_mask** %14, align 8
  %37 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %8, align 8
  %38 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %37, i32 0, i32 0
  store %struct.dcn10_stream_encoder_mask* %36, %struct.dcn10_stream_encoder_mask** %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
