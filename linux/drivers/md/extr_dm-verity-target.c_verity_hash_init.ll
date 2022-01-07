; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_hash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, i64, i32, i32 }
%struct.ahash_request = type { i32 }
%struct.crypto_wait = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@crypto_req_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"crypto_ahash_init failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, %struct.ahash_request*, %struct.crypto_wait*)* @verity_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_hash_init(%struct.dm_verity* %0, %struct.ahash_request* %1, %struct.crypto_wait* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_verity*, align 8
  %6 = alloca %struct.ahash_request*, align 8
  %7 = alloca %struct.crypto_wait*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %5, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %6, align 8
  store %struct.crypto_wait* %2, %struct.crypto_wait** %7, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %10 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %11 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %9, i32 %12)
  %14 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %15 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %16 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @crypto_req_done, align 4
  %19 = load %struct.crypto_wait*, %struct.crypto_wait** %7, align 8
  %20 = bitcast %struct.crypto_wait* %19 to i8*
  %21 = call i32 @ahash_request_set_callback(%struct.ahash_request* %14, i32 %17, i32 %18, i8* %20)
  %22 = load %struct.crypto_wait*, %struct.crypto_wait** %7, align 8
  %23 = call i32 @crypto_init_wait(%struct.crypto_wait* %22)
  %24 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %25 = call i32 @crypto_ahash_init(%struct.ahash_request* %24)
  %26 = load %struct.crypto_wait*, %struct.crypto_wait** %7, align 8
  %27 = call i32 @crypto_wait_req(i32 %25, %struct.crypto_wait* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @DMERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %3
  %38 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %39 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %44 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %45, 1
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @likely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %54 = load %struct.ahash_request*, %struct.ahash_request** %6, align 8
  %55 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %56 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dm_verity*, %struct.dm_verity** %5, align 8
  %59 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.crypto_wait*, %struct.crypto_wait** %7, align 8
  %62 = call i32 @verity_hash_update(%struct.dm_verity* %53, %struct.ahash_request* %54, i32 %57, i64 %60, %struct.crypto_wait* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %52, %47
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %33
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32, i8*) #1

declare dso_local i32 @crypto_init_wait(%struct.crypto_wait*) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @verity_hash_update(%struct.dm_verity*, %struct.ahash_request*, i32, i64, %struct.crypto_wait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
