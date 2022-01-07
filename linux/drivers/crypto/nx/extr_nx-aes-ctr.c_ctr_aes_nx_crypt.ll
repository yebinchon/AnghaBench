; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr_aes_nx_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx-aes-ctr.c_ctr_aes_nx_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32, i32 }
%struct.scatterlist = type { i32 }
%struct.nx_crypto_ctx = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__, %struct.nx_csbcpb* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.nx_csbcpb = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @ctr_aes_nx_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_aes_nx_crypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nx_crypto_ctx*, align 8
  %10 = alloca %struct.nx_csbcpb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nx_crypto_ctx* @crypto_blkcipher_ctx(i32 %17)
  store %struct.nx_crypto_ctx* %18, %struct.nx_crypto_ctx** %9, align 8
  %19 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %19, i32 0, i32 3
  %21 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %20, align 8
  store %struct.nx_csbcpb* %21, %struct.nx_csbcpb** %10, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %100, %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %31 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %36 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nx_build_sg_lists(%struct.nx_crypto_ctx* %30, %struct.blkcipher_desc* %31, %struct.scatterlist* %32, %struct.scatterlist* %33, i32* %13, i32 %34, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %105

44:                                               ; preds = %26
  %45 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %105

59:                                               ; preds = %50
  %60 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %61 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %61, i32 0, i32 2
  %63 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %64 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @nx_hcall_sync(%struct.nx_crypto_ctx* %60, %struct.TYPE_12__* %62, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %105

72:                                               ; preds = %59
  %73 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %74 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %77 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %82 = call i32 @memcpy(i32 %75, i32 %80, i32 %81)
  %83 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %84 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = call i32 @atomic_inc(i32* %86)
  %88 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %10, align 8
  %89 = getelementptr inbounds %struct.nx_csbcpb, %struct.nx_csbcpb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %93 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = call i32 @atomic64_add(i32 %91, i32* %95)
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %72
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %26, label %104

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %71, %56, %43
  %106 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %9, align 8
  %107 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %106, i32 0, i32 0
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i32, i32* %14, align 4
  ret i32 %110
}

declare dso_local %struct.nx_crypto_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nx_build_sg_lists(%struct.nx_crypto_ctx*, %struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32*, i32, i32) #1

declare dso_local i32 @nx_hcall_sync(%struct.nx_crypto_ctx*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
