; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_control_word_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_control_word_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONTROL_LEN = common dso_local global i32 0, align 4
@CONTROL_OPCODE_SHIFT = common dso_local global i32 0, align 4
@CONTROL_ENC_TYPE_SHIFT = common dso_local global i32 0, align 4
@CONTROL_AUTH_TYPE_SHIFT = common dso_local global i32 0, align 4
@CONTROL_STORE_FINAL_AUTH_STATE = common dso_local global i32 0, align 4
@CONTROL_START_OF_BLOCK = common dso_local global i32 0, align 4
@CONTROL_END_OF_BLOCK = common dso_local global i32 0, align 4
@CONTROL_ENCRYPT = common dso_local global i32 0, align 4
@CONTROL_HMAC_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@CONTROL_HASH_LEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @control_word_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control_word_base(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sub i32 %22, 1
  %24 = load i32, i32* @CONTROL_LEN, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* %20, align 4
  %27 = load i32, i32* @CONTROL_OPCODE_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %21, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @CONTROL_ENC_TYPE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %21, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @CONTROL_AUTH_TYPE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %21, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %10
  %44 = load i32, i32* @CONTROL_STORE_FINAL_AUTH_STATE, align 4
  %45 = load i32, i32* %21, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %21, align 4
  br label %47

47:                                               ; preds = %43, %10
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @CONTROL_START_OF_BLOCK, align 4
  %52 = load i32, i32* %21, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %21, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @CONTROL_END_OF_BLOCK, align 4
  %59 = load i32, i32* %21, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %21, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @CONTROL_ENCRYPT, align 4
  %66 = load i32, i32* %21, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %21, align 4
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = sub i32 %72, 1
  %74 = load i32, i32* @CONTROL_HMAC_KEY_LEN_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %21, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %21, align 4
  br label %78

78:                                               ; preds = %71, %68
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %15, align 4
  %83 = sub i32 %82, 1
  %84 = load i32, i32* @CONTROL_HASH_LEN_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %21, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %21, align 4
  br label %88

88:                                               ; preds = %81, %78
  %89 = load i32, i32* %21, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
