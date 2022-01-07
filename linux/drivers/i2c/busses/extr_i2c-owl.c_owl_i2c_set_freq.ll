; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_i2c_dev = type { i32, i64, i32 }

@OWL_I2C_REG_CLKDIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.owl_i2c_dev*)* @owl_i2c_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_i2c_set_freq(%struct.owl_i2c_dev* %0) #0 {
  %2 = alloca %struct.owl_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.owl_i2c_dev* %0, %struct.owl_i2c_dev** %2, align 8
  %4 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %2, align 8
  %5 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 16
  %11 = call i32 @DIV_ROUND_UP(i32 %6, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @OWL_I2C_DIV_FACTOR(i32 %12)
  %14 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %2, align 8
  %15 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OWL_I2C_REG_CLKDIV, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @OWL_I2C_DIV_FACTOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
