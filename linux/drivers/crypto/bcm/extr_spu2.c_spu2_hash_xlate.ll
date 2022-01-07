; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_hash_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_hash_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Invalid hash mode %d\0A\00", align 1
@SPU2_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_MD5 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA1 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA224 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA256 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA384 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA512 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_AES128 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_AES192 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_AES256 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA3_224 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA3_256 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA3_384 = common dso_local global i32 0, align 4
@SPU2_HASH_TYPE_SHA3_512 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid hash alg %d or type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32*)* @spu2_hash_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu2_hash_xlate(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %13, align 8
  %17 = call i32 @spu2_hash_mode_xlate(i32 %15, i32* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, i32, ...) @flow_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %87

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %75 [
    i32 137, label %26
    i32 138, label %29
    i32 136, label %32
    i32 135, label %35
    i32 134, label %38
    i32 133, label %41
    i32 128, label %44
    i32 140, label %47
    i32 132, label %62
    i32 131, label %65
    i32 130, label %68
    i32 129, label %71
    i32 139, label %74
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @SPU2_HASH_TYPE_NONE, align 4
  %28 = load i32*, i32** %12, align 8
  store i32 %27, i32* %28, align 4
  br label %78

29:                                               ; preds = %24
  %30 = load i32, i32* @SPU2_HASH_TYPE_MD5, align 4
  %31 = load i32*, i32** %12, align 8
  store i32 %30, i32* %31, align 4
  br label %78

32:                                               ; preds = %24
  %33 = load i32, i32* @SPU2_HASH_TYPE_SHA1, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  br label %78

35:                                               ; preds = %24
  %36 = load i32, i32* @SPU2_HASH_TYPE_SHA224, align 4
  %37 = load i32*, i32** %12, align 8
  store i32 %36, i32* %37, align 4
  br label %78

38:                                               ; preds = %24
  %39 = load i32, i32* @SPU2_HASH_TYPE_SHA256, align 4
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  br label %78

41:                                               ; preds = %24
  %42 = load i32, i32* @SPU2_HASH_TYPE_SHA384, align 4
  %43 = load i32*, i32** %12, align 8
  store i32 %42, i32* %43, align 4
  br label %78

44:                                               ; preds = %24
  %45 = load i32, i32* @SPU2_HASH_TYPE_SHA512, align 4
  %46 = load i32*, i32** %12, align 8
  store i32 %45, i32* %46, align 4
  br label %78

47:                                               ; preds = %24
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %58 [
    i32 143, label %49
    i32 142, label %52
    i32 141, label %55
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @SPU2_HASH_TYPE_AES128, align 4
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %61

52:                                               ; preds = %47
  %53 = load i32, i32* @SPU2_HASH_TYPE_AES192, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  br label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @SPU2_HASH_TYPE_AES256, align 4
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %58, %55, %52, %49
  br label %78

62:                                               ; preds = %24
  %63 = load i32, i32* @SPU2_HASH_TYPE_SHA3_224, align 4
  %64 = load i32*, i32** %12, align 8
  store i32 %63, i32* %64, align 4
  br label %78

65:                                               ; preds = %24
  %66 = load i32, i32* @SPU2_HASH_TYPE_SHA3_256, align 4
  %67 = load i32*, i32** %12, align 8
  store i32 %66, i32* %67, align 4
  br label %78

68:                                               ; preds = %24
  %69 = load i32, i32* @SPU2_HASH_TYPE_SHA3_384, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  br label %78

71:                                               ; preds = %24
  %72 = load i32, i32* @SPU2_HASH_TYPE_SHA3_512, align 4
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  br label %78

74:                                               ; preds = %24
  br label %75

75:                                               ; preds = %24, %74
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %75, %71, %68, %65, %62, %61, %44, %41, %38, %35, %32, %29, %26
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (i8*, i32, ...) @flow_log(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %20
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @spu2_hash_mode_xlate(i32, i32*) #1

declare dso_local i32 @flow_log(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
