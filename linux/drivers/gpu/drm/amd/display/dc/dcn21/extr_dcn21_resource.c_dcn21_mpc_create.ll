; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_mpc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dcn21_mpc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dc_context = type { i32 }
%struct.dcn20_mpc = type { %struct.mpc }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mpc_regs = common dso_local global i32 0, align 4
@mpc_shift = common dso_local global i32 0, align 4
@mpc_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpc* @dcn21_mpc_create(%struct.dc_context* %0) #0 {
  %2 = alloca %struct.mpc*, align 8
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dcn20_mpc*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dcn20_mpc* @kzalloc(i32 4, i32 %5)
  store %struct.dcn20_mpc* %6, %struct.dcn20_mpc** %4, align 8
  %7 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %4, align 8
  %8 = icmp ne %struct.dcn20_mpc* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mpc* null, %struct.mpc** %2, align 8
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %4, align 8
  %12 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %13 = call i32 @dcn20_mpc_construct(%struct.dcn20_mpc* %11, %struct.dc_context* %12, i32* @mpc_regs, i32* @mpc_shift, i32* @mpc_mask, i32 6)
  %14 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %4, align 8
  %15 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %14, i32 0, i32 0
  store %struct.mpc* %15, %struct.mpc** %2, align 8
  br label %16

16:                                               ; preds = %10, %9
  %17 = load %struct.mpc*, %struct.mpc** %2, align 8
  ret %struct.mpc* %17
}

declare dso_local %struct.dcn20_mpc* @kzalloc(i32, i32) #1

declare dso_local i32 @dcn20_mpc_construct(%struct.dcn20_mpc*, %struct.dc_context*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
