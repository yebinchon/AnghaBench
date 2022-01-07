; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, i32 }

@SHA_ISR = common dso_local global i32 0, align 4
@SHA_IMR = common dso_local global i32 0, align 4
@SHA_IDR = common dso_local global i32 0, align 4
@SHA_FLAGS_BUSY = common dso_local global i32 0, align 4
@SHA_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@SHA_FLAGS_CPU = common dso_local global i32 0, align 4
@SHA_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SHA interrupt when no active requests.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_sha_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.atmel_sha_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.atmel_sha_dev*
  store %struct.atmel_sha_dev* %9, %struct.atmel_sha_dev** %6, align 8
  %10 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %11 = load i32, i32* @SHA_ISR, align 4
  %12 = call i32 @atmel_sha_read(%struct.atmel_sha_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %15 = load i32, i32* @SHA_IMR, align 4
  %16 = call i32 @atmel_sha_read(%struct.atmel_sha_dev* %14, i32 %15)
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %21 = load i32, i32* @SHA_IDR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @SHA_FLAGS_BUSY, align 4
  %25 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %19
  %31 = load i32, i32* @SHA_FLAGS_OUTPUT_READY, align 4
  %32 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %33 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @SHA_FLAGS_CPU, align 4
  %37 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %38 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @SHA_FLAGS_DMA_READY, align 4
  %44 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %45 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %30
  %49 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %50 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %49, i32 0, i32 2
  %51 = call i32 @tasklet_schedule(i32* %50)
  br label %57

52:                                               ; preds = %19
  %53 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %6, align 8
  %54 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %2
  %60 = load i32, i32* @IRQ_NONE, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @atmel_sha_read(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @atmel_sha_write(%struct.atmel_sha_dev*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
