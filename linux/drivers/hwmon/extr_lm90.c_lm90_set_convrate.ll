; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_set_convrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_set_convrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i32, i32 }

@LM90_MAX_CONVRATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.lm90_data*, i32)* @lm90_set_convrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_set_convrate(%struct.i2c_client* %0, %struct.lm90_data* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.lm90_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.lm90_data* %1, %struct.lm90_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 6
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* @LM90_MAX_CONVRATE_MS, align 4
  %13 = shl i32 %12, 6
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %28, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %17 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul i32 %22, 3
  %24 = udiv i32 %23, 4
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %33

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = lshr i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %14

33:                                               ; preds = %26, %14
  %34 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @lm90_write_convrate(%struct.lm90_data* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @DIV_ROUND_CLOSEST(i32 %37, i32 64)
  %39 = load %struct.lm90_data*, %struct.lm90_data** %5, align 8
  %40 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @lm90_write_convrate(%struct.lm90_data*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
