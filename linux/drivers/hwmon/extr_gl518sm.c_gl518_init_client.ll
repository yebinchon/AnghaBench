; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_gl518_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_gl518_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@GL518_REG_CONF = common dso_local global i32 0, align 4
@GL518_REG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @gl518_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl518_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = load i32, i32* @GL518_REG_CONF, align 4
  %6 = call i32 @gl518_read_value(%struct.i2c_client* %4, i32 %5)
  %7 = and i32 %6, 127
  store i32 %7, i32* %3, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = load i32, i32* @GL518_REG_CONF, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 55
  store i32 %11, i32* %3, align 4
  %12 = call i32 @gl518_write_value(%struct.i2c_client* %8, i32 %9, i32 %11)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = load i32, i32* @GL518_REG_MASK, align 4
  %15 = call i32 @gl518_write_value(%struct.i2c_client* %13, i32 %14, i32 0)
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = load i32, i32* @GL518_REG_CONF, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 32, %18
  %20 = call i32 @gl518_write_value(%struct.i2c_client* %16, i32 %17, i32 %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = load i32, i32* @GL518_REG_CONF, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 64, %23
  %25 = call i32 @gl518_write_value(%struct.i2c_client* %21, i32 %22, i32 %24)
  ret void
}

declare dso_local i32 @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @gl518_write_value(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
