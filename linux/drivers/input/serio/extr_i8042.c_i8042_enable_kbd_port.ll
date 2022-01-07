; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_enable_kbd_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_enable_kbd_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I8042_CTR_KBDDIS = common dso_local global i32 0, align 4
@i8042_ctr = common dso_local global i32 0, align 4
@I8042_CTR_KBDINT = common dso_local global i32 0, align 4
@I8042_CMD_CTL_WCTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to enable KBD port\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i8042_enable_kbd_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_enable_kbd_port() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @I8042_CTR_KBDDIS, align 4
  %3 = xor i32 %2, -1
  %4 = load i32, i32* @i8042_ctr, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @i8042_ctr, align 4
  %6 = load i32, i32* @I8042_CTR_KBDINT, align 4
  %7 = load i32, i32* @i8042_ctr, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @i8042_ctr, align 4
  %9 = load i32, i32* @I8042_CMD_CTL_WCTR, align 4
  %10 = call i64 @i8042_command(i32* @i8042_ctr, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %0
  %13 = load i32, i32* @I8042_CTR_KBDINT, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @i8042_ctr, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @i8042_ctr, align 4
  %17 = load i32, i32* @I8042_CTR_KBDDIS, align 4
  %18 = load i32, i32* @i8042_ctr, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @i8042_ctr, align 4
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %1, align 4
  br label %24

23:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %12
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @i8042_command(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
