; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-highlander.c_highlander_i2c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlander_i2c_dev = type { i32, i64 }

@SMSADR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"command data[%x] 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.highlander_i2c_dev*, i32, i32)* @highlander_i2c_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @highlander_i2c_command(%struct.highlander_i2c_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.highlander_i2c_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.highlander_i2c_dev* %0, %struct.highlander_i2c_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 %9, 8
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub i32 %18, %19
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 8
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %28 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SMSADR, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @iowrite16(i32 %26, i64 %34)
  %36 = load %struct.highlander_i2c_dev*, %struct.highlander_i2c_dev** %4, align 8
  %37 = getelementptr inbounds %struct.highlander_i2c_dev, %struct.highlander_i2c_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = udiv i32 %39, 2
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 2
  store i32 %45, i32* %7, align 4
  br label %13

46:                                               ; preds = %13
  ret void
}

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
