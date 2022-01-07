; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@LM93_REG_GPI_VID_CTL = common dso_local global i32 0, align 4
@vid_agtl = common dso_local global i64 0, align 8
@init = common dso_local global i64 0, align 8
@LM93_REG_CONFIG = common dso_local global i32 0, align 4
@LM93_REG_STATUS_CONTROL = common dso_local global i32 0, align 4
@LM93_REG_SLEEP_CONTROL = common dso_local global i32 0, align 4
@LM93_REG_MISC_ERR_MASK = common dso_local global i32 0, align 4
@vccp_limit_type = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"timed out waiting for sensor chip to signal ready!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @lm93_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm93_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = load i32, i32* @LM93_REG_GPI_VID_CTL, align 4
  %7 = call i32 @lm93_read_byte(%struct.i2c_client* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = load i32, i32* @LM93_REG_GPI_VID_CTL, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* @vid_agtl, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 3, i32 0
  %15 = or i32 %10, %14
  %16 = call i32 @lm93_write_byte(%struct.i2c_client* %8, i32 %9, i32 %15)
  %17 = load i64, i64* @init, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = load i32, i32* @LM93_REG_CONFIG, align 4
  %22 = call i32 @lm93_read_byte(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %24 = load i32, i32* @LM93_REG_CONFIG, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, 8
  %27 = call i32 @lm93_write_byte(%struct.i2c_client* %23, i32 %24, i32 %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = load i32, i32* @LM93_REG_STATUS_CONTROL, align 4
  %30 = call i32 @lm93_read_byte(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %32 = load i32, i32* @LM93_REG_STATUS_CONTROL, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 2
  %35 = call i32 @lm93_write_byte(%struct.i2c_client* %31, i32 %32, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %37 = load i32, i32* @LM93_REG_SLEEP_CONTROL, align 4
  %38 = call i32 @lm93_write_byte(%struct.i2c_client* %36, i32 %37, i32 0)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = load i32, i32* @LM93_REG_MISC_ERR_MASK, align 4
  %41 = call i32 @lm93_read_byte(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, -4
  store i32 %43, i32* %4, align 4
  %44 = load i64*, i64** @vccp_limit_type, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 16, i32 0
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i64*, i64** @vccp_limit_type, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 32, i32 0
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = load i32, i32* @LM93_REG_MISC_ERR_MASK, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @lm93_write_byte(%struct.i2c_client* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %19, %1
  %67 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %68 = load i32, i32* @LM93_REG_CONFIG, align 4
  %69 = call i32 @lm93_read_byte(%struct.i2c_client* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %71 = load i32, i32* @LM93_REG_CONFIG, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, 1
  %74 = call i32 @lm93_write_byte(%struct.i2c_client* %70, i32 %71, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %87, %66
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 20
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = call i32 @msleep(i32 10)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %81 = load i32, i32* @LM93_REG_CONFIG, align 4
  %82 = call i32 @lm93_read_byte(%struct.i2c_client* %80, i32 %81)
  %83 = and i32 %82, 128
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %94

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 @dev_warn(i32* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %85
  ret void
}

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
