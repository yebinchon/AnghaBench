; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_xmit_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, i32, i64, i32, i64, i32)* @atmel_sha_xmit_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_xmit_start(%struct.atmel_sha_dev* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_sha_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %8, align 8
  %15 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %6
  %20 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @atmel_sha_xmit_dma(%struct.atmel_sha_dev* %20, i32 %21, i64 %22, i32 %23, i64 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %35

27:                                               ; preds = %6
  %28 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @atmel_sha_xmit_pdc(%struct.atmel_sha_dev* %28, i32 %29, i64 %30, i32 %31, i64 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @atmel_sha_xmit_dma(%struct.atmel_sha_dev*, i32, i64, i32, i64, i32) #1

declare dso_local i32 @atmel_sha_xmit_pdc(%struct.atmel_sha_dev*, i32, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
