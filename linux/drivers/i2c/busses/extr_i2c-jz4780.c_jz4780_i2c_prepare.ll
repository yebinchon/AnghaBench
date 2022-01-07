; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_i2c*)* @jz4780_i2c_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_prepare(%struct.jz4780_i2c* %0) #0 {
  %2 = alloca %struct.jz4780_i2c*, align 8
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %2, align 8
  %3 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %4 = call i32 @jz4780_i2c_set_speed(%struct.jz4780_i2c* %3)
  %5 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %6 = call i32 @jz4780_i2c_enable(%struct.jz4780_i2c* %5)
  ret i32 %6
}

declare dso_local i32 @jz4780_i2c_set_speed(%struct.jz4780_i2c*) #1

declare dso_local i32 @jz4780_i2c_enable(%struct.jz4780_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
