; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_send_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_send_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APPLESMC_MIN_WAIT = common dso_local global i32 0, align 4
@APPLESMC_MAX_WAIT = common dso_local global i32 0, align 4
@APPLESMC_CMD_PORT = common dso_local global i32 0, align 4
@APPLESMC_RETRY_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"send_byte(0x%02x, 0x%04x) fail: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @send_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_byte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @outb(i32 %8, i32 %9)
  %11 = load i32, i32* @APPLESMC_MIN_WAIT, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %42, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @APPLESMC_MAX_WAIT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @udelay(i32 %17)
  %19 = load i32, i32* @APPLESMC_CMD_PORT, align 4
  %20 = call i32 @inb(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %42

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %52

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 1
  %33 = load i32, i32* @APPLESMC_MAX_WAIT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @APPLESMC_RETRY_WAIT, align 4
  %38 = call i32 @udelay(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @outb(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %24
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %12

45:                                               ; preds = %35, %12
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %29
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
