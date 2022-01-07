; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_userio.c_userio_device_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_userio.c_userio_device_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.serio = type { %struct.userio_device* }
%struct.userio_device = type { i8*, i64, i32, i32, i32 }

@USERIO_BUFSIZE = common dso_local global i32 0, align 4
@userio_misc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"Buffer overflowed, userio client isn't keeping up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @userio_device_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userio_device_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.userio_device*, align 8
  %6 = alloca i64, align 8
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.serio*, %struct.serio** %3, align 8
  %8 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 0
  %9 = load %struct.userio_device*, %struct.userio_device** %8, align 8
  store %struct.userio_device* %9, %struct.userio_device** %5, align 8
  %10 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %11 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %10, i32 0, i32 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i8, i8* %4, align 1
  %15 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %16 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %19 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %14, i8* %21, align 1
  %22 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %23 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  %26 = load i32, i32* @USERIO_BUFSIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = urem i64 %25, %27
  %29 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %30 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %32 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %35 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @userio_misc, i32 0, i32 0), align 4
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %2
  %43 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %44 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %43, i32 0, i32 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.userio_device*, %struct.userio_device** %5, align 8
  %48 = getelementptr inbounds %struct.userio_device, %struct.userio_device* %47, i32 0, i32 3
  %49 = call i32 @wake_up_interruptible(i32* %48)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
