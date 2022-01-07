; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_tcw_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iv_tcw_private }
%struct.iv_tcw_private = type { i8*, i8*, i32 }
%struct.dm_target = type { i8* }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unsupported sector size for TCW\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCW_WHITENING_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Wrong key size for TCW\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"crc32\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Error initializing CRC32 in TCW\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Error allocating seed storage in TCW\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.dm_target*, i8*)* @crypt_iv_tcw_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_tcw_ctr(%struct.crypt_config* %0, %struct.dm_target* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypt_config*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iv_tcw_private*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.iv_tcw_private* %11, %struct.iv_tcw_private** %8, align 8
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
  br label %84

23:                                               ; preds = %3
  %24 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %25 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %28 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TCW_WHITENING_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp sle i64 %26, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %35 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %84

38:                                               ; preds = %23
  %39 = call i32 @crypto_alloc_shash(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %40 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %8, align 8
  %41 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %8, align 8
  %43 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %49 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %8, align 8
  %51 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %84

54:                                               ; preds = %38
  %55 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %56 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kzalloc(i64 %57, i32 %58)
  %60 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %8, align 8
  %61 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @TCW_WHITENING_SIZE, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kzalloc(i64 %62, i32 %63)
  %65 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %8, align 8
  %66 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %8, align 8
  %68 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load %struct.iv_tcw_private*, %struct.iv_tcw_private** %8, align 8
  %73 = getelementptr inbounds %struct.iv_tcw_private, %struct.iv_tcw_private* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %71, %54
  %77 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %78 = call i32 @crypt_iv_tcw_dtr(%struct.crypt_config* %77)
  %79 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %80 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %76, %47, %33, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @crypt_iv_tcw_dtr(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
