; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_build_sg_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_build_sg_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nx_crypto_ctx = type { %struct.nx_sg*, %struct.TYPE_7__, %struct.nx_sg*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.nx_sg = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }

@u64 = common dso_local global i32 0, align 4
@nx_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@NX_PAGE_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nx_build_sg_lists(%struct.nx_crypto_ctx* %0, %struct.blkcipher_desc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.nx_crypto_ctx*, align 8
  %9 = alloca %struct.blkcipher_desc*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nx_sg*, align 8
  %18 = alloca %struct.nx_sg*, align 8
  %19 = alloca i32, align 4
  store %struct.nx_crypto_ctx* %0, %struct.nx_crypto_ctx** %8, align 8
  store %struct.blkcipher_desc* %1, %struct.blkcipher_desc** %9, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %22, i32 0, i32 2
  %24 = load %struct.nx_sg*, %struct.nx_sg** %23, align 8
  store %struct.nx_sg* %24, %struct.nx_sg** %17, align 8
  %25 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %25, i32 0, i32 0
  %27 = load %struct.nx_sg*, %struct.nx_sg** %26, align 8
  store %struct.nx_sg* %27, %struct.nx_sg** %18, align 8
  %28 = load i32, i32* @u64, align 4
  %29 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nx_driver, i32 0, i32 0, i32 0), align 4
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @min_t(i32 %28, i32 %33, i32 %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* @u64, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %41, i32 0, i32 3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NX_PAGE_SIZE, align 4
  %47 = sdiv i32 %45, %46
  %48 = call i32 @min_t(i32 %39, i32 %40, i32 %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %7
  %52 = load i32*, i32** %14, align 8
  %53 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %9, align 8
  %54 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %57 = call i32 @memcpy(i32* %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %7
  %59 = load i32, i32* @u64, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @min_t(i32 %59, i32 %61, i32 %66)
  %68 = load i32*, i32** %12, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.nx_sg*, %struct.nx_sg** %18, align 8
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = call %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg* %69, i32 %70, %struct.scatterlist* %71, i32 %72, i32* %73)
  store %struct.nx_sg* %74, %struct.nx_sg** %18, align 8
  %75 = load %struct.nx_sg*, %struct.nx_sg** %17, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = call %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg* %75, i32 %76, %struct.scatterlist* %77, i32 %78, i32* %79)
  store %struct.nx_sg* %80, %struct.nx_sg** %17, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %58
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = xor i32 %91, -1
  %93 = and i32 %89, %92
  %94 = sub i32 %87, %93
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %85, %58
  %96 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %96, i32 0, i32 2
  %98 = load %struct.nx_sg*, %struct.nx_sg** %97, align 8
  %99 = load %struct.nx_sg*, %struct.nx_sg** %17, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = call i8* @trim_sg_list(%struct.nx_sg* %98, %struct.nx_sg* %99, i32 %100, i32* %101)
  %103 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %104 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %106, i32 0, i32 0
  %108 = load %struct.nx_sg*, %struct.nx_sg** %107, align 8
  %109 = load %struct.nx_sg*, %struct.nx_sg** %18, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %12, align 8
  %112 = call i8* @trim_sg_list(%struct.nx_sg* %108, %struct.nx_sg* %109, i32 %110, i32* %111)
  %113 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %8, align 8
  %114 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  ret i32 0
}

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg*, i32, %struct.scatterlist*, i32, i32*) #1

declare dso_local i8* @trim_sg_list(%struct.nx_sg*, %struct.nx_sg*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
