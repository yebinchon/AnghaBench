; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_set_block_buffer_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_set_block_buffer_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32 }

@SMBAUXCTL_E32B = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*)* @i801_set_block_buffer_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_set_block_buffer_mode(%struct.i801_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i801_priv*, align 8
  store %struct.i801_priv* %0, %struct.i801_priv** %3, align 8
  %4 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %5 = call i32 @SMBAUXCTL(%struct.i801_priv* %4)
  %6 = call i32 @inb_p(i32 %5)
  %7 = load i32, i32* @SMBAUXCTL_E32B, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %10 = call i32 @SMBAUXCTL(%struct.i801_priv* %9)
  %11 = call i32 @outb_p(i32 %8, i32 %10)
  %12 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %13 = call i32 @SMBAUXCTL(%struct.i801_priv* %12)
  %14 = call i32 @inb_p(i32 %13)
  %15 = load i32, i32* @SMBAUXCTL_E32B, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBAUXCTL(%struct.i801_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
