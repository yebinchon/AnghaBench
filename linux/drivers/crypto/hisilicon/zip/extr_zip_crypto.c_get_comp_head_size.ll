; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_get_comp_head_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_get_comp_head_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"request type does not support!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scatterlist*, i32)* @get_comp_head_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_comp_head_size(%struct.scatterlist* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %12 [
    i32 128, label %7
    i32 129, label %9
  ]

7:                                                ; preds = %2
  %8 = call i64 @TO_HEAD_SIZE(i32 128)
  store i64 %8, i64* %3, align 8
  br label %16

9:                                                ; preds = %2
  %10 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %11 = call i64 @get_gzip_head_size(%struct.scatterlist* %10)
  store i64 %11, i64* %3, align 8
  br label %16

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %12, %9, %7
  %17 = load i64, i64* %3, align 8
  ret i64 %17
}

declare dso_local i64 @TO_HEAD_SIZE(i32) #1

declare dso_local i64 @get_gzip_head_size(%struct.scatterlist*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
