; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_param_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_param_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1145_data = type { i32 }

@SI1145_CMD_PARAM_QUERY = common dso_local global i32 0, align 4
@SI1145_REG_PARAM_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1145_data*, i32)* @si1145_param_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_param_query(%struct.si1145_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si1145_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.si1145_data* %0, %struct.si1145_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %8 = load i32, i32* @SI1145_CMD_PARAM_QUERY, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 31
  %11 = or i32 %8, %10
  %12 = call i32 @si1145_command(%struct.si1145_data* %7, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.si1145_data*, %struct.si1145_data** %4, align 8
  %19 = getelementptr inbounds %struct.si1145_data, %struct.si1145_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SI1145_REG_PARAM_RD, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @si1145_command(%struct.si1145_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
