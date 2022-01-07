; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.h_copy_hash_init_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.h_copy_hash_init_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chcr_sha384_init = common dso_local global i64 0, align 8
@chcr_sha512_init = common dso_local global i64 0, align 8
@SHA1_INIT_STATE = common dso_local global i64 0, align 8
@chcr_sha1_init = common dso_local global i32* null, align 8
@SHA224_INIT_STATE = common dso_local global i64 0, align 8
@chcr_sha224_init = common dso_local global i32* null, align 8
@SHA256_INIT_STATE = common dso_local global i64 0, align 8
@chcr_sha256_init = common dso_local global i32* null, align 8
@SHA384_INIT_STATE = common dso_local global i64 0, align 8
@SHA512_INIT_STATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @copy_hash_init_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_hash_init_values(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i64, i64* @chcr_sha384_init, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load i64, i64* @chcr_sha512_init, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %109 [
    i32 132, label %19
    i32 131, label %37
    i32 130, label %55
    i32 129, label %73
    i32 128, label %91
  ]

19:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SHA1_INIT_STATE, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32*, i32** @chcr_sha1_init, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %5, align 8
  br label %20

36:                                               ; preds = %20
  br label %109

37:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @SHA224_INIT_STATE, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32*, i32** @chcr_sha224_init, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpu_to_be32(i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  br label %38

54:                                               ; preds = %38
  br label %109

55:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @SHA256_INIT_STATE, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32*, i32** @chcr_sha256_init, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cpu_to_be32(i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %56

72:                                               ; preds = %56
  br label %109

73:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %74

74:                                               ; preds = %87, %73
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @SHA384_INIT_STATE, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be64_to_cpu(i32 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %78
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %5, align 8
  br label %74

90:                                               ; preds = %74
  br label %109

91:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %92

92:                                               ; preds = %105, %91
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @SHA512_INIT_STATE, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i32*, i32** %9, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @be64_to_cpu(i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %96
  %106 = load i64, i64* %5, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %5, align 8
  br label %92

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %2, %108, %90, %72, %54, %36
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
