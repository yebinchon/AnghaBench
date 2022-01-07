; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_set_convrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_lm63_set_convrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm63_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@LM63_MAX_CONVRATE = common dso_local global i32 0, align 4
@LM63_REG_CONVRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm63_data*, i32)* @lm63_set_convrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm63_set_convrate(%struct.lm63_data* %0, i32 %1) #0 {
  %3 = alloca %struct.lm63_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm63_data* %0, %struct.lm63_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %8, i32 0, i32 2
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 6
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @LM63_MAX_CONVRATE, align 4
  %14 = add nsw i32 %13, 6
  %15 = shl i32 1, %14
  %16 = mul nsw i32 %15, 1000
  %17 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %18 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %16, %19
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %33, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @LM63_MAX_CONVRATE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul i32 %27, 3
  %29 = udiv i32 %28, 4
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %38

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = lshr i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %21

38:                                               ; preds = %31, %21
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = load i32, i32* @LM63_REG_CONVRATE, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %39, i32 %40, i32 %41)
  %43 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %44 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @UPDATE_INTERVAL(i32 %45, i32 %46)
  %48 = load %struct.lm63_data*, %struct.lm63_data** %3, align 8
  %49 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  ret void
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @UPDATE_INTERVAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
