; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_ir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_read_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29018_chip = type { i32 }

@ISL29018_CMD1_OPMODE_IR_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29018_chip*, i32*)* @isl29018_read_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_read_ir(%struct.isl29018_chip* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isl29018_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.isl29018_chip* %0, %struct.isl29018_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.isl29018_chip*, %struct.isl29018_chip** %4, align 8
  %8 = load i32, i32* @ISL29018_CMD1_OPMODE_IR_ONCE, align 4
  %9 = call i32 @isl29018_read_sensor_input(%struct.isl29018_chip* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @isl29018_read_sensor_input(%struct.isl29018_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
