; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6642.c_max6642_init_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6642.c_max6642_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max6642_data = type { i8** }
%struct.i2c_client = type { i32 }

@MAX6642_REG_R_CONFIG = common dso_local global i32 0, align 4
@MAX6642_REG_W_CONFIG = common dso_local global i32 0, align 4
@MAX6642_REG_R_LOCAL_HIGH = common dso_local global i32 0, align 4
@MAX6642_REG_R_REMOTE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max6642_data*, %struct.i2c_client*)* @max6642_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max6642_init_client(%struct.max6642_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.max6642_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.max6642_data* %0, %struct.max6642_data** %3, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %4, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %7 = load i32, i32* @MAX6642_REG_R_CONFIG, align 4
  %8 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %6, i32 %7)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 64
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load i32, i32* @MAX6642_REG_W_CONFIG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 191
  %18 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %14, i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @MAX6642_REG_R_LOCAL_HIGH, align 4
  %22 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %20, i32 %21)
  %23 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %24 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %22, i8** %26, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @MAX6642_REG_R_REMOTE_HIGH, align 4
  %29 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %27, i32 %28)
  %30 = load %struct.max6642_data*, %struct.max6642_data** %3, align 8
  %31 = getelementptr inbounds %struct.max6642_data, %struct.max6642_data* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* %29, i8** %33, align 8
  ret void
}

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
