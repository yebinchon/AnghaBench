; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_lmk_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_lmk_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.crypt_config = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iv_lmk_private }
%struct.iv_lmk_private = type { i32*, i32 }
%struct.dm_crypt_request = type { i32 }
%struct.md5_state = type { i32* }

@desc = common dso_local global %struct.TYPE_8__* null, align 8
@LMK_SEED_SIZE = common dso_local global i32 0, align 4
@MD5_HASH_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, i32*, %struct.dm_crypt_request*, i32*)* @crypt_iv_lmk_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_lmk_one(%struct.crypt_config* %0, i32* %1, %struct.dm_crypt_request* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dm_crypt_request*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iv_lmk_private*, align 8
  %11 = alloca %struct.md5_state, align 8
  %12 = alloca [4 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.dm_crypt_request* %2, %struct.dm_crypt_request** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %16 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.iv_lmk_private* %17, %struct.iv_lmk_private** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %19 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %10, align 8
  %20 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %18, i32 %21)
  %23 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %10, align 8
  %24 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %29 = call i32 @crypto_shash_init(%struct.TYPE_8__* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %114

34:                                               ; preds = %4
  %35 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %10, align 8
  %36 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %41 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %10, align 8
  %42 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @LMK_SEED_SIZE, align 4
  %45 = call i32 @crypto_shash_update(%struct.TYPE_8__* %40, i32* %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %114

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 16
  %55 = call i32 @crypto_shash_update(%struct.TYPE_8__* %52, i32* %54, i32 496)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %5, align 4
  br label %114

60:                                               ; preds = %51
  %61 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %8, align 8
  %62 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @cpu_to_le32(i32 %63)
  %65 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64 %64, i64* %65, align 16
  %66 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %8, align 8
  %67 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 32
  %70 = and i32 %69, 16777215
  %71 = or i32 %70, -2147483648
  %72 = call i64 @cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  store i64 %72, i64* %73, align 8
  %74 = call i64 @cpu_to_le32(i32 4024)
  %75 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  store i64 %74, i64* %75, align 16
  %76 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %79 = bitcast i64* %78 to i32*
  %80 = call i32 @crypto_shash_update(%struct.TYPE_8__* %77, i32* %79, i32 32)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %60
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %5, align 4
  br label %114

85:                                               ; preds = %60
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %87 = call i32 @crypto_shash_export(%struct.TYPE_8__* %86, %struct.md5_state* %11)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %5, align 4
  br label %114

92:                                               ; preds = %85
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @MD5_HASH_WORDS, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %11, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = call i32 @__cpu_to_le32s(i32* %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %93

107:                                              ; preds = %93
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds %struct.md5_state, %struct.md5_state* %11, i32 0, i32 0
  %110 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %111 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i32* %108, i32** %109, i32 %112)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %107, %90, %83, %58, %48, %32
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_8__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @crypto_shash_export(%struct.TYPE_8__*, %struct.md5_state*) #1

declare dso_local i32 @__cpu_to_le32s(i32*) #1

declare dso_local i32 @memcpy(i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
