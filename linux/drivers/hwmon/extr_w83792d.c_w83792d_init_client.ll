; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83792d.c_w83792d_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@init = common dso_local global i64 0, align 8
@W83792D_REG_CONFIG = common dso_local global i32 0, align 4
@W83792D_REG_VID_IN_B = common dso_local global i32 0, align 4
@W83792D_REG_TEMP2_CONFIG = common dso_local global i32 0, align 4
@W83792D_REG_TEMP3_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @w83792d_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83792d_init_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load i64, i64* @init, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %10 = load i32, i32* @W83792D_REG_CONFIG, align 4
  %11 = call i32 @w83792d_write_value(%struct.i2c_client* %9, i32 %10, i32 128)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = load i32, i32* @W83792D_REG_VID_IN_B, align 4
  %15 = call i32 @w83792d_read_value(%struct.i2c_client* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = load i32, i32* @W83792D_REG_VID_IN_B, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 191
  %20 = call i32 @w83792d_write_value(%struct.i2c_client* %16, i32 %17, i32 %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = load i32, i32* @W83792D_REG_TEMP2_CONFIG, align 4
  %23 = call i32 @w83792d_read_value(%struct.i2c_client* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = load i32, i32* @W83792D_REG_TEMP3_CONFIG, align 4
  %26 = call i32 @w83792d_read_value(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %28 = load i32, i32* @W83792D_REG_TEMP2_CONFIG, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 230
  %31 = call i32 @w83792d_write_value(%struct.i2c_client* %27, i32 %28, i32 %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = load i32, i32* @W83792D_REG_TEMP3_CONFIG, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 230
  %36 = call i32 @w83792d_write_value(%struct.i2c_client* %32, i32 %33, i32 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = load i32, i32* @W83792D_REG_CONFIG, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = load i32, i32* @W83792D_REG_CONFIG, align 4
  %41 = call i32 @w83792d_read_value(%struct.i2c_client* %39, i32 %40)
  %42 = and i32 %41, 247
  %43 = or i32 %42, 1
  %44 = call i32 @w83792d_write_value(%struct.i2c_client* %37, i32 %38, i32 %43)
  ret void
}

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
