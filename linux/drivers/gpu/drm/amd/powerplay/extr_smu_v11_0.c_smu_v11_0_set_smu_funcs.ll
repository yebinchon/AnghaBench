; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_smu_funcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_set_smu_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32*, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@smu_v11_0_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown asic for smu11\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smu_v11_0_set_smu_funcs(%struct.smu_context* %0) #0 {
  %2 = alloca %struct.smu_context*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %2, align 8
  %4 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %5 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %4, i32 0, i32 1
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 0
  store i32* @smu_v11_0_funcs, i32** %8, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 128, label %12
    i32 132, label %15
    i32 131, label %18
    i32 129, label %18
    i32 130, label %18
  ]

12:                                               ; preds = %1
  %13 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %14 = call i32 @vega20_set_ppt_funcs(%struct.smu_context* %13)
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %17 = call i32 @arcturus_set_ppt_funcs(%struct.smu_context* %16)
  br label %23

18:                                               ; preds = %1, %1, %1
  %19 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %20 = call i32 @navi10_set_ppt_funcs(%struct.smu_context* %19)
  br label %23

21:                                               ; preds = %1
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18, %15, %12
  ret void
}

declare dso_local i32 @vega20_set_ppt_funcs(%struct.smu_context*) #1

declare dso_local i32 @arcturus_set_ppt_funcs(%struct.smu_context*) #1

declare dso_local i32 @navi10_set_ppt_funcs(%struct.smu_context*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
