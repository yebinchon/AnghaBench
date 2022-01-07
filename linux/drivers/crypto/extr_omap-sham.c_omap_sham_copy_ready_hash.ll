; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_ready_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_copy_ready_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64 }
%struct.omap_sham_reqctx = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@FLAGS_MODE_MASK = common dso_local global i32 0, align 4
@MD5_DIGEST_SIZE = common dso_local global i32 0, align 4
@FLAGS_BE32_SHA1 = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA224_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA384_DIGEST_SIZE = common dso_local global i32 0, align 4
@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @omap_sham_copy_ready_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_copy_ready_hash(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.omap_sham_reqctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %10 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.omap_sham_reqctx* %10, %struct.omap_sham_reqctx** %3, align 8
  %11 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %12 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  %15 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %16 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %111

22:                                               ; preds = %1
  %23 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %24 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FLAGS_MODE_MASK, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %67 [
    i32 133, label %28
    i32 132, label %33
    i32 131, label %47
    i32 130, label %52
    i32 129, label %57
    i32 128, label %62
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @MD5_DIGEST_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %68

33:                                               ; preds = %22
  %34 = load i32, i32* @FLAGS_BE32_SHA1, align 4
  %35 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %3, align 8
  %36 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @test_bit(i32 %34, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  br label %68

47:                                               ; preds = %22
  %48 = load i32, i32* @SHA224_DIGEST_SIZE, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %68

52:                                               ; preds = %22
  %53 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %68

57:                                               ; preds = %22
  %58 = load i32, i32* @SHA384_DIGEST_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %68

62:                                               ; preds = %22
  %63 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  br label %68

67:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %62, %57, %52, %47, %42, %28
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %87, %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %72

90:                                               ; preds = %72
  br label %111

91:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le32_to_cpu(i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %92

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %21, %110, %90
  ret void
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
