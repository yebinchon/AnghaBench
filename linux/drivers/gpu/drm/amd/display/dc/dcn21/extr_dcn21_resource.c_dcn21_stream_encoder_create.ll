; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_stream_encoder_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_stream_encoder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i32 }
%struct.dc_context = type { i32 }
%struct.dcn10_stream_encoder = type { %struct.stream_encoder }

@GFP_KERNEL = common dso_local global i32 0, align 4
@stream_enc_regs = common dso_local global i32* null, align 8
@se_shift = common dso_local global i32 0, align 4
@se_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stream_encoder* @dcn21_stream_encoder_create(i32 %0, %struct.dc_context* %1) #0 {
  %3 = alloca %struct.stream_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dcn10_stream_encoder*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dc_context* %1, %struct.dc_context** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dcn10_stream_encoder* @kzalloc(i32 4, i32 %7)
  store %struct.dcn10_stream_encoder* %8, %struct.dcn10_stream_encoder** %6, align 8
  %9 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %6, align 8
  %10 = icmp ne %struct.dcn10_stream_encoder* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.stream_encoder* null, %struct.stream_encoder** %3, align 8
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %6, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %15 = load %struct.dc_context*, %struct.dc_context** %5, align 8
  %16 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** @stream_enc_regs, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @dcn20_stream_encoder_construct(%struct.dcn10_stream_encoder* %13, %struct.dc_context* %14, i32 %17, i32 %18, i32* %22, i32* @se_shift, i32* @se_mask)
  %24 = load %struct.dcn10_stream_encoder*, %struct.dcn10_stream_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.dcn10_stream_encoder, %struct.dcn10_stream_encoder* %24, i32 0, i32 0
  store %struct.stream_encoder* %25, %struct.stream_encoder** %3, align 8
  br label %26

26:                                               ; preds = %12, %11
  %27 = load %struct.stream_encoder*, %struct.stream_encoder** %3, align 8
  ret %struct.stream_encoder* %27
}

declare dso_local %struct.dcn10_stream_encoder* @kzalloc(i32, i32) #1

declare dso_local i32 @dcn20_stream_encoder_construct(%struct.dcn10_stream_encoder*, %struct.dc_context*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
