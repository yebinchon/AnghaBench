; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_lmk_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_lmk_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iv_lmk_private }
%struct.iv_lmk_private = type { i32*, i32 }
%struct.dm_target = type { i8* }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unsupported sector size for LMK\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error initializing LMK hash\00", align 1
@LMK_SEED_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Error kmallocing seed storage in LMK\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.dm_target*, i8*)* @crypt_iv_lmk_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_lmk_ctr(%struct.crypt_config* %0, %struct.dm_target* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypt_config*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iv_lmk_private*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.iv_lmk_private* %11, %struct.iv_lmk_private** %8, align 8
  %12 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %13 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SECTOR_SHIFT, align 4
  %16 = shl i32 1, %15
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %20 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = call i32 @crypto_alloc_shash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %25 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %8, align 8
  %26 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %8, align 8
  %28 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %34 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %8, align 8
  %36 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %68

39:                                               ; preds = %23
  %40 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %41 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %44 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %8, align 8
  %49 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  store i32 0, i32* %4, align 4
  br label %68

50:                                               ; preds = %39
  %51 = load i32, i32* @LMK_SEED_SIZE, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kzalloc(i32 %51, i32 %52)
  %54 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %8, align 8
  %55 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.iv_lmk_private*, %struct.iv_lmk_private** %8, align 8
  %57 = getelementptr inbounds %struct.iv_lmk_private, %struct.iv_lmk_private* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %50
  %61 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %62 = call i32 @crypt_iv_lmk_dtr(%struct.crypt_config* %61)
  %63 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %60, %47, %32, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @crypt_iv_lmk_dtr(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
