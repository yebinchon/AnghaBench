; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_poll_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mxgpu_ai.c_xgpu_ai_poll_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AI_MAILBOX_POLL_MSG_TIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Doesn't get msg:%d from pf, error=%d\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @xgpu_ai_poll_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgpu_ai_poll_msg(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @AI_MAILBOX_POLL_MSG_TIMEDOUT, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %20, %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @xgpu_ai_mailbox_rcv_msg(%struct.amdgpu_device* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %29

16:                                               ; preds = %9
  %17 = call i32 @msleep(i32 10)
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 10
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %9, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @ETIME, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %23, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @xgpu_ai_mailbox_rcv_msg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
