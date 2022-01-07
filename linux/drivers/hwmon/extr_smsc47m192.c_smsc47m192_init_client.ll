; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_smsc47m192_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_smsc47m192_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@SMSC47M192_REG_CONFIG = common dso_local global i32 0, align 4
@SMSC47M192_REG_SFR = common dso_local global i32 0, align 4
@SMSC47M192_REG_TEMP_MIN = common dso_local global i32* null, align 8
@SMSC47M192_REG_TEMP_MAX = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @smsc47m192_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc47m192_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = load i32, i32* @SMSC47M192_REG_CONFIG, align 4
  %8 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 253
  %16 = or i32 %15, 2
  %17 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %12, i32 %13, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @SMSC47M192_REG_IN_MIN(i32 %27)
  %29 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %26, i32 %28, i32 0)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @SMSC47M192_REG_IN_MAX(i32 %31)
  %33 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %30, i32 %32, i32 255)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %22

37:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 3
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %43 = load i32*, i32** @SMSC47M192_REG_TEMP_MIN, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %42, i32 %47, i32 128)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = load i32*, i32** @SMSC47M192_REG_TEMP_MAX, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %49, i32 %54, i32 127)
  br label %56

56:                                               ; preds = %41
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %61 = load i32, i32* @SMSC47M192_REG_CONFIG, align 4
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 247
  %64 = or i32 %63, 1
  %65 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %59, %1
  ret void
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @SMSC47M192_REG_IN_MIN(i32) #1

declare dso_local i32 @SMSC47M192_REG_IN_MAX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
