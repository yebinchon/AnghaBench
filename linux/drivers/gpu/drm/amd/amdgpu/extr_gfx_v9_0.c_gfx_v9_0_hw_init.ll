; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }

@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v9_0_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_hw_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %5, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %9 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %13 = call i32 @gfx_v9_0_init_golden_registers(%struct.amdgpu_device* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = call i32 @gfx_v9_0_constants_init(%struct.amdgpu_device* %15)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %18 = call i32 @gfx_v9_0_csb_vram_pin(%struct.amdgpu_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %14
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %29, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %32 = call i32 %30(%struct.amdgpu_device* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %23
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = call i32 @gfx_v9_0_cp_resume(%struct.amdgpu_device* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %37
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_ARCTURUS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = call i32 @gfx_v9_0_ngg_en(%struct.amdgpu_device* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %55, %42, %35, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_init_golden_registers(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_constants_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_csb_vram_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_cp_resume(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_ngg_en(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
