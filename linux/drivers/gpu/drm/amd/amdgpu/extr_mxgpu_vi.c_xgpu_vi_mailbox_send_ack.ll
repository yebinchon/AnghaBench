; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_vi.c_xgpu_vi_mailbox_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_vi.c_xgpu_vi_mailbox_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@VI_MAILBOX_TIMEDOUT = common dso_local global i32 0, align 4
@MAILBOX_CONTROL = common dso_local global i32 0, align 4
@RCV_MSG_VALID = common dso_local global i32 0, align 4
@mmMAILBOX_CONTROL = common dso_local global i32 0, align 4
@RCV_MSG_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RCV_MSG_VALID is not cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @xgpu_vi_mailbox_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgpu_vi_mailbox_send_ack(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %6 = load i32, i32* @VI_MAILBOX_TIMEDOUT, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @MAILBOX_CONTROL, align 4
  %8 = load i32, i32* @RCV_MSG_VALID, align 4
  %9 = call i32 @REG_FIELD_MASK(i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @mmMAILBOX_CONTROL, align 4
  %11 = call i32 @RREG32_NO_KIQ(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MAILBOX_CONTROL, align 4
  %14 = load i32, i32* @RCV_MSG_ACK, align 4
  %15 = call i32 @REG_SET_FIELD(i32 %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @mmMAILBOX_CONTROL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @WREG32_NO_KIQ(i32 %16, i32 %17)
  %19 = load i32, i32* @mmMAILBOX_CONTROL, align 4
  %20 = call i32 @RREG32_NO_KIQ(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %31, %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %37

31:                                               ; preds = %26
  %32 = call i32 @mdelay(i32 1)
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @mmMAILBOX_CONTROL, align 4
  %36 = call i32 @RREG32_NO_KIQ(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %21

37:                                               ; preds = %29, %21
  ret void
}

declare dso_local i32 @REG_FIELD_MASK(i32, i32) #1

declare dso_local i32 @RREG32_NO_KIQ(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_NO_KIQ(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
