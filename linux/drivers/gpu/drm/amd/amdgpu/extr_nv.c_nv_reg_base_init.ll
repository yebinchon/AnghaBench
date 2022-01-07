; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_reg_base_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_reg_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@amdgpu_discovery = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"failed to init reg base from ip discovery table, fallback to legacy init method\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @nv_reg_base_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_reg_base_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load i64, i64* @amdgpu_discovery, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = call i32 @amdgpu_discovery_reg_base_init(%struct.amdgpu_device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @DRM_WARN(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %16

14:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %29 [
    i32 130, label %20
    i32 128, label %23
    i32 129, label %26
  ]

20:                                               ; preds = %16
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = call i32 @navi10_reg_base_init(%struct.amdgpu_device* %21)
  br label %32

23:                                               ; preds = %16
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %25 = call i32 @navi14_reg_base_init(%struct.amdgpu_device* %24)
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 @navi12_reg_base_init(%struct.amdgpu_device* %27)
  br label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %26, %23, %20
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @amdgpu_discovery_reg_base_init(%struct.amdgpu_device*) #1

declare dso_local i32 @DRM_WARN(i8*) #1

declare dso_local i32 @navi10_reg_base_init(%struct.amdgpu_device*) #1

declare dso_local i32 @navi14_reg_base_init(%struct.amdgpu_device*) #1

declare dso_local i32 @navi12_reg_base_init(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
