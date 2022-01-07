; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_alloc_shash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_alloc_shash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_shash* (i32)* @chcr_alloc_shash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_shash* @chcr_alloc_shash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_shash*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  %6 = call %struct.crypto_shash* @ERR_PTR(i32 %5)
  store %struct.crypto_shash* %6, %struct.crypto_shash** %3, align 8
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %18 [
    i32 132, label %8
    i32 131, label %10
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

8:                                                ; preds = %1
  %9 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %9, %struct.crypto_shash** %3, align 8
  br label %18

10:                                               ; preds = %1
  %11 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %11, %struct.crypto_shash** %3, align 8
  br label %18

12:                                               ; preds = %1
  %13 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %13, %struct.crypto_shash** %3, align 8
  br label %18

14:                                               ; preds = %1
  %15 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %15, %struct.crypto_shash** %3, align 8
  br label %18

16:                                               ; preds = %1
  %17 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %17, %struct.crypto_shash** %3, align 8
  br label %18

18:                                               ; preds = %1, %16, %14, %12, %10, %8
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %3, align 8
  ret %struct.crypto_shash* %19
}

declare dso_local %struct.crypto_shash* @ERR_PTR(i32) #1

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
