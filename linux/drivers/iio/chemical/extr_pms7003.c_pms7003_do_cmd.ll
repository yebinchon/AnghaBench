; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_do_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_pms7003.c_pms7003_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pms7003_state = type { i32, i32 }

@pms7003_cmd_tbl = common dso_local global i32* null, align 8
@PMS7003_CMD_LENGTH = common dso_local global i32 0, align 4
@PMS7003_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pms7003_state*, i32)* @pms7003_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pms7003_do_cmd(%struct.pms7003_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pms7003_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pms7003_state* %0, %struct.pms7003_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %8 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** @pms7003_cmd_tbl, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PMS7003_CMD_LENGTH, align 4
  %16 = load i32, i32* @PMS7003_TIMEOUT, align 4
  %17 = call i32 @serdev_device_write(i32 %9, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PMS7003_CMD_LENGTH, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  br label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ]
  store i32 %30, i32* %3, align 4
  br label %49

31:                                               ; preds = %2
  %32 = load %struct.pms7003_state*, %struct.pms7003_state** %4, align 8
  %33 = getelementptr inbounds %struct.pms7003_state, %struct.pms7003_state* %32, i32 0, i32 0
  %34 = load i32, i32* @PMS7003_TIMEOUT, align 4
  %35 = call i32 @wait_for_completion_interruptible_timeout(i32* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %29
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @serdev_device_write(i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
