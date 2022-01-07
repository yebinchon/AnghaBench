; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i64, i32 }

@SHA_FLAGS_INIT = common dso_local global i32 0, align 4
@SHA_CR = common dso_local global i32 0, align 4
@SHA_CR_SWRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hw_init(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  %5 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %6 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @clk_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @SHA_FLAGS_INIT, align 4
  %15 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %13
  %21 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %22 = load i32, i32* @SHA_CR, align 4
  %23 = load i32, i32* @SHA_CR_SWRST, align 4
  %24 = call i32 @atmel_sha_write(%struct.atmel_sha_dev* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @SHA_FLAGS_INIT, align 4
  %26 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %20, %13
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @atmel_sha_write(%struct.atmel_sha_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
