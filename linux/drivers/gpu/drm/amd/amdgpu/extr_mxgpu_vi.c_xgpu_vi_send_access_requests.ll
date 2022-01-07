; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_vi.c_xgpu_vi_send_access_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_vi.c_xgpu_vi_send_access_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@IDH_REQ_GPU_INIT_ACCESS = common dso_local global i32 0, align 4
@IDH_REQ_GPU_FINI_ACCESS = common dso_local global i32 0, align 4
@IDH_REQ_GPU_RESET_ACCESS = common dso_local global i32 0, align 4
@IDH_READY_TO_ACCESS_GPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Doesn't get ack from pf, give up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @xgpu_vi_send_access_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgpu_vi_send_access_requests(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @xgpu_vi_mailbox_trans_msg(%struct.amdgpu_device* %7, i32 %8)
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = call i32 @xgpu_vi_poll_ack(%struct.amdgpu_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %18 = call i32 @xgpu_vi_mailbox_set_valid(%struct.amdgpu_device* %17, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IDH_REQ_GPU_INIT_ACCESS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IDH_REQ_GPU_FINI_ACCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IDH_REQ_GPU_RESET_ACCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26, %22, %16
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = load i32, i32* @IDH_READY_TO_ACCESS_GPU, align 4
  %33 = call i32 @xgpu_vi_poll_msg(%struct.amdgpu_device* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %26
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %36, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @xgpu_vi_mailbox_trans_msg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @xgpu_vi_poll_ack(%struct.amdgpu_device*) #1

declare dso_local i32 @xgpu_vi_mailbox_set_valid(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @xgpu_vi_poll_msg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
