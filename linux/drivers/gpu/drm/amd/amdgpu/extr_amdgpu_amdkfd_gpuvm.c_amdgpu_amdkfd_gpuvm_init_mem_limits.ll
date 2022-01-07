; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_init_mem_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_init_mem_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sysinfo = type { i32, i32, i32 }

@kfd_mem_limit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c"Kernel memory limit %lluM, TTM limit %lluM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_amdkfd_gpuvm_init_mem_limits() #0 {
  %1 = alloca %struct.sysinfo, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @si_meminfo(%struct.sysinfo* %1)
  %4 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %5, %7
  store i32 %8, i32* %2, align 4
  %9 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %2, align 4
  %12 = mul nsw i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kfd_mem_limit, i32 0, i32 2))
  %14 = load i32, i32* %2, align 4
  %15 = ashr i32 %14, 1
  %16 = load i32, i32* %2, align 4
  %17 = ashr i32 %16, 2
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kfd_mem_limit, i32 0, i32 0), align 4
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 1
  %21 = load i32, i32* %2, align 4
  %22 = ashr i32 %21, 3
  %23 = sub nsw i32 %20, %22
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kfd_mem_limit, i32 0, i32 1), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kfd_mem_limit, i32 0, i32 0), align 4
  %25 = ashr i32 %24, 20
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kfd_mem_limit, i32 0, i32 1), align 4
  %27 = ashr i32 %26, 20
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
