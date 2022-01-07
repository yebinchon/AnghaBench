; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_common_baco.c_baco_cmd_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_common_baco.c_baco_cmd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid BACO command.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32, i32, i32, i32, i32)* @baco_cmd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baco_cmd_handler(%struct.pp_hwmgr* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pp_hwmgr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.amdgpu_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %19 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %15, align 8
  store i32 1, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %63 [
    i32 128, label %23
    i32 130, label %29
    i32 129, label %43
    i32 132, label %49
    i32 131, label %56
  ]

23:                                               ; preds = %7
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @WREG32(i32 %24, i32 %27)
  br label %68

29:                                               ; preds = %7
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %11, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  br label %68

43:                                               ; preds = %7
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @baco_wait_register(%struct.pp_hwmgr* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %17, align 4
  br label %68

49:                                               ; preds = %7
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @msleep(i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %68

56:                                               ; preds = %7
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @udelay(i32 %60)
  br label %62

62:                                               ; preds = %59, %56
  br label %68

63:                                               ; preds = %7
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %63, %62, %55, %43, %29, %23
  %69 = load i32, i32* %17, align 4
  ret i32 %69
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @baco_wait_register(%struct.pp_hwmgr*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
