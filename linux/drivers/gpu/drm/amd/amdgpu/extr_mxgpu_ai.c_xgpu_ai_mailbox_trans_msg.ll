; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_mailbox_trans_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_mailbox_trans_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"trn=%x ACK should not assert! wait again !\0A\00", align 1
@NBIO = common dso_local global i32 0, align 4
@mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0 = common dso_local global i32 0, align 4
@BIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0 = common dso_local global i32 0, align 4
@MSGBUF_DATA = common dso_local global i32 0, align 4
@mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW1 = common dso_local global i32 0, align 4
@mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW2 = common dso_local global i32 0, align 4
@mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Doesn't get ack from pf, continue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32, i32)* @xgpu_ai_mailbox_trans_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgpu_ai_mailbox_trans_msg(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %14

14:                                               ; preds = %26, %5
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %16 = call i32 @xgpu_ai_mailbox_set_valid(%struct.amdgpu_device* %15, i32 0)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %18 = call i64 @xgpu_ai_peek_ack(%struct.amdgpu_device* %17)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i64, i64* %13, align 8
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = call i32 @msleep(i32 1)
  br label %25

25:                                               ; preds = %21, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %14, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @NBIO, align 4
  %31 = load i32, i32* @mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0, align 4
  %32 = call i32 @SOC15_REG_OFFSET(i32 %30, i32 0, i32 %31)
  %33 = call i32 @RREG32_NO_KIQ(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @BIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0, align 4
  %36 = load i32, i32* @MSGBUF_DATA, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @NBIO, align 4
  %40 = load i32, i32* @mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW0, align 4
  %41 = call i32 @SOC15_REG_OFFSET(i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @WREG32_NO_KIQ(i32 %41, i32 %42)
  %44 = load i32, i32* @NBIO, align 4
  %45 = load i32, i32* @mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW1, align 4
  %46 = call i32 @SOC15_REG_OFFSET(i32 %44, i32 0, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @WREG32_NO_KIQ(i32 %46, i32 %47)
  %49 = load i32, i32* @NBIO, align 4
  %50 = load i32, i32* @mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW2, align 4
  %51 = call i32 @SOC15_REG_OFFSET(i32 %49, i32 0, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @WREG32_NO_KIQ(i32 %51, i32 %52)
  %54 = load i32, i32* @NBIO, align 4
  %55 = load i32, i32* @mmBIF_BX_PF0_MAILBOX_MSGBUF_TRN_DW3, align 4
  %56 = call i32 @SOC15_REG_OFFSET(i32 %54, i32 0, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @WREG32_NO_KIQ(i32 %56, i32 %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %60 = call i32 @xgpu_ai_mailbox_set_valid(%struct.amdgpu_device* %59, i32 1)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %62 = call i32 @xgpu_ai_poll_ack(%struct.amdgpu_device* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %29
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %29
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %69 = call i32 @xgpu_ai_mailbox_set_valid(%struct.amdgpu_device* %68, i32 0)
  ret void
}

declare dso_local i32 @xgpu_ai_mailbox_set_valid(%struct.amdgpu_device*, i32) #1

declare dso_local i64 @xgpu_ai_peek_ack(%struct.amdgpu_device*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @RREG32_NO_KIQ(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_NO_KIQ(i32, i32) #1

declare dso_local i32 @xgpu_ai_poll_ack(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
