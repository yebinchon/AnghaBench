; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_recovery_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_recovery_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ras = type { %struct.amdgpu_device*, i32, i32, i32, %struct.ras_err_handler_data* }
%struct.ras_err_handler_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@amdgpu_ras_do_recovery = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @amdgpu_ras_recovery_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ras_recovery_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ras*, align 8
  %5 = alloca %struct.ras_err_handler_data**, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = call %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device* %6)
  store %struct.amdgpu_ras* %7, %struct.amdgpu_ras** %4, align 8
  %8 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %8, i32 0, i32 4
  store %struct.ras_err_handler_data** %9, %struct.ras_err_handler_data*** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @__GFP_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.ras_err_handler_data* @kmalloc(i32 4, i32 %12)
  %14 = load %struct.ras_err_handler_data**, %struct.ras_err_handler_data*** %5, align 8
  store %struct.ras_err_handler_data* %13, %struct.ras_err_handler_data** %14, align 8
  %15 = load %struct.ras_err_handler_data**, %struct.ras_err_handler_data*** %5, align 8
  %16 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %15, align 8
  %17 = icmp ne %struct.ras_err_handler_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %25, i32 0, i32 2
  %27 = load i32, i32* @amdgpu_ras_do_recovery, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %29, i32 0, i32 1
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = load %struct.amdgpu_ras*, %struct.amdgpu_ras** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ras, %struct.amdgpu_ras* %33, i32 0, i32 0
  store %struct.amdgpu_device* %32, %struct.amdgpu_device** %34, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = call i32 @amdgpu_ras_load_bad_pages(%struct.amdgpu_device* %35)
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = call i32 @amdgpu_ras_reserve_bad_pages(%struct.amdgpu_device* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %21, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.amdgpu_ras* @amdgpu_ras_get_context(%struct.amdgpu_device*) #1

declare dso_local %struct.ras_err_handler_data* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @amdgpu_ras_load_bad_pages(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ras_reserve_bad_pages(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
