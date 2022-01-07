; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-dev.c_i2cdev_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @i2cdev_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2cdev_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.device*
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = load i64, i64* %6, align 8
  switch i64 %11, label %18 [
    i64 129, label %12
    i64 128, label %15
  ]

12:                                               ; preds = %3
  %13 = load %struct.device*, %struct.device** %8, align 8
  %14 = call i32 @i2cdev_attach_adapter(%struct.device* %13, i32* null)
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call i32 @i2cdev_detach_adapter(%struct.device* %16, i32* null)
  store i32 %17, i32* %4, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %15, %12
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @i2cdev_attach_adapter(%struct.device*, i32*) #1

declare dso_local i32 @i2cdev_detach_adapter(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
