; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vio_dev = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"entering nx_remove for UA 0x%x\0A\00", align 1
@nx_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NX_OKAY = common dso_local global i64 0, align 8
@nx_shash_aes_xcbc_alg = common dso_local global i32 0, align 4
@NX_FC_AES = common dso_local global i32 0, align 4
@NX_MODE_AES_XCBC_MAC = common dso_local global i32 0, align 4
@nx_shash_sha512_alg = common dso_local global i32 0, align 4
@NX_FC_SHA = common dso_local global i32 0, align 4
@NX_MODE_SHA = common dso_local global i32 0, align 4
@NX_PROPS_SHA256 = common dso_local global i32 0, align 4
@nx_shash_sha256_alg = common dso_local global i32 0, align 4
@NX_PROPS_SHA512 = common dso_local global i32 0, align 4
@nx_ccm4309_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_CCM = common dso_local global i32 0, align 4
@nx_ccm_aes_alg = common dso_local global i32 0, align 4
@nx_gcm4106_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_GCM = common dso_local global i32 0, align 4
@nx_gcm_aes_alg = common dso_local global i32 0, align 4
@nx_ctr3686_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_CTR = common dso_local global i32 0, align 4
@nx_cbc_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_CBC = common dso_local global i32 0, align 4
@nx_ecb_aes_alg = common dso_local global i32 0, align 4
@NX_MODE_AES_ECB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @nx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %3 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %4 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %3, i32 0, i32 1
  %5 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dev_dbg(i32* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nx_driver, i32 0, i32 0, i32 0), align 8
  %10 = load i64, i64* @NX_OKAY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = call i32 @NX_DEBUGFS_FINI(%struct.TYPE_5__* @nx_driver)
  %14 = load i32, i32* @NX_FC_AES, align 4
  %15 = load i32, i32* @NX_MODE_AES_XCBC_MAC, align 4
  %16 = call i32 @nx_unregister_shash(i32* @nx_shash_aes_xcbc_alg, i32 %14, i32 %15, i32 -1)
  %17 = load i32, i32* @NX_FC_SHA, align 4
  %18 = load i32, i32* @NX_MODE_SHA, align 4
  %19 = load i32, i32* @NX_PROPS_SHA256, align 4
  %20 = call i32 @nx_unregister_shash(i32* @nx_shash_sha512_alg, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @NX_FC_SHA, align 4
  %22 = load i32, i32* @NX_MODE_SHA, align 4
  %23 = load i32, i32* @NX_PROPS_SHA512, align 4
  %24 = call i32 @nx_unregister_shash(i32* @nx_shash_sha256_alg, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @NX_FC_AES, align 4
  %26 = load i32, i32* @NX_MODE_AES_CCM, align 4
  %27 = call i32 @nx_unregister_aead(i32* @nx_ccm4309_aes_alg, i32 %25, i32 %26)
  %28 = load i32, i32* @NX_FC_AES, align 4
  %29 = load i32, i32* @NX_MODE_AES_CCM, align 4
  %30 = call i32 @nx_unregister_aead(i32* @nx_ccm_aes_alg, i32 %28, i32 %29)
  %31 = load i32, i32* @NX_FC_AES, align 4
  %32 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %33 = call i32 @nx_unregister_aead(i32* @nx_gcm4106_aes_alg, i32 %31, i32 %32)
  %34 = load i32, i32* @NX_FC_AES, align 4
  %35 = load i32, i32* @NX_MODE_AES_GCM, align 4
  %36 = call i32 @nx_unregister_aead(i32* @nx_gcm_aes_alg, i32 %34, i32 %35)
  %37 = load i32, i32* @NX_FC_AES, align 4
  %38 = load i32, i32* @NX_MODE_AES_CTR, align 4
  %39 = call i32 @nx_unregister_alg(i32* @nx_ctr3686_aes_alg, i32 %37, i32 %38)
  %40 = load i32, i32* @NX_FC_AES, align 4
  %41 = load i32, i32* @NX_MODE_AES_CBC, align 4
  %42 = call i32 @nx_unregister_alg(i32* @nx_cbc_aes_alg, i32 %40, i32 %41)
  %43 = load i32, i32* @NX_FC_AES, align 4
  %44 = load i32, i32* @NX_MODE_AES_ECB, align 4
  %45 = call i32 @nx_unregister_alg(i32* @nx_ecb_aes_alg, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @NX_DEBUGFS_FINI(%struct.TYPE_5__*) #1

declare dso_local i32 @nx_unregister_shash(i32*, i32, i32, i32) #1

declare dso_local i32 @nx_unregister_aead(i32*, i32, i32) #1

declare dso_local i32 @nx_unregister_alg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
