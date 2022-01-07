; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_validate_data_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_cipher.c_validate_data_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_cipher_ctx = type { i32, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@SM4_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc_cipher_ctx*, i32)* @validate_data_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_data_size(%struct.cc_cipher_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cc_cipher_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.cc_cipher_ctx* %0, %struct.cc_cipher_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %50 [
    i32 130, label %9
    i32 129, label %29
    i32 128, label %36
  ]

9:                                                ; preds = %2
  %10 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %27 [
    i32 131, label %13
    i32 136, label %13
    i32 132, label %19
    i32 135, label %19
    i32 134, label %20
    i32 137, label %20
    i32 133, label %20
    i32 138, label %20
  ]

13:                                               ; preds = %9, %9
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %54

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %9, %9
  store i32 0, i32* %3, align 4
  br label %54

20:                                               ; preds = %9, %9, %9, %9
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %23 = call i32 @IS_ALIGNED(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %54

26:                                               ; preds = %20
  br label %28

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %26, %18
  br label %51

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %32 = call i32 @IS_ALIGNED(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %54

35:                                               ; preds = %29
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.cc_cipher_ctx*, %struct.cc_cipher_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.cc_cipher_ctx, %struct.cc_cipher_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %48 [
    i32 135, label %40
    i32 134, label %41
    i32 137, label %41
  ]

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %54

41:                                               ; preds = %36, %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SM4_BLOCK_SIZE, align 4
  %44 = call i32 @IS_ALIGNED(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %54

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %36, %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %2, %49
  br label %51

51:                                               ; preds = %50, %35, %28
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %46, %40, %34, %25, %19, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
