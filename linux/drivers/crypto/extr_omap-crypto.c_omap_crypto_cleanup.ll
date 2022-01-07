; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@OMAP_CRYPTO_COPY_MASK = common dso_local global i64 0, align 8
@OMAP_CRYPTO_DATA_COPIED = common dso_local global i64 0, align 8
@OMAP_CRYPTO_SG_COPIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_crypto_cleanup(%struct.scatterlist* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %12, align 8
  %17 = lshr i64 %16, %15
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* @OMAP_CRYPTO_COPY_MASK, align 8
  %19 = load i64, i64* %12, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %61

24:                                               ; preds = %6
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = call i8* @sg_virt(%struct.scatterlist* %25)
  store i8* %26, i8** %13, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @get_order(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %30 = icmp ne %struct.scatterlist* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @OMAP_CRYPTO_COPY_MASK, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @scatterwalk_map_and_copy(i8* %37, %struct.scatterlist* %38, i32 %39, i32 %40, i32 1)
  br label %42

42:                                               ; preds = %36, %31, %24
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @OMAP_CRYPTO_DATA_COPIED, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %13, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @free_pages(i64 %49, i32 %50)
  br label %61

52:                                               ; preds = %42
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @OMAP_CRYPTO_SG_COPIED, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %59 = call i32 @kfree(%struct.scatterlist* %58)
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %23, %60, %47
  ret void
}

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i8*, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
