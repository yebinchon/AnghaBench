; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_wait_for_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_wait_for_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32 (%struct.atmel_aes_dev*)* }

@AES_ISR = common dso_local global i32 0, align 4
@AES_INT_DATARDY = common dso_local global i32 0, align 4
@AES_IER = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, i32 (%struct.atmel_aes_dev*)*)* @atmel_aes_wait_for_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev* %0, i32 (%struct.atmel_aes_dev*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_aes_dev*, align 8
  %5 = alloca i32 (%struct.atmel_aes_dev*)*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %4, align 8
  store i32 (%struct.atmel_aes_dev*)* %1, i32 (%struct.atmel_aes_dev*)** %5, align 8
  %7 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %8 = load i32, i32* @AES_ISR, align 4
  %9 = call i32 @atmel_aes_read(%struct.atmel_aes_dev* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AES_INT_DATARDY, align 4
  %12 = and i32 %10, %11
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32 (%struct.atmel_aes_dev*)*, i32 (%struct.atmel_aes_dev*)** %5, align 8
  %17 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %18 = call i32 %16(%struct.atmel_aes_dev* %17)
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load i32 (%struct.atmel_aes_dev*)*, i32 (%struct.atmel_aes_dev*)** %5, align 8
  %21 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %22 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %21, i32 0, i32 0
  store i32 (%struct.atmel_aes_dev*)* %20, i32 (%struct.atmel_aes_dev*)** %22, align 8
  %23 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %24 = load i32, i32* @AES_IER, align 4
  %25 = load i32, i32* @AES_INT_DATARDY, align 4
  %26 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @EINPROGRESS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @atmel_aes_read(%struct.atmel_aes_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atmel_aes_write(%struct.atmel_aes_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
