; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce80_transform_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce80_transform_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.dc_context = type { i32 }
%struct.dce_transform = type { i32, %struct.transform }

@GFP_KERNEL = common dso_local global i32 0, align 4
@xfm_regs = common dso_local global i32* null, align 8
@xfm_shift = common dso_local global i32 0, align 4
@xfm_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.transform* (%struct.dc_context*, i64)* @dce80_transform_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.transform* @dce80_transform_create(%struct.dc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dce_transform*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dce_transform* @kzalloc(i32 8, i32 %7)
  store %struct.dce_transform* %8, %struct.dce_transform** %6, align 8
  %9 = load %struct.dce_transform*, %struct.dce_transform** %6, align 8
  %10 = icmp ne %struct.dce_transform* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.transform* null, %struct.transform** %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.dce_transform*, %struct.dce_transform** %6, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32*, i32** @xfm_regs, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @dce_transform_construct(%struct.dce_transform* %13, %struct.dc_context* %14, i64 %15, i32* %18, i32* @xfm_shift, i32* @xfm_mask)
  %20 = load %struct.dce_transform*, %struct.dce_transform** %6, align 8
  %21 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.dce_transform*, %struct.dce_transform** %6, align 8
  %23 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %22, i32 0, i32 1
  store %struct.transform* %23, %struct.transform** %3, align 8
  br label %24

24:                                               ; preds = %12, %11
  %25 = load %struct.transform*, %struct.transform** %3, align 8
  ret %struct.transform* %25
}

declare dso_local %struct.dce_transform* @kzalloc(i32, i32) #1

declare dso_local i32 @dce_transform_construct(%struct.dce_transform*, %struct.dc_context*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
