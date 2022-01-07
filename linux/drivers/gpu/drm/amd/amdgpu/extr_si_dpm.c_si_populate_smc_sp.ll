; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_smc_sp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_smc_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ps = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.si_ps = type { i32 }
%struct.rv7xx_power_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.TYPE_5__*)* @si_populate_smc_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_populate_smc_sp(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_ps*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.si_ps*, align 8
  %8 = alloca %struct.rv7xx_power_info*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %5, align 8
  %11 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %10)
  store %struct.si_ps* %11, %struct.si_ps** %7, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device* %12)
  store %struct.rv7xx_power_info* %13, %struct.rv7xx_power_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %17 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %23 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_be32(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %25, i8** %32, align 8
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %14

36:                                               ; preds = %14
  %37 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %8, align 8
  %38 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.si_ps*, %struct.si_ps** %7, align 8
  %45 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8* %40, i8** %50, align 8
  ret void
}

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.amdgpu_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
