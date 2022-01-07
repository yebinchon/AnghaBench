; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_altera_ps2.c_altera_ps2_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_altera_ps2.c_altera_ps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.ps2if* }
%struct.ps2if = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @altera_ps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_ps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ps2if*, align 8
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.serio*, %struct.serio** %3, align 8
  %7 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 0
  %8 = load %struct.ps2if*, %struct.ps2if** %7, align 8
  store %struct.ps2if* %8, %struct.ps2if** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %11 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @writel(i8 zeroext %9, i32 %12)
  ret i32 0
}

declare dso_local i32 @writel(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
