; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c___ghash_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/vmx/extr_ghash.c___ghash_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p8_ghash_ctx = type { i32, i32 }
%struct.p8_ghash_desc_ctx = type { i64, i32 }

@GHASH_DIGEST_SIZE = common dso_local global i32 0, align 4
@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p8_ghash_ctx*, %struct.p8_ghash_desc_ctx*)* @__ghash_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ghash_block(%struct.p8_ghash_ctx* %0, %struct.p8_ghash_desc_ctx* %1) #0 {
  %3 = alloca %struct.p8_ghash_ctx*, align 8
  %4 = alloca %struct.p8_ghash_desc_ctx*, align 8
  store %struct.p8_ghash_ctx* %0, %struct.p8_ghash_ctx** %3, align 8
  store %struct.p8_ghash_desc_ctx* %1, %struct.p8_ghash_desc_ctx** %4, align 8
  %5 = call i64 (...) @crypto_simd_usable()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = call i32 (...) @preempt_disable()
  %9 = call i32 (...) @pagefault_disable()
  %10 = call i32 (...) @enable_kernel_vsx()
  %11 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.p8_ghash_ctx*, %struct.p8_ghash_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.p8_ghash_ctx, %struct.p8_ghash_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GHASH_DIGEST_SIZE, align 4
  %21 = call i32 @gcm_ghash_p8(i64 %13, i32 %16, i32 %19, i32 %20)
  %22 = call i32 (...) @disable_kernel_vsx()
  %23 = call i32 (...) @pagefault_enable()
  %24 = call i32 (...) @preempt_enable()
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %34 = call i32 @crypto_xor(i32* %29, i32 %32, i32 %33)
  %35 = load %struct.p8_ghash_desc_ctx*, %struct.p8_ghash_desc_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.p8_ghash_desc_ctx, %struct.p8_ghash_desc_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.p8_ghash_ctx*, %struct.p8_ghash_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.p8_ghash_ctx, %struct.p8_ghash_ctx* %39, i32 0, i32 0
  %41 = call i32 @gf128mul_lle(i32* %38, i32* %40)
  br label %42

42:                                               ; preds = %25, %7
  ret void
}

declare dso_local i64 @crypto_simd_usable(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @enable_kernel_vsx(...) #1

declare dso_local i32 @gcm_ghash_p8(i64, i32, i32, i32) #1

declare dso_local i32 @disable_kernel_vsx(...) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @crypto_xor(i32*, i32, i32) #1

declare dso_local i32 @gf128mul_lle(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
