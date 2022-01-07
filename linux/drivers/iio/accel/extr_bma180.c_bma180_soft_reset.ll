; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma180_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BMA180_RESET_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to reset the chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bma180_data*)* @bma180_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma180_soft_reset(%struct.bma180_data* %0) #0 {
  %2 = alloca %struct.bma180_data*, align 8
  %3 = alloca i32, align 4
  store %struct.bma180_data* %0, %struct.bma180_data** %2, align 8
  %4 = load %struct.bma180_data*, %struct.bma180_data** %2, align 8
  %5 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.bma180_data*, %struct.bma180_data** %2, align 8
  %8 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BMA180_RESET_VAL, align 4
  %13 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__* %6, i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.bma180_data*, %struct.bma180_data** %2, align 8
  %18 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
