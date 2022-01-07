; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_validate_keys_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_validate_keys_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_cipher_ctx = type { i32, i32 }

@DRV_CIPHER_XTS = common dso_local global i32 0, align 4
@DRV_CIPHER_ESSIV = common dso_local global i32 0, align 4
@DRV_CIPHER_BITLOCKER = common dso_local global i32 0, align 4
@DES3_EDE_KEY_SIZE = common dso_local global i32 0, align 4
@DES_KEY_SIZE = common dso_local global i32 0, align 4
@SM4_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_cipher_ctx*, i32)* @validate_keys_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_keys_sizes(%struct.cc_cipher_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cc_cipher_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.cc_cipher_ctx* %0, %struct.cc_cipher_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %70 [
    i32 130, label %9
    i32 129, label %54
    i32 128, label %64
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %52 [
    i32 133, label %11
    i32 132, label %11
    i32 131, label %31
    i32 264, label %32
    i32 262, label %32
  ]

11:                                               ; preds = %9, %9
  %12 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DRV_CIPHER_XTS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DRV_CIPHER_ESSIV, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DRV_CIPHER_BITLOCKER, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %74

30:                                               ; preds = %23, %17, %11
  br label %53

31:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %74

32:                                               ; preds = %9, %9
  %33 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DRV_CIPHER_XTS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DRV_CIPHER_ESSIV, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DRV_CIPHER_BITLOCKER, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38, %32
  store i32 0, i32* %3, align 4
  br label %74

51:                                               ; preds = %44
  br label %53

52:                                               ; preds = %9
  br label %53

53:                                               ; preds = %52, %51, %30
  br label %71

54:                                               ; preds = %2
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @DES_KEY_SIZE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  store i32 0, i32* %3, align 4
  br label %74

63:                                               ; preds = %58
  br label %71

64:                                               ; preds = %2
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SM4_KEY_SIZE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %74

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %2, %69
  br label %71

71:                                               ; preds = %70, %63, %53
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %68, %62, %50, %31, %29
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
