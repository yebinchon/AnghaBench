; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_hw_version_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_hw_version_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"version: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_hw_version_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_hw_version_init(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %5 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %6 = call i32 @atmel_aes_hw_init(%struct.atmel_aes_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %13 = call i32 @atmel_aes_get_version(%struct.atmel_aes_dev* %12)
  %14 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable(i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %11, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @atmel_aes_hw_init(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_get_version(%struct.atmel_aes_dev*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
