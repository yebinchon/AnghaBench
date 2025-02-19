; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_hubbub_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_hubbub_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dc_context = type { i32 }
%struct.dcn10_hubbub = type { %struct.hubbub }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hubbub_reg = common dso_local global i32 0, align 4
@hubbub_shift = common dso_local global i32 0, align 4
@hubbub_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hubbub* (%struct.dc_context*)* @dcn10_hubbub_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hubbub* @dcn10_hubbub_create(%struct.dc_context* %0) #0 {
  %2 = alloca %struct.hubbub*, align 8
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca %struct.dcn10_hubbub*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dcn10_hubbub* @kzalloc(i32 4, i32 %5)
  store %struct.dcn10_hubbub* %6, %struct.dcn10_hubbub** %4, align 8
  %7 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %4, align 8
  %8 = icmp ne %struct.dcn10_hubbub* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.hubbub* null, %struct.hubbub** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %4, align 8
  %12 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %11, i32 0, i32 0
  %13 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %14 = call i32 @hubbub1_construct(%struct.hubbub* %12, %struct.dc_context* %13, i32* @hubbub_reg, i32* @hubbub_shift, i32* @hubbub_mask)
  %15 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %4, align 8
  %16 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %15, i32 0, i32 0
  store %struct.hubbub* %16, %struct.hubbub** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.hubbub*, %struct.hubbub** %2, align 8
  ret %struct.hubbub* %18
}

declare dso_local %struct.dcn10_hubbub* @kzalloc(i32, i32) #1

declare dso_local i32 @hubbub1_construct(%struct.hubbub*, %struct.dc_context*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
