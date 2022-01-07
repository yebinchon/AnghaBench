; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_init_ring_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_init_ring_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.safexcel_desc_ring = type { i32, i8*, i8*, i8*, i8*, i32 }

@EIP197_DEFAULT_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safexcel_init_ring_descriptors(%struct.safexcel_crypto_priv* %0, %struct.safexcel_desc_ring* %1, %struct.safexcel_desc_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.safexcel_crypto_priv*, align 8
  %6 = alloca %struct.safexcel_desc_ring*, align 8
  %7 = alloca %struct.safexcel_desc_ring*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %5, align 8
  store %struct.safexcel_desc_ring* %1, %struct.safexcel_desc_ring** %6, align 8
  store %struct.safexcel_desc_ring* %2, %struct.safexcel_desc_ring** %7, align 8
  %8 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %9 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %16 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %18 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %21 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %26 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %25, i32 0, i32 5
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dmam_alloc_coherent(i32 %19, i32 %24, i32* %26, i32 %27)
  %29 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %30 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %32 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %116

38:                                               ; preds = %3
  %39 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %40 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %43 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %45 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %48 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = mul nsw i32 %49, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %46, i64 %53
  %55 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %56 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %58 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %6, align 8
  %61 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %63 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %70 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %5, align 8
  %72 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %75 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %80 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %79, i32 0, i32 5
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @dmam_alloc_coherent(i32 %73, i32 %78, i32* %80, i32 %81)
  %83 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %84 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %86 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %38
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %116

92:                                               ; preds = %38
  %93 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %94 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %97 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %99 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %102 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = mul nsw i32 %103, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr i8, i8* %100, i64 %107
  %109 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %110 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %112 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.safexcel_desc_ring*, %struct.safexcel_desc_ring** %7, align 8
  %115 = getelementptr inbounds %struct.safexcel_desc_ring, %struct.safexcel_desc_ring* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %92, %89, %35
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i8* @dmam_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
