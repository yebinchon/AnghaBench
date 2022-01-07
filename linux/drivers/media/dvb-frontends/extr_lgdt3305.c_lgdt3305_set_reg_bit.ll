; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_reg_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3305.c_lgdt3305_set_reg_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"reg: 0x%04x, bit: %d, level: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, i32, i32, i32)* @lgdt3305_set_reg_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lgdt3305_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @lg_reg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @lgdt3305_read_reg(%struct.lgdt3305_state* %15, i32 %16, i32* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @lg_fail(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %38

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 1
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %22, %21
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @lg_reg(i8*, i32, i32, i32) #1

declare dso_local i32 @lgdt3305_read_reg(%struct.lgdt3305_state*, i32, i32*) #1

declare dso_local i64 @lg_fail(i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
