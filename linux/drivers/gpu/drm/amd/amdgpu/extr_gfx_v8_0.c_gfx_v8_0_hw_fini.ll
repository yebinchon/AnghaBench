; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }

@.str = private unnamed_addr constant [42 x i8] c"For SRIOV client, shouldn't do anything.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"cp is busy, skip halt cp\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"rlc is busy, skip halt rlc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v8_0_hw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_hw_fini(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %4, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %7, i32* %10, i32 0)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %12, i32* %15, i32 0)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %17, i32* %20, i32 0)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %22, i32* %25, i32 0)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = call i32 @gfx_v8_0_kcq_disable(%struct.amdgpu_device* %27)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

34:                                               ; preds = %1
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %36 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %38 = call i32 @gfx_v8_0_wait_for_idle(%struct.amdgpu_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = call i32 @gfx_v8_0_cp_enable(%struct.amdgpu_device* %41, i32 0)
  br label %45

43:                                               ; preds = %34
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %47 = call i32 @gfx_v8_0_wait_for_rlc_idle(%struct.amdgpu_device* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %55, align 8
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %58 = call i32 %56(%struct.amdgpu_device* %57)
  br label %61

59:                                               ; preds = %45
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %49
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %63 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %62)
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %65 = call i32 @gfx_v8_0_csb_vram_unpin(%struct.amdgpu_device* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %32
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @gfx_v8_0_kcq_disable(%struct.amdgpu_device*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_wait_for_idle(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_cp_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gfx_v8_0_wait_for_rlc_idle(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_csb_vram_unpin(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
