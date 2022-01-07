; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_get_sg_skip_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_get_sg_skip_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SPLIT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i64, i64, %struct.scatterlist**)* @get_sg_skip_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sg_skip_bytes(%struct.scatterlist* %0, i64 %1, i64 %2, %struct.scatterlist** %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.scatterlist**, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca [2 x i32], align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.scatterlist** %3, %struct.scatterlist*** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %11, i64* %12, align 16
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %13, i64* %14, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %17 = load %struct.scatterlist**, %struct.scatterlist*** %8, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @sg_split(%struct.scatterlist* %15, i32 0, i32 0, i32 2, i64* %16, %struct.scatterlist** %17, i32* %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @sg_split(%struct.scatterlist*, i32, i32, i32, i64*, %struct.scatterlist**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
