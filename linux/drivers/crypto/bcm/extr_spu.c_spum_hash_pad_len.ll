; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu.c_spum_hash_pad_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu.c_spum_hash_pad_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_ALG_AES = common dso_local global i32 0, align 4
@HASH_MODE_XCBC = common dso_local global i32 0, align 4
@HASH_ALG_SHA384 = common dso_local global i32 0, align 4
@HASH_ALG_SHA512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spum_hash_pad_len(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @HASH_ALG_AES, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @HASH_MODE_XCBC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp uge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %69

36:                                               ; preds = %16, %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = urem i32 %37, %38
  %40 = add i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @HASH_ALG_SHA384, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HASH_ALG_SHA512, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %36
  store i32 8, i32* %10, align 4
  br label %50

49:                                               ; preds = %44
  store i32 4, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub i32 %54, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %59, %50
  %64 = load i32, i32* %10, align 4
  %65 = add i32 1, %64
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %34
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
