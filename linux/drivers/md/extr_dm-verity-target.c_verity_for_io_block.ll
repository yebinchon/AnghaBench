; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_for_io_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_for_io_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_verity_io = type { i32 }
%struct.bvec_iter = type { i32 }
%struct.crypto_wait = type { i32 }
%struct.bio = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ahash_request = type { i32 }
%struct.bio_vec = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"verity_for_io_block crypto op failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, %struct.dm_verity_io*, %struct.bvec_iter*, %struct.crypto_wait*)* @verity_for_io_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_for_io_block(%struct.dm_verity* %0, %struct.dm_verity_io* %1, %struct.bvec_iter* %2, %struct.crypto_wait* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_verity*, align 8
  %7 = alloca %struct.dm_verity_io*, align 8
  %8 = alloca %struct.bvec_iter*, align 8
  %9 = alloca %struct.crypto_wait*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  %12 = alloca %struct.scatterlist, align 4
  %13 = alloca %struct.ahash_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bio_vec, align 4
  %17 = alloca { i64, i32 }, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %6, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %7, align 8
  store %struct.bvec_iter* %2, %struct.bvec_iter** %8, align 8
  store %struct.crypto_wait* %3, %struct.crypto_wait** %9, align 8
  %18 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %19 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %23 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %24 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_verity_io* %22, i32 %27)
  store %struct.bio* %28, %struct.bio** %11, align 8
  %29 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %30 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %31 = call %struct.ahash_request* @verity_io_hash_req(%struct.dm_verity* %29, %struct.dm_verity_io* %30)
  store %struct.ahash_request* %31, %struct.ahash_request** %13, align 8
  br label %32

32:                                               ; preds = %82, %4
  %33 = load %struct.bio*, %struct.bio** %11, align 8
  %34 = load %struct.bvec_iter*, %struct.bvec_iter** %8, align 8
  %35 = getelementptr inbounds %struct.bvec_iter, %struct.bvec_iter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call { i64, i32 } @bio_iter_iovec(%struct.bio* %33, i32 %36)
  store { i64, i32 } %37, { i64, i32 }* %17, align 8
  %38 = bitcast { i64, i32 }* %17 to i8*
  %39 = bitcast %struct.bio_vec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %38, i64 12, i1 false)
  %40 = call i32 @sg_init_table(%struct.scatterlist* %12, i32 1)
  %41 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %16, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp uge i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @likely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %49, %32
  %52 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %16, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %15, align 4
  %55 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %16, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sg_set_page(%struct.scatterlist* %12, i32 %53, i32 %54, i32 %56)
  %58 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %58, %struct.scatterlist* %12, i32* null, i32 %59)
  %61 = load %struct.ahash_request*, %struct.ahash_request** %13, align 8
  %62 = call i32 @crypto_ahash_update(%struct.ahash_request* %61)
  %63 = load %struct.crypto_wait*, %struct.crypto_wait** %9, align 8
  %64 = call i32 @crypto_wait_req(i32 %62, %struct.crypto_wait* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %86

74:                                               ; preds = %51
  %75 = load %struct.bio*, %struct.bio** %11, align 8
  %76 = load %struct.bvec_iter*, %struct.bvec_iter** %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @bio_advance_iter(%struct.bio* %75, %struct.bvec_iter* %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %32, label %85

85:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.bio* @dm_bio_from_per_bio_data(%struct.dm_verity_io*, i32) #1

declare dso_local %struct.ahash_request* @verity_io_hash_req(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local { i64, i32 } @bio_iter_iovec(%struct.bio*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_wait_req(i32, %struct.crypto_wait*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @bio_advance_iter(%struct.bio*, %struct.bvec_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
