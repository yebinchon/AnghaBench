; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_eboiv_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_iv_eboiv_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i64, i32 }
%struct.dm_target = type { i8* }

@CRYPT_MODE_INTEGRITY_AEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"AEAD transforms not supported for EBOIV\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Block size of EBOIV cipher does not match IV size of block cipher\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*, %struct.dm_target*, i8*)* @crypt_iv_eboiv_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_iv_eboiv_ctr(%struct.crypt_config* %0, %struct.dm_target* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypt_config*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i8*, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @CRYPT_MODE_INTEGRITY_AEAD, align 4
  %9 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %20 = call i32 @any_tfm(%struct.crypt_config* %19)
  %21 = call i64 @crypto_skcipher_blocksize(i32 %20)
  %22 = load %struct.crypt_config*, %struct.crypt_config** %5, align 8
  %23 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %28 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %26, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @crypto_skcipher_blocksize(i32) #1

declare dso_local i32 @any_tfm(%struct.crypt_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
