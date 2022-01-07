; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_cbc_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_padlock-aes.c_cbc_aes_decrypt.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @cbc_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_aes_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.aes_ctx*, align 8
  %10 = alloca %struct.blkcipher_walk, align 4
  %11 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %13 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.aes_ctx* @blk_aes_ctx(i32 %14)
  store %struct.aes_ctx* %15, %struct.aes_ctx** %9, align 8
  %16 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %17 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = call i32 @padlock_reset_key(i32* %18)
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %10, %struct.scatterlist* %20, %struct.scatterlist* %21, i32 %22)
  %24 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %25 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %24, %struct.blkcipher_walk* %10)
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %30, %4
  %27 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %40 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %45 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %49 = udiv i32 %47, %48
  %50 = call i32 @padlock_xcrypt_cbc(i32 %34, i32 %38, i32 %41, i32 %43, i32* %46, i32 %49)
  %51 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %52 = sub i32 %51, 1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %55, %struct.blkcipher_walk* %10, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load %struct.aes_ctx*, %struct.aes_ctx** %9, align 8
  %60 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = call i32 @padlock_store_cword(i32* %61)
  %63 = load i32, i32* %11, align 4
  ret i32 %63
}

declare dso_local %struct.aes_ctx* @blk_aes_ctx(i32) #1

declare dso_local i32 @padlock_reset_key(i32*) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @padlock_xcrypt_cbc(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @padlock_store_cword(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
