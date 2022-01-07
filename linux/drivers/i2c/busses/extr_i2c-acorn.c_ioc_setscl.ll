; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-acorn.c_ioc_setscl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-acorn.c_ioc_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOC_CONTROL = common dso_local global i32 0, align 4
@SCL = common dso_local global i32 0, align 4
@SDA = common dso_local global i32 0, align 4
@force_ones = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ioc_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc_setscl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @IOC_CONTROL, align 4
  %8 = call i32 @ioc_readb(i32 %7)
  %9 = load i32, i32* @SCL, align 4
  %10 = load i32, i32* @SDA, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @force_ones, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @SCL, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @SCL, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* @force_ones, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IOC_CONTROL, align 4
  %32 = call i32 @ioc_writeb(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @ioc_readb(i32) #1

declare dso_local i32 @ioc_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
