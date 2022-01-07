; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_set_temphyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_set_temphyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm90_data = type { i64, i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@adt7461 = common dso_local global i64 0, align 8
@tmp451 = common dso_local global i64 0, align 8
@LOCAL_CRIT = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@LM90_REG_W_TCRIT_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm90_data*, i64)* @lm90_set_temphyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_set_temphyst(%struct.lm90_data* %0, i64 %1) #0 {
  %3 = alloca %struct.lm90_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lm90_data* %0, %struct.lm90_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %8, i32 0, i32 3
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %5, align 8
  %11 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @adt7461, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %18 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @tmp451, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %2
  %23 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %24 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %25 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @LOCAL_CRIT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @temp_from_u8_adt7461(%struct.lm90_data* %23, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %54

31:                                               ; preds = %16
  %32 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %33 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @max6646, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %39 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @LOCAL_CRIT, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @temp_from_u8(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %53

45:                                               ; preds = %31
  %46 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %47 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @LOCAL_CRIT, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @temp_from_s8(i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %45, %37
  br label %54

54:                                               ; preds = %53, %22
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %4, align 8
  %58 = sub nsw i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @hyst_to_reg(i32 %59)
  %61 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %62 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %64 = load i32, i32* @LM90_REG_W_TCRIT_HYST, align 4
  %65 = load %struct.lm90_data*, %struct.lm90_data** %3, align 8
  %66 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %63, i32 %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @temp_from_u8_adt7461(%struct.lm90_data*, i32) #1

declare dso_local i32 @temp_from_u8(i32) #1

declare dso_local i32 @temp_from_s8(i32) #1

declare dso_local i32 @hyst_to_reg(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
