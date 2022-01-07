; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_compressor.c_dce110_compressor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor = type { i32 }
%struct.dc_context = type { i32 }
%struct.dce110_compressor = type { %struct.compressor }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.compressor* @dce110_compressor_create(%struct.dc_context* %0) #0 {
  %2 = alloca %struct.compressor*, align 8
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dce110_compressor*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dce110_compressor* @kzalloc(i32 4, i32 %5)
  store %struct.dce110_compressor* %6, %struct.dce110_compressor** %4, align 8
  %7 = load %struct.dce110_compressor*, %struct.dce110_compressor** %4, align 8
  %8 = icmp ne %struct.dce110_compressor* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.compressor* null, %struct.compressor** %2, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.dce110_compressor*, %struct.dce110_compressor** %4, align 8
  %12 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %13 = call i32 @dce110_compressor_construct(%struct.dce110_compressor* %11, %struct.dc_context* %12)
  %14 = load %struct.dce110_compressor*, %struct.dce110_compressor** %4, align 8
  %15 = getelementptr inbounds %struct.dce110_compressor, %struct.dce110_compressor* %14, i32 0, i32 0
  store %struct.compressor* %15, %struct.compressor** %2, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load %struct.compressor*, %struct.compressor** %2, align 8
  ret %struct.compressor* %17
}

declare dso_local %struct.dce110_compressor* @kzalloc(i32, i32) #1

declare dso_local i32 @dce110_compressor_construct(%struct.dce110_compressor*, %struct.dc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
