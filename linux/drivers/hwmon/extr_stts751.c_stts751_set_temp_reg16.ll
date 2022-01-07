; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_set_temp_reg16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_set_temp_reg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stts751_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stts751_priv*, i32, i32, i32)* @stts751_set_temp_reg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stts751_set_temp_reg16(%struct.stts751_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stts751_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.stts751_priv* %0, %struct.stts751_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @stts751_to_hw(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %15 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %10, align 4
  %19 = ashr i32 %18, 8
  %20 = call i32 @i2c_smbus_write_byte_data(i32 %16, i32 %17, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load %struct.stts751_priv*, %struct.stts751_priv** %6, align 8
  %27 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @i2c_smbus_write_byte_data(i32 %28, i32 %29, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @stts751_to_hw(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
