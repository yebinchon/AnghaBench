; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c_p8_ghash_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c_p8_ghash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.p8_ghash_ctx = type { i32 }
%struct.p8_ghash_desc_ctx = type { i32, i32, i64* }

@GHASH_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @p8_ghash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_ghash_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.p8_ghash_ctx*, align 8
  %7 = alloca %struct.p8_ghash_desc_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %9 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @crypto_shash_tfm(i32 %10)
  %12 = call %struct.p8_ghash_ctx* @crypto_tfm_ctx(i32 %11)
  store %struct.p8_ghash_ctx* %12, %struct.p8_ghash_ctx** %6, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %14 = call %struct.p8_ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %13)
  store %struct.p8_ghash_desc_ctx* %14, %struct.p8_ghash_desc_ctx** %7, align 8
  %15 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %34, %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %23

37:                                               ; preds = %23
  %38 = load %struct.p8_ghash_ctx*, %struct.p8_ghash_ctx** %6, align 8
  %39 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %7, align 8
  %40 = call i32 @__ghash_block(%struct.p8_ghash_ctx* %38, %struct.p8_ghash_desc_ctx* %39)
  %41 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %2
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %49 = call i32 @memcpy(i32* %44, i32 %47, i32 %48)
  ret i32 0
}

declare dso_local %struct.p8_ghash_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_shash_tfm(i32) #1

declare dso_local %struct.p8_ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @__ghash_block(%struct.p8_ghash_ctx*, %struct.p8_ghash_desc_ctx*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
