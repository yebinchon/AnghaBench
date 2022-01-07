; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c___ghash_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c___ghash_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p8_ghash_ctx = type { i32, i32 }
%struct.p8_ghash_desc_ctx = type { i64 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p8_ghash_ctx*, %struct.p8_ghash_desc_ctx*, i32*, i32)* @__ghash_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ghash_blocks(%struct.p8_ghash_ctx* %0, %struct.p8_ghash_desc_ctx* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.p8_ghash_ctx*, align 8
  %6 = alloca %struct.p8_ghash_desc_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.p8_ghash_ctx* %0, %struct.p8_ghash_ctx** %5, align 8
  store %struct.p8_ghash_desc_ctx* %1, %struct.p8_ghash_desc_ctx** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i64 (...) @crypto_simd_usable()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %4
  %12 = call i32 (...) @preempt_disable()
  %13 = call i32 (...) @pagefault_disable()
  %14 = call i32 (...) @enable_kernel_vsx()
  %15 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.p8_ghash_ctx*, %struct.p8_ghash_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.p8_ghash_ctx, %struct.p8_ghash_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @gcm_ghash_p8(i64 %17, i32 %20, i32* %21, i32 %22)
  %24 = call i32 (...) @disable_kernel_vsx()
  %25 = call i32 (...) @pagefault_enable()
  %26 = call i32 (...) @preempt_enable()
  br label %55

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %39 = call i32 @crypto_xor(i32* %36, i32* %37, i32 %38)
  %40 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load %struct.p8_ghash_ctx*, %struct.p8_ghash_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.p8_ghash_ctx, %struct.p8_ghash_ctx* %44, i32 0, i32 0
  %46 = call i32 @gf128mul_lle(i32* %43, i32* %45)
  %47 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %7, align 8
  br label %28

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %54, %11
  ret void
}

declare dso_local i64 @crypto_simd_usable(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_vsx(...) #1

declare dso_local i32 @gcm_ghash_p8(i64, i32, i32*, i32) #1

declare dso_local i32 @disable_kernel_vsx(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @gf128mul_lle(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
