; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_imc_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_imc_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TIMEOUT = common dso_local global i32 0, align 4
@KERNCZ_IMC_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"smbus_kerncz_imc\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @piix4_imc_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_imc_sleep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MAX_TIMEOUT, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @KERNCZ_IMC_IDX, align 4
  %5 = call i32 @request_muxed_region(i32 %4, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %31

10:                                               ; preds = %0
  %11 = call i32 @piix4_imc_write(i32 130, i32 0)
  %12 = call i32 @piix4_imc_write(i32 131, i32 180)
  %13 = call i32 @piix4_imc_write(i32 128, i32 150)
  br label %14

14:                                               ; preds = %24, %10
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %2, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = call i32 @piix4_imc_read(i32 130)
  %20 = icmp eq i32 %19, 250
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @KERNCZ_IMC_IDX, align 4
  %23 = call i32 @release_region(i32 %22, i32 2)
  store i32 0, i32* %1, align 4
  br label %31

24:                                               ; preds = %18
  %25 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %14

26:                                               ; preds = %14
  %27 = load i32, i32* @KERNCZ_IMC_IDX, align 4
  %28 = call i32 @release_region(i32 %27, i32 2)
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %26, %21, %7
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @request_muxed_region(i32, i32, i8*) #1

declare dso_local i32 @piix4_imc_write(i32, i32) #1

declare dso_local i32 @piix4_imc_read(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
