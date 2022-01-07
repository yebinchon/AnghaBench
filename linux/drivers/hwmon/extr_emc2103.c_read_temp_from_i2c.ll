; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_read_temp_from_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_read_temp_from_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.temperature = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, %struct.temperature*)* @read_temp_from_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_temp_from_i2c(%struct.i2c_client* %0, i32 %1, %struct.temperature* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.temperature*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.temperature* %2, %struct.temperature** %6, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @read_u8_from_i2c(%struct.i2c_client* %9, i32 %10, i32* %7)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i64 @read_u8_from_i2c(%struct.i2c_client* %15, i32 %17, i32* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %30

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.temperature*, %struct.temperature** %6, align 8
  %24 = getelementptr inbounds %struct.temperature, %struct.temperature* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 224
  %27 = ashr i32 %26, 5
  %28 = load %struct.temperature*, %struct.temperature** %6, align 8
  %29 = getelementptr inbounds %struct.temperature, %struct.temperature* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %20, %13
  ret void
}

declare dso_local i64 @read_u8_from_i2c(%struct.i2c_client*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
