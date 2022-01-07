; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_check_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-crypto.c_omap_crypto_check_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i32 }

@OMAP_CRYPTO_NOT_ALIGNED = common dso_local global i32 0, align 4
@OMAP_CRYPTO_FORCE_SINGLE_ENTRY = common dso_local global i32 0, align 4
@OMAP_CRYPTO_BAD_DATA_LENGTH = common dso_local global i32 0, align 4
@ZONE_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, i32)* @omap_crypto_check_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_crypto_check_sg(%struct.scatterlist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @IS_ALIGNED(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @OMAP_CRYPTO_NOT_ALIGNED, align 4
  store i32 %17, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %53, %18
  %20 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %21 = icmp ne %struct.scatterlist* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_ALIGNED(i32 %27, i32 4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @OMAP_CRYPTO_NOT_ALIGNED, align 4
  store i32 %31, i32* %5, align 4
  br label %71

32:                                               ; preds = %22
  %33 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @IS_ALIGNED(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @OMAP_CRYPTO_NOT_ALIGNED, align 4
  store i32 %40, i32* %5, align 4
  br label %71

41:                                               ; preds = %32
  %42 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %48 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %47)
  store %struct.scatterlist* %48, %struct.scatterlist** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %54

53:                                               ; preds = %41
  br label %19

54:                                               ; preds = %52, %19
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @OMAP_CRYPTO_FORCE_SINGLE_ENTRY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @OMAP_CRYPTO_NOT_ALIGNED, align 4
  store i32 %63, i32* %5, align 4
  br label %71

64:                                               ; preds = %59, %54
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @OMAP_CRYPTO_BAD_DATA_LENGTH, align 4
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %68, %62, %39, %30, %16
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
