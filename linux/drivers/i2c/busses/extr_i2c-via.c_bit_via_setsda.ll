; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-via.c_bit_via_setsda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-via.c_bit_via_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_DIR = common dso_local global i32 0, align 4
@I2C_SDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bit_via_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_via_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @I2C_DIR, align 4
  %9 = call i32 @inb(i32 %8)
  %10 = load i32, i32* @I2C_SDA, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @I2C_DIR, align 4
  %15 = call i32 @inb(i32 %14)
  %16 = load i32, i32* @I2C_SDA, align 4
  %17 = or i32 %15, %16
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i32 [ %12, %7 ], [ %17, %13 ]
  %20 = load i32, i32* @I2C_DIR, align 4
  %21 = call i32 @outb(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
