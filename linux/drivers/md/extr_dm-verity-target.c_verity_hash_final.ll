; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_hash_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_hash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i64, i32, i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_wait = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"verity_hash_final failed updating salt: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, %struct.ahash_request*, i32*, %struct.crypto_wait*)* @verity_hash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_hash_final(%struct.dm_verity* %0, %struct.ahash_request* %1, i32* %2, %struct.crypto_wait* %3) #0 {
  %5 = alloca %struct.dm_verity*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.crypto_wait*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %5, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.crypto_wait* %3, %struct.crypto_wait** %8, align 8
  %10 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %11 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %16 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i1 [ false, %4 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %27 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %28 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %29 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %32 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.crypto_wait*, %struct.crypto_wait** %8, align 8
  %35 = call i32 @verity_hash_update(%struct.dm_verity* %26, %struct.ahash_request* %27, i32 %30, i64 %33, %struct.crypto_wait* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @DMERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %50

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %43, i32* null, i32* %44, i32 0)
  %46 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %47 = call i32 @crypto_ahash_final(%struct.ahash_request* %46)
  %48 = load %struct.crypto_wait*, %struct.crypto_wait** %8, align 8
  %49 = call i32 @crypto_wait_req(i32 %47, %struct.crypto_wait* %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %42, %38
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @verity_hash_update(%struct.dm_verity*, %struct.ahash_request*, i32, i64, %struct.crypto_wait*) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, i32*, i32*, i32) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_ahash_final(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
