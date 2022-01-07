; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_gfx_off_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v12_0.c_smu_v12_0_gfx_off_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }

@SMU_MSG_AllowGfxOff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"enable gfxoff timeout and failed!\0A\00", align 1
@SMU_MSG_DisallowGfxOff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"disable gfxoff timeout and failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @smu_v12_0_gfx_off_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v12_0_gfx_off_control(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 500, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %11 = load i32, i32* @SMU_MSG_AllowGfxOff, align 4
  %12 = call i32 @smu_send_smc_msg(%struct.smu_context* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %26, %9
  %14 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %15 = call i32 @smu_v12_0_get_gfxoff_status(%struct.smu_context* %14)
  %16 = icmp eq i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = call i32 @msleep(i32 10)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %27

26:                                               ; preds = %18
  br label %13

27:                                               ; preds = %24, %13
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %30 = load i32, i32* @SMU_MSG_DisallowGfxOff, align 4
  %31 = call i32 @smu_send_smc_msg(%struct.smu_context* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %45, %28
  %33 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %34 = call i32 @smu_v12_0_get_gfxoff_status(%struct.smu_context* %33)
  %35 = icmp eq i32 %34, 2
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = call i32 @msleep(i32 1)
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %46

45:                                               ; preds = %37
  br label %32

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @smu_send_smc_msg(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_v12_0_get_gfxoff_status(%struct.smu_context*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
