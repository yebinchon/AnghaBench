; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_begin_acquisition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_begin_acquisition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISL29501_COMMAND_REGISTER = common dso_local global i32 0, align 4
@ISL29501_EMUL_SAMPLE_START_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot begin acquisition %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*)* @isl29501_begin_acquisition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_begin_acquisition(%struct.isl29501_private* %0) #0 {
  %2 = alloca %struct.isl29501_private*, align 8
  %3 = alloca i32, align 4
  store %struct.isl29501_private* %0, %struct.isl29501_private** %2, align 8
  %4 = load %struct.isl29501_private*, %struct.isl29501_private** %2, align 8
  %5 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i32, i32* @ISL29501_COMMAND_REGISTER, align 4
  %8 = load i32, i32* @ISL29501_EMUL_SAMPLE_START_PIN, align 4
  %9 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.isl29501_private*, %struct.isl29501_private** %2, align 8
  %14 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
