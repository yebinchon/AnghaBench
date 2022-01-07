; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_write_convrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_write_convrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm90_data = type { i32, i32, i32 }

@LM90_PAUSE_FOR_CONFIG = common dso_local global i32 0, align 4
@LM90_REG_W_CONVRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm90_data*, i32)* @lm90_write_convrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_write_convrate(%struct.lm90_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm90_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm90_data* %0, %struct.lm90_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %9 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %12 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LM90_PAUSE_FOR_CONFIG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, 64
  %21 = call i32 @lm90_update_confreg(%struct.lm90_data* %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %29 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LM90_REG_W_CONVRATE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @i2c_smbus_write_byte_data(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.lm90_data*, %struct.lm90_data** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lm90_update_confreg(%struct.lm90_data* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %27, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @lm90_update_confreg(%struct.lm90_data*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
