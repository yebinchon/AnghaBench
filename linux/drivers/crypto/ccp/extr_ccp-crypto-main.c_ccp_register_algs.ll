; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-main.c_ccp_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-crypto-main.c_ccp_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aes_disable = common dso_local global i32 0, align 4
@cipher_algs = common dso_local global i32 0, align 4
@hash_algs = common dso_local global i32 0, align 4
@aead_algs = common dso_local global i32 0, align 4
@des3_disable = common dso_local global i32 0, align 4
@sha_disable = common dso_local global i32 0, align 4
@rsa_disable = common dso_local global i32 0, align 4
@akcipher_algs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ccp_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_register_algs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @aes_disable, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %0
  %6 = call i32 @ccp_register_aes_algs(i32* @cipher_algs)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %61

11:                                               ; preds = %5
  %12 = call i32 @ccp_register_aes_cmac_algs(i32* @hash_algs)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %61

17:                                               ; preds = %11
  %18 = call i32 @ccp_register_aes_xts_algs(i32* @cipher_algs)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %61

23:                                               ; preds = %17
  %24 = call i32 @ccp_register_aes_aeads(i32* @aead_algs)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %61

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %0
  %31 = load i32, i32* @des3_disable, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = call i32 @ccp_register_des3_algs(i32* @cipher_algs)
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %1, align 4
  br label %61

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* @sha_disable, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = call i32 @ccp_register_sha_algs(i32* @hash_algs)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  store i32 %48, i32* %1, align 4
  br label %61

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* @rsa_disable, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = call i32 @ccp_register_rsa_algs(i32* @akcipher_algs)
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %2, align 4
  store i32 %58, i32* %1, align 4
  br label %61

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %50
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %60, %57, %47, %37, %27, %21, %15, %9
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @ccp_register_aes_algs(i32*) #1

declare dso_local i32 @ccp_register_aes_cmac_algs(i32*) #1

declare dso_local i32 @ccp_register_aes_xts_algs(i32*) #1

declare dso_local i32 @ccp_register_aes_aeads(i32*) #1

declare dso_local i32 @ccp_register_des3_algs(i32*) #1

declare dso_local i32 @ccp_register_sha_algs(i32*) #1

declare dso_local i32 @ccp_register_rsa_algs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
