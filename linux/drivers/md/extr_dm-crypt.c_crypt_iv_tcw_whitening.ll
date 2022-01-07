; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_whitening.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_whitening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.crypt_config = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.iv_tcw_private }
%struct.iv_tcw_private = type { i32, i64 }
%struct.dm_crypt_request = type { i32 }

@TCW_WHITENING_SIZE = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_8__* null, align 8
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.dm_crypt_request*, i32*)* @crypt_iv_tcw_whitening to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_tcw_whitening(%struct.crypt_config* %0, %struct.dm_crypt_request* %1, i32* %2) #0 {
  %4 = alloca %struct.crypt_config*, align 8
  %5 = alloca %struct.dm_crypt_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.iv_tcw_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %4, align 8
  store %struct.dm_crypt_request* %1, %struct.dm_crypt_request** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.crypt_config*, %struct.crypt_config** %4, align 8
  %14 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.iv_tcw_private* %15, %struct.iv_tcw_private** %7, align 8
  %16 = load %struct.dm_crypt_request*, %struct.dm_crypt_request** %5, align 8
  %17 = getelementptr inbounds %struct.dm_crypt_request, %struct.dm_crypt_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cpu_to_le64(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @TCW_WHITENING_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %25 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %7, align 8
  %26 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %24, i32 %27)
  %29 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %7, align 8
  %30 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @crypto_xor_cpy(i32* %23, i64 %31, i32* %8, i32 8)
  %33 = getelementptr inbounds i32, i32* %23, i64 8
  %34 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %7, align 8
  %35 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 8
  %38 = call i32 @crypto_xor_cpy(i32* %33, i64 %37, i32* %8, i32 8)
  %39 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %7, align 8
  %40 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %74, %3
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %49 = call i32 @crypto_shash_init(%struct.TYPE_8__* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %101

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %23, i64 %57
  %59 = call i32 @crypto_shash_update(%struct.TYPE_8__* %54, i32* %58, i32 4)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %101

63:                                               ; preds = %53
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %23, i64 %67
  %69 = call i32 @crypto_shash_final(%struct.TYPE_8__* %64, i32* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %101

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %44

77:                                               ; preds = %44
  %78 = getelementptr inbounds i32, i32* %23, i64 0
  %79 = getelementptr inbounds i32, i32* %23, i64 12
  %80 = call i32 @crypto_xor(i32* %78, i32* %79, i32 4)
  %81 = getelementptr inbounds i32, i32* %23, i64 4
  %82 = getelementptr inbounds i32, i32* %23, i64 8
  %83 = call i32 @crypto_xor(i32* %81, i32* %82, i32 4)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %97, %77
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SECTOR_SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = sdiv i32 %87, 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = call i32 @crypto_xor(i32* %95, i32* %23, i32 8)
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %84

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %100, %72, %62, %52
  %102 = mul nuw i64 4, %21
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memzero_explicit(i32* %23, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %106)
  ret i32 %105
}

declare dso_local i32 @cpu_to_le64(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @crypto_xor_cpy(i32*, i64, i32*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_8__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @memzero_explicit(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
