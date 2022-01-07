; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_cbc_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_cbc_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aes_ctx = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.blkcipher_walk = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @cbc_aes_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_aes_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.aes_ctx* @blk_aes_ctx(i32 %15)
  store %struct.aes_ctx* %16, %struct.aes_ctx** %9, align 8
  %17 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 @padlock_reset_key(i32* %19)
  %21 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %21, %struct.scatterlist* %22, i32 %23)
  %25 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %26 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %25, %struct.blkcipher_walk* %10)
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %31, %4
  %28 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %41 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %50 = udiv i32 %48, %49
  %51 = call i32* @padlock_xcrypt_cbc(i32 %35, i32 %39, i32 %42, i32 %44, i32* %47, i32 %50)
  store i32* %51, i32** %12, align 8
  %52 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = call i32 @memcpy(i32 %53, i32* %54, i32 %55)
  %57 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %58 = sub i32 %57, 1
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %61, %struct.blkcipher_walk* %10, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @padlock_store_cword(i32* %67)
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local %struct.aes_ctx* @blk_aes_ctx(i32) #1

declare dso_local i32 @padlock_reset_key(i32*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32* @padlock_xcrypt_cbc(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @padlock_store_cword(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
