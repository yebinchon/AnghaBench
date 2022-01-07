; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.h_rxe_crc32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.h_rxe_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.rxe_dev = type { i32 }

@shash = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed crc calculation, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*, i32, i8*, i64)* @rxe_crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_crc32(%struct.rxe_dev* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %13 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %14 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__* %12, i32 %15)
  %17 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %24 = call i64 @shash_desc_ctx(%struct.TYPE_5__* %23)
  %25 = inttoptr i64 %24 to i32*
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @crypto_shash_update(%struct.TYPE_5__* %26, i8* %27, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @crc32_le(i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %5, align 4
  br label %49

40:                                               ; preds = %4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %42 = call i64 @shash_desc_ctx(%struct.TYPE_5__* %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @shash, align 8
  %46 = call i64 @shash_desc_ctx(%struct.TYPE_5__* %45)
  %47 = call i32 @barrier_data(i64 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %40, %33
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @shash_desc_ctx(%struct.TYPE_5__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @crc32_le(i32, i8*, i64) #1

declare dso_local i32 @barrier_data(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
