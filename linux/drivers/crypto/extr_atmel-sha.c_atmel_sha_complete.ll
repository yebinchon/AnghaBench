; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, i32, i64, i64, i32, %struct.ahash_request* }
%struct.ahash_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }

@SHA_FLAGS_BUSY = common dso_local global i32 0, align 4
@SHA_FLAGS_FINAL = common dso_local global i32 0, align 4
@SHA_FLAGS_CPU = common dso_local global i32 0, align 4
@SHA_FLAGS_DMA_READY = common dso_local global i32 0, align 4
@SHA_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@SHA_FLAGS_DUMP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*, i32)* @atmel_sha_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_complete(%struct.atmel_sha_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahash_request*, align 8
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %7 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %6, i32 0, i32 5
  %8 = load %struct.ahash_request*, %struct.ahash_request** %7, align 8
  store %struct.ahash_request* %8, %struct.ahash_request** %5, align 8
  %9 = load i32, i32* @SHA_FLAGS_BUSY, align 4
  %10 = load i32, i32* @SHA_FLAGS_FINAL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SHA_FLAGS_CPU, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SHA_FLAGS_DMA_READY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SHA_FLAGS_OUTPUT_READY, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SHA_FLAGS_DUMP_REG, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_disable(i32 %27)
  %29 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %35 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33, %2
  %39 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %40 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_2__*, i32)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %46 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %47, align 8
  %49 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %50 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = call i32 %48(%struct.TYPE_2__* %50, i32 %51)
  br label %53

53:                                               ; preds = %44, %38, %33
  %54 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %54, i32 0, i32 1
  %56 = call i32 @tasklet_schedule(i32* %55)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
