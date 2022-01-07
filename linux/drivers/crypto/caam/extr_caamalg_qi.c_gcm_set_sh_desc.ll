; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_gcm_set_sh_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_gcm_set_sh_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.caam_ctx = type { i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CAAM_DESC_BYTES_MAX = common dso_local global i32 0, align 4
@DESC_JOB_IO_LEN = common dso_local global i32 0, align 4
@DESC_QI_GCM_ENC_LEN = common dso_local global i32 0, align 4
@DESC_QI_GCM_DEC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @gcm_set_sh_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_set_sh_desc(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.caam_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %8 = call %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead* %7)
  store %struct.caam_ctx* %8, %struct.caam_ctx** %4, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %10 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @CAAM_DESC_BYTES_MAX, align 4
  %12 = load i32, i32* @DESC_JOB_IO_LEN, align 4
  %13 = sub nsw i32 %11, %12
  %14 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %13, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %1
  store i32 0, i32* %2, align 4
  br label %99

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DESC_QI_GCM_ENC_LEN, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  br label %54

44:                                               ; preds = %30
  %45 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %44, %34
  %55 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cnstr_shdsc_gcm_encap(i32 %57, %struct.TYPE_3__* %59, i32 %60, i32 %63, i32 1)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @DESC_QI_GCM_DEC_LEN, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %54
  %69 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  br label %88

78:                                               ; preds = %54
  %79 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %78, %68
  %89 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.caam_ctx*, %struct.caam_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cnstr_shdsc_gcm_decap(i32 %91, %struct.TYPE_3__* %93, i32 %94, i32 %97, i32 1)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %88, %29
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.caam_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @cnstr_shdsc_gcm_encap(i32, %struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @cnstr_shdsc_gcm_decap(i32, %struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
