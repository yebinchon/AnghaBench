; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_crypt_journal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_crypt_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, %struct.skcipher_request**, %struct.scatterlist**, %struct.scatterlist** }
%struct.skcipher_request = type { i8*, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.journal_completion = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32, i32, %struct.journal_completion*)* @crypt_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_journal(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i32 %3, %struct.journal_completion* %4) #0 {
  %6 = alloca %struct.dm_integrity_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.journal_completion*, align 8
  %11 = alloca %struct.scatterlist**, align 8
  %12 = alloca %struct.scatterlist**, align 8
  %13 = alloca %struct.skcipher_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.journal_completion* %4, %struct.journal_completion** %10, align 8
  %16 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  %17 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %16, i32 0, i32 0
  %18 = call i32 @atomic_add(i32 2, i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %24 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %23, i32 0, i32 2
  %25 = load %struct.scatterlist**, %struct.scatterlist*** %24, align 8
  store %struct.scatterlist** %25, %struct.scatterlist*** %11, align 8
  %26 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %27 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %26, i32 0, i32 3
  %28 = load %struct.scatterlist**, %struct.scatterlist*** %27, align 8
  store %struct.scatterlist** %28, %struct.scatterlist*** %12, align 8
  br label %36

29:                                               ; preds = %5
  %30 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %31 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %30, i32 0, i32 3
  %32 = load %struct.scatterlist**, %struct.scatterlist*** %31, align 8
  store %struct.scatterlist** %32, %struct.scatterlist*** %11, align 8
  %33 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %34 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %33, i32 0, i32 2
  %35 = load %struct.scatterlist**, %struct.scatterlist*** %34, align 8
  store %struct.scatterlist** %35, %struct.scatterlist*** %12, align 8
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %96, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @rw_section_mac(%struct.dm_integrity_c* %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %47 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %46, i32 0, i32 1
  %48 = load %struct.skcipher_request**, %struct.skcipher_request*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.skcipher_request*, %struct.skcipher_request** %48, i64 %50
  %52 = load %struct.skcipher_request*, %struct.skcipher_request** %51, align 8
  store %struct.skcipher_request* %52, %struct.skcipher_request** %13, align 8
  %53 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %54 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @crypto_skcipher_ivsize(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %58 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %15, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @memcpy(i8* %60, i8* %64, i32 %65)
  %67 = load %struct.scatterlist**, %struct.scatterlist*** %11, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %67, i64 %69
  %71 = load %struct.scatterlist*, %struct.scatterlist** %70, align 8
  %72 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %73 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %72, i32 0, i32 2
  store %struct.scatterlist* %71, %struct.scatterlist** %73, align 8
  %74 = load %struct.scatterlist**, %struct.scatterlist*** %12, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %74, i64 %76
  %78 = load %struct.scatterlist*, %struct.scatterlist** %77, align 8
  %79 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %80 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %79, i32 0, i32 1
  store %struct.scatterlist* %78, %struct.scatterlist** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %13, align 8
  %83 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  %84 = call i32 @do_crypt(i32 %81, %struct.skcipher_request* %82, %struct.journal_completion* %83)
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %45
  %88 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  %89 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %88, i32 0, i32 0
  %90 = call i32 @atomic_inc(i32* %89)
  br label %91

91:                                               ; preds = %87, %45
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add i32 %94, -1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %37, label %99

99:                                               ; preds = %96
  %100 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  %101 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %100, i32 0, i32 0
  %102 = call i32 @atomic_dec(i32* %101)
  %103 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  %104 = call i32 @complete_journal_op(%struct.journal_completion* %103)
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rw_section_mac(%struct.dm_integrity_c*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_ivsize(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @do_crypt(i32, %struct.skcipher_request*, %struct.journal_completion*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @complete_journal_op(%struct.journal_completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
