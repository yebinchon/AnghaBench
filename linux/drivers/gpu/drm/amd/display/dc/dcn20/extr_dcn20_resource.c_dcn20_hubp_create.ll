; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_hubp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_hubp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dc_context = type { i32 }
%struct.dcn20_hubp = type { %struct.hubp }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hubp_regs = common dso_local global i32* null, align 8
@hubp_shift = common dso_local global i32 0, align 4
@hubp_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hubp* @dcn20_hubp_create(%struct.dc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dcn20_hubp*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dcn20_hubp* @kzalloc(i32 4, i32 %7)
  store %struct.dcn20_hubp* %8, %struct.dcn20_hubp** %6, align 8
  %9 = load %struct.dcn20_hubp*, %struct.dcn20_hubp** %6, align 8
  %10 = icmp ne %struct.dcn20_hubp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.hubp* null, %struct.hubp** %3, align 8
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.dcn20_hubp*, %struct.dcn20_hubp** %6, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i32*, i32** @hubp_regs, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i64 @hubp2_construct(%struct.dcn20_hubp* %13, %struct.dc_context* %14, i64 %15, i32* %18, i32* @hubp_shift, i32* @hubp_mask)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.dcn20_hubp*, %struct.dcn20_hubp** %6, align 8
  %23 = getelementptr inbounds %struct.dcn20_hubp, %struct.dcn20_hubp* %22, i32 0, i32 0
  store %struct.hubp* %23, %struct.hubp** %3, align 8
  br label %28

24:                                               ; preds = %12
  %25 = call i32 (...) @BREAK_TO_DEBUGGER()
  %26 = load %struct.dcn20_hubp*, %struct.dcn20_hubp** %6, align 8
  %27 = call i32 @kfree(%struct.dcn20_hubp* %26)
  store %struct.hubp* null, %struct.hubp** %3, align 8
  br label %28

28:                                               ; preds = %24, %21, %11
  %29 = load %struct.hubp*, %struct.hubp** %3, align 8
  ret %struct.hubp* %29
}

declare dso_local %struct.dcn20_hubp* @kzalloc(i32, i32) #1

declare dso_local i64 @hubp2_construct(%struct.dcn20_hubp*, %struct.dc_context*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @kfree(%struct.dcn20_hubp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
