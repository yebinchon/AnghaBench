; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_is_lastmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_is_lastmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_i2c = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synquacer_i2c*)* @is_lastmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_lastmsg(%struct.synquacer_i2c* %0) #0 {
  %2 = alloca %struct.synquacer_i2c*, align 8
  store %struct.synquacer_i2c* %0, %struct.synquacer_i2c** %2, align 8
  %3 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %4 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp sge i32 %5, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
