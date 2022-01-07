; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_enable_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v2_0.c_vce_v2_0_enable_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CG_SUPPORT_VCE_MGCG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vce_v2_0_enable_mgcg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RADEON_CG_SUPPORT_VCE_MGCG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @vce_v2_0_set_sw_cg(%struct.radeon_device* %19, i32 1)
  br label %24

21:                                               ; preds = %15
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = call i32 @vce_v2_0_set_dyn_cg(%struct.radeon_device* %22, i32 1)
  br label %24

24:                                               ; preds = %21, %18
  br label %37

25:                                               ; preds = %8, %2
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = call i32 @vce_v2_0_disable_cg(%struct.radeon_device* %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @vce_v2_0_set_sw_cg(%struct.radeon_device* %31, i32 0)
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i32 @vce_v2_0_set_dyn_cg(%struct.radeon_device* %34, i32 0)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %24
  ret void
}

declare dso_local i32 @vce_v2_0_set_sw_cg(%struct.radeon_device*, i32) #1

declare dso_local i32 @vce_v2_0_set_dyn_cg(%struct.radeon_device*, i32) #1

declare dso_local i32 @vce_v2_0_disable_cg(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
