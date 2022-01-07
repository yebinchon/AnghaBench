; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/mediatek/extr_mtk-sha.c_mtk_sha_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@algs_sha1_sha224_sha256 = common dso_local global i32* null, align 8
@algs_sha384_sha512 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mtk_sha_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_sha_register_algs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @algs_sha1_sha224_sha256, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load i32*, i32** @algs_sha1_sha224_sha256, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @crypto_register_ahash(i32* %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %56

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32*, i32** @algs_sha384_sha512, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i32*, i32** @algs_sha384_sha512, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @crypto_register_ahash(i32* %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %23

41:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %69

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %3, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32*, i32** @algs_sha384_sha512, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @crypto_unregister_ahash(i32* %51)
  br label %43

53:                                               ; preds = %43
  %54 = load i32*, i32** @algs_sha1_sha224_sha256, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %17
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %3, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32*, i32** @algs_sha1_sha224_sha256, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @crypto_unregister_ahash(i32* %65)
  br label %57

67:                                               ; preds = %57
  %68 = load i32, i32* %2, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %67, %41
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @crypto_register_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
