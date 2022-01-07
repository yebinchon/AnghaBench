; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_smc.c_kv_notify_message_to_smu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_smc.c_kv_notify_message_to_smu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@SMC_MESSAGE_0 = common dso_local global i32 0, align 4
@SMC_MSG_MASK = common dso_local global i64 0, align 8
@SMC_RESP_0 = common dso_local global i32 0, align 4
@SMC_RESP_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kv_notify_message_to_smu(%struct.radeon_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @SMC_MESSAGE_0, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @SMC_MSG_MASK, align 8
  %11 = and i64 %9, %10
  %12 = call i32 @WREG32(i32 %8, i64 %11)
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %28, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32, i32* @SMC_RESP_0, align 4
  %21 = call i64 @RREG32(i32 %20)
  %22 = load i64, i64* @SMC_RESP_MASK, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %31

26:                                               ; preds = %19
  %27 = call i32 @udelay(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %13

31:                                               ; preds = %25, %13
  %32 = load i32, i32* @SMC_RESP_0, align 4
  %33 = call i64 @RREG32(i32 %32)
  %34 = load i64, i64* @SMC_RESP_MASK, align 8
  %35 = and i64 %33, %34
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 254
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %31
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47, %41
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
