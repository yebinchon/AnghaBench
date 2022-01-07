; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_setup_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_setup_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ix_sa_dir = type { i8*, i32, i32, i32 }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir }
%struct.ix_hash_algo = type { i32, i32 }

@NPE_OP_HASH_ENABLE = common dso_local global i32 0, align 4
@NPE_OP_HASH_VERIFY = common dso_local global i32 0, align 4
@HMAC_OPAD_VALUE = common dso_local global i32 0, align 4
@HMAC_IPAD_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32, i32*, i32, i32)* @setup_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_auth(%struct.crypto_tfm* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ix_sa_dir*, align 8
  %22 = alloca %struct.ixp_ctx*, align 8
  %23 = alloca %struct.ix_hash_algo*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %25 = call %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %24)
  store %struct.ixp_ctx* %25, %struct.ixp_ctx** %22, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load %struct.ixp_ctx*, %struct.ixp_ctx** %22, align 8
  %30 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %29, i32 0, i32 1
  br label %34

31:                                               ; preds = %6
  %32 = load %struct.ixp_ctx*, %struct.ixp_ctx** %22, align 8
  %33 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %32, i32 0, i32 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi %struct.ix_sa_dir* [ %30, %28 ], [ %33, %31 ]
  store %struct.ix_sa_dir* %35, %struct.ix_sa_dir** %21, align 8
  %36 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %37 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %40 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8* %43, i8** %17, align 8
  %44 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %45 = call %struct.ix_hash_algo* @ix_hash(%struct.crypto_tfm* %44)
  store %struct.ix_hash_algo* %45, %struct.ix_hash_algo** %23, align 8
  %46 = load %struct.ix_hash_algo*, %struct.ix_hash_algo** %23, align 8
  %47 = getelementptr inbounds %struct.ix_hash_algo, %struct.ix_hash_algo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = shl i32 %49, 6
  %51 = or i32 %48, %50
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = xor i32 %52, -1442840576
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = call i32 @cpu_to_be32(i32 %54)
  %56 = load i8*, i8** %17, align 8
  %57 = bitcast i8* %56 to i32*
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %17, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  store i8* %59, i8** %17, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = load %struct.ix_hash_algo*, %struct.ix_hash_algo** %23, align 8
  %62 = getelementptr inbounds %struct.ix_hash_algo, %struct.ix_hash_algo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @memcpy(i8* %60, i32 %63, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %17, align 8
  %70 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %71 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %74 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %80, %81
  store i32 %82, i32* %15, align 4
  %83 = load i8*, i8** %17, align 8
  %84 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %85 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %88 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = ptrtoint i8* %83 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %18, align 4
  %96 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %97 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %100 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %105 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @NPE_OP_HASH_ENABLE, align 4
  %109 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %110 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %34
  %116 = load i32, i32* @NPE_OP_HASH_VERIFY, align 4
  %117 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %21, align 8
  %118 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %34
  %122 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %123 = load i32, i32* @HMAC_OPAD_VALUE, align 4
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @register_chain_var(%struct.crypto_tfm* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32* %127, i32 %128)
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %7, align 4
  br label %143

134:                                              ; preds = %121
  %135 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %136 = load i32, i32* @HMAC_IPAD_VALUE, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @register_chain_var(%struct.crypto_tfm* %135, i32 %136, i32 %137, i32 %138, i32 %139, i32* %140, i32 %141)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %134, %132
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.ix_hash_algo* @ix_hash(%struct.crypto_tfm*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @register_chain_var(%struct.crypto_tfm*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
