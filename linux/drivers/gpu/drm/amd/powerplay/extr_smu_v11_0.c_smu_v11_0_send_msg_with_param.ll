; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_send_msg_with_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_smu_v11_0.c_smu_v11_0_send_msg_with_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"failed send message: %10s (%d) \09param: 0x%08x response %#x\0A\00", align 1
@MP1 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_90 = common dso_local global i32 0, align 4
@mmMP1_SMN_C2PMSG_82 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32)* @smu_v11_0_send_msg_with_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_v11_0_send_msg_with_param(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @smu_msg_get_index(%struct.smu_context* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %23 = call i32 @smu_v11_0_wait_for_response(%struct.smu_context* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @smu_get_message_name(%struct.smu_context* %27, i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* @MP1, align 4
  %36 = load i32, i32* @mmMP1_SMN_C2PMSG_90, align 4
  %37 = call i32 @WREG32_SOC15(i32 %35, i32 0, i32 %36, i32 0)
  %38 = load i32, i32* @MP1, align 4
  %39 = load i32, i32* @mmMP1_SMN_C2PMSG_82, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @WREG32_SOC15(i32 %38, i32 0, i32 %39, i32 %40)
  %42 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @smu_v11_0_send_msg_without_waiting(%struct.smu_context* %42, i32 %43)
  %45 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %46 = call i32 @smu_v11_0_wait_for_response(%struct.smu_context* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %34
  %50 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @smu_get_message_name(%struct.smu_context* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %49, %34
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @smu_msg_get_index(%struct.smu_context*, i32) #1

declare dso_local i32 @smu_v11_0_wait_for_response(%struct.smu_context*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @smu_get_message_name(%struct.smu_context*, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @smu_v11_0_send_msg_without_waiting(%struct.smu_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
