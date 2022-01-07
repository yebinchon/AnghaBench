; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_register_irq_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_register_irq_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.amdgpu_irq_src = type { i32* }
%struct.amdgpu_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smu7_irq_funcs = common dso_local global i32 0, align 4
@AMDGPU_IRQ_CLIENTID_LEGACY = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_CG_TSS_THERMAL_LOW_TO_HIGH = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_CG_TSS_THERMAL_HIGH_TO_LOW = common dso_local global i32 0, align 4
@VISLANDS30_IV_SRCID_GPIO_19 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_register_irq_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_register_irq_handlers(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.amdgpu_irq_src*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.amdgpu_irq_src* @kzalloc(i32 8, i32 %5)
  store %struct.amdgpu_irq_src* %6, %struct.amdgpu_irq_src** %4, align 8
  %7 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %4, align 8
  %8 = icmp ne %struct.amdgpu_irq_src* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_irq_src, %struct.amdgpu_irq_src* %13, i32 0, i32 0
  store i32* @smu7_irq_funcs, i32** %14, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.amdgpu_device*
  %19 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %20 = load i32, i32* @VISLANDS30_IV_SRCID_CG_TSS_THERMAL_LOW_TO_HIGH, align 4
  %21 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %4, align 8
  %22 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %18, i32 %19, i32 %20, %struct.amdgpu_irq_src* %21)
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.amdgpu_device*
  %27 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %28 = load i32, i32* @VISLANDS30_IV_SRCID_CG_TSS_THERMAL_HIGH_TO_LOW, align 4
  %29 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %4, align 8
  %30 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %26, i32 %27, i32 %28, %struct.amdgpu_irq_src* %29)
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.amdgpu_device*
  %35 = load i32, i32* @AMDGPU_IRQ_CLIENTID_LEGACY, align 4
  %36 = load i32, i32* @VISLANDS30_IV_SRCID_GPIO_19, align 4
  %37 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %4, align 8
  %38 = call i32 @amdgpu_irq_add_id(%struct.amdgpu_device* %34, i32 %35, i32 %36, %struct.amdgpu_irq_src* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %12, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.amdgpu_irq_src* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_irq_add_id(%struct.amdgpu_device*, i32, i32, %struct.amdgpu_irq_src*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
