; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_dce120_ipp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_dce120_ipp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_pixel_processor = type { i32 }
%struct.dc_context = type { i32 }
%struct.dce_ipp = type { %struct.input_pixel_processor }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ipp_regs = common dso_local global i32* null, align 8
@ipp_shift = common dso_local global i32 0, align 4
@ipp_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_pixel_processor* (%struct.dc_context*, i64)* @dce120_ipp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_pixel_processor* @dce120_ipp_create(%struct.dc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.input_pixel_processor*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dce_ipp*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dce_ipp* @kzalloc(i32 4, i32 %7)
  store %struct.dce_ipp* %8, %struct.dce_ipp** %6, align 8
  %9 = load %struct.dce_ipp*, %struct.dce_ipp** %6, align 8
  %10 = icmp ne %struct.dce_ipp* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (...) @BREAK_TO_DEBUGGER()
  store %struct.input_pixel_processor* null, %struct.input_pixel_processor** %3, align 8
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.dce_ipp*, %struct.dce_ipp** %6, align 8
  %15 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32*, i32** @ipp_regs, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @dce_ipp_construct(%struct.dce_ipp* %14, %struct.dc_context* %15, i64 %16, i32* %19, i32* @ipp_shift, i32* @ipp_mask)
  %21 = load %struct.dce_ipp*, %struct.dce_ipp** %6, align 8
  %22 = getelementptr inbounds %struct.dce_ipp, %struct.dce_ipp* %21, i32 0, i32 0
  store %struct.input_pixel_processor* %22, %struct.input_pixel_processor** %3, align 8
  br label %23

23:                                               ; preds = %13, %11
  %24 = load %struct.input_pixel_processor*, %struct.input_pixel_processor** %3, align 8
  ret %struct.input_pixel_processor* %24
}

declare dso_local %struct.dce_ipp* @kzalloc(i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @dce_ipp_construct(%struct.dce_ipp*, %struct.dc_context*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
