; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_gen_rev_aes_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_gen_rev_aes_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypt_ctl = type { i32, i32, i32, i64, i64, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_tfm* }
%struct.ixp_ctx = type { i32, %struct.ix_sa_dir }
%struct.ix_sa_dir = type { i32, i64, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@CIPH_ENCR = common dso_local global i32 0, align 4
@AES_BLOCK128 = common dso_local global i32 0, align 4
@NPE_OP_ENC_GEN_KEY = common dso_local global i32 0, align 4
@CTL_FLAG_GEN_REVAES = common dso_local global i32 0, align 4
@SEND_QID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @gen_rev_aes_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_rev_aes_key(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypt_ctl*, align 8
  %5 = alloca %struct.ixp_ctx*, align 8
  %6 = alloca %struct.ix_sa_dir*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %8 = call %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %7)
  store %struct.ixp_ctx* %8, %struct.ixp_ctx** %5, align 8
  %9 = load %struct.ixp_ctx*, %struct.ixp_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %9, i32 0, i32 1
  store %struct.ix_sa_dir* %10, %struct.ix_sa_dir** %6, align 8
  %11 = call %struct.crypt_ctl* (...) @get_crypt_desc_emerg()
  store %struct.crypt_ctl* %11, %struct.crypt_ctl** %4, align 8
  %12 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %13 = icmp ne %struct.crypt_ctl* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load i32, i32* @CIPH_ENCR, align 4
  %19 = call i32 @cpu_to_be32(i32 %18)
  %20 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %6, align 8
  %21 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  %26 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %27 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %28 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.crypto_tfm* %26, %struct.crypto_tfm** %29, align 8
  %30 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %31 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @AES_BLOCK128, align 4
  %33 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %34 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %36 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %6, align 8
  %38 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %41 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %6, align 8
  %43 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 4
  %46 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %47 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* @NPE_OP_ENC_GEN_KEY, align 4
  %49 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %50 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %6, align 8
  %52 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %55 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @CTL_FLAG_GEN_REVAES, align 4
  %57 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %58 = getelementptr inbounds %struct.crypt_ctl, %struct.crypt_ctl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.ixp_ctx*, %struct.ixp_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %61, i32 0, i32 0
  %63 = call i32 @atomic_inc(i32* %62)
  %64 = load i32, i32* @SEND_QID, align 4
  %65 = load %struct.crypt_ctl*, %struct.crypt_ctl** %4, align 8
  %66 = call i32 @crypt_virt2phys(%struct.crypt_ctl* %65)
  %67 = call i32 @qmgr_put_entry(i32 %64, i32 %66)
  %68 = load i32, i32* @SEND_QID, align 4
  %69 = call i32 @qmgr_stat_overflow(i32 %68)
  %70 = call i32 @BUG_ON(i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %17, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local %struct.crypt_ctl* @get_crypt_desc_emerg(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @qmgr_put_entry(i32, i32) #1

declare dso_local i32 @crypt_virt2phys(%struct.crypt_ctl*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qmgr_stat_overflow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
