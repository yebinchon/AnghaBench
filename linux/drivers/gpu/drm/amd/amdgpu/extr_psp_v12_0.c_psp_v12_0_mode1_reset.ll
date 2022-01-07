; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_mode1_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v12_0.c_psp_v12_0_mode1_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psp_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@MP0 = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"psp is not working correctly before mode1 reset!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFX_CTRL_CMD_ID_MODE1_RST = common dso_local global i32 0, align 4
@mmMP0_SMN_C2PMSG_33 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"psp mode 1 reset failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"psp mode1 reset succeed \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psp_context*)* @psp_v12_0_mode1_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v12_0_mode1_reset(%struct.psp_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psp_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.psp_context* %0, %struct.psp_context** %3, align 8
  %7 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %8 = getelementptr inbounds %struct.psp_context, %struct.psp_context* %7, i32 0, i32 0
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %6, align 8
  %10 = load i32, i32* @MP0, align 4
  %11 = load i32, i32* @mmMP0_SMN_C2PMSG_64, align 4
  %12 = call i32 @SOC15_REG_OFFSET(i32 %10, i32 0, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @psp_wait_for(%struct.psp_context* %13, i32 %14, i32 -2147483648, i32 -2147418113, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 @DRM_INFO(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GFX_CTRL_CMD_ID_MODE1_RST, align 4
  %25 = call i32 @WREG32(i32 %23, i32 %24)
  %26 = call i32 @msleep(i32 500)
  %27 = load i32, i32* @MP0, align 4
  %28 = load i32, i32* @mmMP0_SMN_C2PMSG_33, align 4
  %29 = call i32 @SOC15_REG_OFFSET(i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.psp_context*, %struct.psp_context** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @psp_wait_for(%struct.psp_context* %30, i32 %31, i32 -2147483648, i32 -2147483648, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %22
  %40 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %35, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @psp_wait_for(%struct.psp_context*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
