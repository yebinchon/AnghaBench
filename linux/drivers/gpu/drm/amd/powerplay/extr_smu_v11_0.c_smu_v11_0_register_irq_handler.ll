; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_register_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_register_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_irq_src*, %struct.amdgpu_device* }
%struct.amdgpu_irq_src = type { i32* }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smu_v11_0_irq_funcs = common dso_local global i32 0, align 4
@SOC15_IH_CLIENTID_THM = common dso_local global i32 0, align 4
@THM_11_0__SRCID__THM_DIG_THERM_L2H = common dso_local global i32 0, align 4
@THM_11_0__SRCID__THM_DIG_THERM_H2L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @smu_v11_0_register_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_register_irq_handler(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 1
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %4, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %11, align 8
  store %struct.amdgpu_irq_src* %12, %struct.amdgpu_irq_src** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %14 = icmp ne %struct.amdgpu_irq_src* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.amdgpu_irq_src* @kzalloc(i32 8, i32 %17)
  store %struct.amdgpu_irq_src* %18, %struct.amdgpu_irq_src** %5, align 8
  %19 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %20 = icmp ne %struct.amdgpu_irq_src* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %26 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %27 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %26, i32 0, i32 0
  store %struct.amdgpu_irq_src* %25, %struct.amdgpu_irq_src** %27, align 8
  %28 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %28, i32 0, i32 0
  store i32* @smu_v11_0_irq_funcs, i32** %29, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %31 = load i32, i32* @SOC15_IH_CLIENTID_THM, align 4
  %32 = load i32, i32* @THM_11_0__SRCID__THM_DIG_THERM_L2H, align 4
  %33 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %34 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %30, i32 %31, i32 %32, %struct.amdgpu_irq_src* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %24
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = load i32, i32* @SOC15_IH_CLIENTID_THM, align 4
  %42 = load i32, i32* @THM_11_0__SRCID__THM_DIG_THERM_H2L, align 4
  %43 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %44 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %40, i32 %41, i32 %42, %struct.amdgpu_irq_src* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %37, %21, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.amdgpu_irq_src* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, %struct.amdgpu_irq_src*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
