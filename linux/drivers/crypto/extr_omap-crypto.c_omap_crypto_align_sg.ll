; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_align_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_align_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@OMAP_CRYPTO_COPY_MASK = common dso_local global i64 0, align 8
@OMAP_CRYPTO_FORCE_COPY = common dso_local global i32 0, align 4
@OMAP_CRYPTO_NOT_ALIGNED = common dso_local global i32 0, align 4
@OMAP_CRYPTO_DATA_COPIED = common dso_local global i64 0, align 8
@OMAP_CRYPTO_BAD_DATA_LENGTH = common dso_local global i32 0, align 4
@OMAP_CRYPTO_FORCE_SINGLE_ENTRY = common dso_local global i32 0, align 4
@OMAP_CRYPTO_SG_COPIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_crypto_align_sg(%struct.scatterlist** %0, i32 %1, i32 %2, %struct.scatterlist* %3, i32 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.scatterlist** %0, %struct.scatterlist*** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %17 = load i64, i64* @OMAP_CRYPTO_COPY_MASK, align 8
  %18 = load i64, i64* %14, align 8
  %19 = shl i64 %17, %18
  %20 = xor i64 %19, -1
  %21 = load i64*, i64** %15, align 8
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, %20
  store i64 %23, i64* %21, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @OMAP_CRYPTO_FORCE_COPY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* @OMAP_CRYPTO_NOT_ALIGNED, align 4
  store i32 %29, i32* %16, align 4
  br label %37

30:                                               ; preds = %7
  %31 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @omap_crypto_check_sg(%struct.scatterlist* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @OMAP_CRYPTO_NOT_ALIGNED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @omap_crypto_copy_sgs(i32 %42, i32 %43, %struct.scatterlist** %44, %struct.scatterlist* %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %8, align 4
  br label %105

52:                                               ; preds = %41
  %53 = load i64, i64* @OMAP_CRYPTO_DATA_COPIED, align 8
  %54 = load i64, i64* %14, align 8
  %55 = shl i64 %53, %54
  %56 = load i64*, i64** %15, align 8
  %57 = load i64, i64* %56, align 8
  %58 = or i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %104

59:                                               ; preds = %37
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @OMAP_CRYPTO_BAD_DATA_LENGTH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %67 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @omap_crypto_copy_sg_lists(i32 %64, i32 %65, %struct.scatterlist** %66, %struct.scatterlist* %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %8, align 4
  br label %105

74:                                               ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @OMAP_CRYPTO_FORCE_SINGLE_ENTRY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* @OMAP_CRYPTO_SG_COPIED, align 8
  %81 = load i64, i64* %14, align 8
  %82 = shl i64 %80, %81
  %83 = load i64*, i64** %15, align 8
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, %82
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %79, %74
  br label %103

87:                                               ; preds = %59
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @OMAP_CRYPTO_FORCE_SINGLE_ENTRY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %94 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %95 = load %struct.scatterlist*, %struct.scatterlist** %94, align 8
  %96 = call i32 @sg_virt(%struct.scatterlist* %95)
  %97 = load %struct.scatterlist**, %struct.scatterlist*** %9, align 8
  %98 = load %struct.scatterlist*, %struct.scatterlist** %97, align 8
  %99 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @sg_set_buf(%struct.scatterlist* %93, i32 %96, i32 %100)
  br label %102

102:                                              ; preds = %92, %87
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %52
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %72, %50
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @omap_crypto_check_sg(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @omap_crypto_copy_sgs(i32, i32, %struct.scatterlist**, %struct.scatterlist*, i32) #1

declare dso_local i32 @omap_crypto_copy_sg_lists(i32, i32, %struct.scatterlist**, %struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
