; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_cpu_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i64, i64, i32*, i64, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@atmel_aes_cpu_transfer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*, %struct.scatterlist*, %struct.scatterlist*, i64, i32)* @atmel_aes_cpu_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_cpu_start(%struct.atmel_aes_dev* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_aes_dev*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* %10, align 8
  %14 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %15 = call i64 @atmel_aes_padlen(i64 %13, i32 %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %62

24:                                               ; preds = %5
  %25 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %26 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %27 = call i32 @sg_nents(%struct.scatterlist* %26)
  %28 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %29 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @sg_copy_to_buffer(%struct.scatterlist* %25, i32 %27, i64 %30, i64 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %35 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %37 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %38 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %37, i32 0, i32 5
  store %struct.scatterlist* %36, %struct.scatterlist** %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %41 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %42, %43
  %45 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %46 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %48 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %52 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %54 = call i32 @AES_IDATAR(i32 0)
  %55 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %56 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %53, i32 %54, i32* %57)
  %59 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %7, align 8
  %60 = load i32, i32* @atmel_aes_cpu_transfer, align 4
  %61 = call i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %24, %21
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i64 @atmel_aes_padlen(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_copy_to_buffer(%struct.scatterlist*, i32, i64, i64) #1

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i32*) #1

declare dso_local i32 @AES_IDATAR(i32) #1

declare dso_local i32 @atmel_aes_wait_for_data_ready(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
