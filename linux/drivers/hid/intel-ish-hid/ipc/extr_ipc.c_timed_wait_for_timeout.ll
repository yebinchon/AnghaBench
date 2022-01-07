; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_timed_wait_for_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_timed_wait_for_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32 }

@WAIT_FOR_FW_RDY = common dso_local global i32 0, align 4
@WAIT_FOR_INPUT_RDY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_device*, i32, i32, i32)* @timed_wait_for_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timed_wait_for_timeout(%struct.ishtp_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ishtp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %51, %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @WAIT_FOR_FW_RDY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.ishtp_device*, %struct.ishtp_device** %5, align 8
  %18 = call i32 @ishtp_fw_is_ready(%struct.ishtp_device* %17)
  store i32 %18, i32* %9, align 4
  br label %30

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @WAIT_FOR_INPUT_RDY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.ishtp_device*, %struct.ishtp_device** %5, align 8
  %25 = call i32 @ish_is_input_ready(%struct.ishtp_device* %24)
  store i32 %25, i32* %9, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %61

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @msleep_interruptible(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = sub i64 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = sub i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %33, %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp ugt i32 %49, 0
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i1 [ false, %45 ], [ %50, %48 ]
  br i1 %52, label %12, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %56
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i32 @ishtp_fw_is_ready(%struct.ishtp_device*) #1

declare dso_local i32 @ish_is_input_ready(%struct.ishtp_device*) #1

declare dso_local i64 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
