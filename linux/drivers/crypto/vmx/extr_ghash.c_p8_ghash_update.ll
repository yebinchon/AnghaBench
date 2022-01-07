; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c_p8_ghash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c_p8_ghash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.p8_ghash_ctx = type { i32 }
%struct.p8_ghash_desc_ctx = type { i32, i64 }

@GHASH_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @p8_ghash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_ghash_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.p8_ghash_ctx*, align 8
  %10 = alloca %struct.p8_ghash_desc_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %12 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @crypto_shash_tfm(i32 %13)
  %15 = call %struct.p8_ghash_ctx* @crypto_tfm_ctx(i32 %14)
  store %struct.p8_ghash_ctx* %15, %struct.p8_ghash_ctx** %9, align 8
  %16 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %17 = call %struct.p8_ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %16)
  store %struct.p8_ghash_desc_ctx* %17, %struct.p8_ghash_desc_ctx** %10, align 8
  %18 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %3
  %23 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %24 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %25, %26
  %28 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %35 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @memcpy(i64 %38, i32* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %44 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %4, align 4
  br label %118

47:                                               ; preds = %22
  %48 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %49 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %52 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %58 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub i32 %57, %60
  %62 = call i32 @memcpy(i64 %55, i32* %56, i32 %61)
  %63 = load %struct.p8_ghash_ctx*, %struct.p8_ghash_ctx** %9, align 8
  %64 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %65 = call i32 @__ghash_block(%struct.p8_ghash_ctx* %63, %struct.p8_ghash_desc_ctx* %64)
  %66 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %67 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub i32 %66, %69
  %71 = load i32*, i32** %6, align 8
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %6, align 8
  %74 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %75 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub i32 %74, %77
  %79 = load i32, i32* %7, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %82 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %47, %3
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %86 = sub i32 %85, 1
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load %struct.p8_ghash_ctx*, %struct.p8_ghash_ctx** %9, align 8
  %93 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @__ghash_blocks(%struct.p8_ghash_ctx* %92, %struct.p8_ghash_desc_ctx* %93, i32* %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %91, %83
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %109 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @memcpy(i64 %110, i32* %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %10, align 8
  %116 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %107, %104
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %30
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.p8_ghash_ctx* @crypto_tfm_ctx(i32) #1

declare dso_local i32 @crypto_shash_tfm(i32) #1

declare dso_local %struct.p8_ghash_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @__ghash_block(%struct.p8_ghash_ctx*, %struct.p8_ghash_desc_ctx*) #1

declare dso_local i32 @__ghash_blocks(%struct.p8_ghash_ctx*, %struct.p8_ghash_desc_ctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
