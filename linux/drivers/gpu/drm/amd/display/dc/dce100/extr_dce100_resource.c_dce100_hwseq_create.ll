; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_hwseq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_dce100_hwseq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32*, i32*, i32*, %struct.dc_context* }
%struct.dc_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hwseq_reg = common dso_local global i32 0, align 4
@hwseq_shift = common dso_local global i32 0, align 4
@hwseq_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dce_hwseq* (%struct.dc_context*)* @dce100_hwseq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dce_hwseq* @dce100_hwseq_create(%struct.dc_context* %0) #0 {
  %2 = alloca %struct.dc_context*, align 8
  %3 = alloca %struct.dce_hwseq*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.dce_hwseq* @kzalloc(i32 32, i32 %4)
  store %struct.dce_hwseq* %5, %struct.dce_hwseq** %3, align 8
  %6 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %7 = icmp ne %struct.dce_hwseq* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.dc_context*, %struct.dc_context** %2, align 8
  %10 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %11 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %10, i32 0, i32 3
  store %struct.dc_context* %9, %struct.dc_context** %11, align 8
  %12 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %13 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %12, i32 0, i32 2
  store i32* @hwseq_reg, i32** %13, align 8
  %14 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %15 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %14, i32 0, i32 1
  store i32* @hwseq_shift, i32** %15, align 8
  %16 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %17 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %16, i32 0, i32 0
  store i32* @hwseq_mask, i32** %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  ret %struct.dce_hwseq* %19
}

declare dso_local %struct.dce_hwseq* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
