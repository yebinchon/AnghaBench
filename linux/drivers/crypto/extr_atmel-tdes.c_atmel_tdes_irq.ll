; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, i32, i32 }

@TDES_ISR = common dso_local global i32 0, align 4
@TDES_IMR = common dso_local global i32 0, align 4
@TDES_IDR = common dso_local global i32 0, align 4
@TDES_FLAGS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TDES interrupt when no active requests.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_tdes_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atmel_tdes_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.atmel_tdes_dev*
  store %struct.atmel_tdes_dev* %9, %struct.atmel_tdes_dev** %6, align 8
  %10 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %6, align 8
  %11 = load i32, i32* @TDES_ISR, align 4
  %12 = call i32 @atmel_tdes_read(%struct.atmel_tdes_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %6, align 8
  %15 = load i32, i32* @TDES_IMR, align 4
  %16 = call i32 @atmel_tdes_read(%struct.atmel_tdes_dev* %14, i32 %15)
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %2
  %20 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %6, align 8
  %21 = load i32, i32* @TDES_IDR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @TDES_FLAGS_BUSY, align 4
  %25 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %6, align 8
  %32 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %31, i32 0, i32 2
  %33 = call i32 @tasklet_schedule(i32* %32)
  br label %39

34:                                               ; preds = %19
  %35 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %6, align 8
  %36 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @IRQ_NONE, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @atmel_tdes_read(%struct.atmel_tdes_dev*, i32) #1

declare dso_local i32 @atmel_tdes_write(%struct.atmel_tdes_dev*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
