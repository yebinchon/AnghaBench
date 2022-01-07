; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-stmpe.c_stmpe_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gpio_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gpio_chip*)* @stmpe_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_dbg_show(%struct.seq_file* %0, %struct.gpio_chip* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.gpio_chip* %1, %struct.gpio_chip** %4, align 8
  %7 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %8 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @stmpe_dbg_show_one(%struct.seq_file* %17, %struct.gpio_chip* %18, i32 %19, i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_putc(%struct.seq_file* %22, i8 signext 10)
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local i32 @stmpe_dbg_show_one(%struct.seq_file*, %struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
