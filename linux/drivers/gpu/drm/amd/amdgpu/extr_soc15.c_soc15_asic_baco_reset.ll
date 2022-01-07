; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_baco_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_soc15.c_soc15_asic_baco_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amd_pm_funcs*, i8* }
%struct.amd_pm_funcs = type { i64 (i8*, i32)*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"GPU BACO reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @soc15_asic_baco_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc15_asic_baco_reset(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amd_pm_funcs*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %12, align 8
  store %struct.amd_pm_funcs* %13, %struct.amd_pm_funcs** %5, align 8
  %14 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %5, align 8
  %15 = icmp ne %struct.amd_pm_funcs* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %5, align 8
  %18 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %5, align 8
  %23 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %22, i32 0, i32 0
  %24 = load i64 (i8*, i32)*, i64 (i8*, i32)** %23, align 8
  %25 = icmp ne i64 (i8*, i32)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16, %1
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %21
  %30 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %5, align 8
  %31 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %30, i32 0, i32 0
  %32 = load i64 (i8*, i32)*, i64 (i8*, i32)** %31, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 %32(i8* %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %29
  %40 = load %struct.amd_pm_funcs*, %struct.amd_pm_funcs** %5, align 8
  %41 = getelementptr inbounds %struct.amd_pm_funcs, %struct.amd_pm_funcs* %40, i32 0, i32 0
  %42 = load i64 (i8*, i32)*, i64 (i8*, i32)** %41, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 %42(i8* %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %39
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_info(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %46, %36, %26
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
