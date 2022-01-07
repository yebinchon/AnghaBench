; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_unregister_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_unregister_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i64 }

@aes_algs = common dso_local global i32* null, align 8
@sha_v3_algs = common dso_local global i32* null, align 8
@SAHARA_VERSION_3 = common dso_local global i64 0, align 8
@sha_v4_algs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sahara_dev*)* @sahara_unregister_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sahara_unregister_algs(%struct.sahara_dev* %0) #0 {
  %2 = alloca %struct.sahara_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.sahara_dev* %0, %struct.sahara_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @aes_algs, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = load i32*, i32** @aes_algs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @crypto_unregister_alg(i32* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4

18:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32*, i32** @sha_v3_algs, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32*, i32** @sha_v3_algs, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @crypto_unregister_ahash(i32* %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.sahara_dev*, %struct.sahara_dev** %2, align 8
  %35 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SAHARA_VERSION_3, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** @sha_v4_algs, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32*, i32** @sha_v4_algs, align 8
  %47 = load i32, i32* %3, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @crypto_unregister_ahash(i32* %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %40

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %33
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
