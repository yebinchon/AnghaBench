; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_poll_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-puv3.c_poll_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_STATUS_TFNF = common dso_local global i64 0, align 8
@I2C_STATUS = common dso_local global i32 0, align 4
@I2C_TAR = common dso_local global i32 0, align 4
@I2C_TAR_EEPROM = common dso_local global i32 0, align 4
@I2C_RXFLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i64)* @poll_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @poll_status(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 1000, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @I2C_STATUS_TFNF, align 8
  %6 = and i64 %4, %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %22, %8
  %10 = call i32 @udelay(i32 10)
  br label %11

11:                                               ; preds = %9
  %12 = load i32, i32* @I2C_STATUS, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %2, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i1 [ false, %11 ], [ %21, %18 ]
  br i1 %23, label %9, label %24

24:                                               ; preds = %22
  br label %48

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* @I2C_TAR, align 4
  %28 = call i32 @readl(i32 %27)
  %29 = load i32, i32* @I2C_TAR_EEPROM, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @msleep(i32 20)
  br label %35

33:                                               ; preds = %26
  %34 = call i32 @udelay(i32 10)
  br label %35

35:                                               ; preds = %33, %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @I2C_RXFLR, align 4
  %38 = call i32 @readl(i32 %37)
  %39 = and i32 %38, 15
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %3, align 4
  %44 = icmp sgt i32 %43, 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  br i1 %46, label %26, label %47

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %3, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = trunc i32 %51 to i16
  ret i16 %52
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
