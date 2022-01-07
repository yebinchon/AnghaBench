; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_mxs-dcp.c_mxs_dcp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dcp = type { i32, i32, i32* }

@MXS_DCP_CAPABILITY1_SHA256 = common dso_local global i32 0, align 4
@dcp_sha256_alg = common dso_local global i32 0, align 4
@MXS_DCP_CAPABILITY1_SHA1 = common dso_local global i32 0, align 4
@dcp_sha1_alg = common dso_local global i32 0, align 4
@MXS_DCP_CAPABILITY1_AES128 = common dso_local global i32 0, align 4
@dcp_aes_algs = common dso_local global i32 0, align 4
@DCP_CHAN_HASH_SHA = common dso_local global i64 0, align 8
@DCP_CHAN_CRYPTO = common dso_local global i64 0, align 8
@global_sdcp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_dcp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_dcp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dcp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.dcp* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.dcp* %5, %struct.dcp** %3, align 8
  %6 = load %struct.dcp*, %struct.dcp** %3, align 8
  %7 = getelementptr inbounds %struct.dcp, %struct.dcp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MXS_DCP_CAPABILITY1_SHA256, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @crypto_unregister_ahash(i32* @dcp_sha256_alg)
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.dcp*, %struct.dcp** %3, align 8
  %16 = getelementptr inbounds %struct.dcp, %struct.dcp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MXS_DCP_CAPABILITY1_SHA1, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @crypto_unregister_ahash(i32* @dcp_sha1_alg)
  br label %23

23:                                               ; preds = %21, %14
  %24 = load %struct.dcp*, %struct.dcp** %3, align 8
  %25 = getelementptr inbounds %struct.dcp, %struct.dcp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MXS_DCP_CAPABILITY1_AES128, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @dcp_aes_algs, align 4
  %32 = load i32, i32* @dcp_aes_algs, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @crypto_unregister_algs(i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.dcp*, %struct.dcp** %3, align 8
  %37 = getelementptr inbounds %struct.dcp, %struct.dcp* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @DCP_CHAN_HASH_SHA, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kthread_stop(i32 %41)
  %43 = load %struct.dcp*, %struct.dcp** %3, align 8
  %44 = getelementptr inbounds %struct.dcp, %struct.dcp* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @DCP_CHAN_CRYPTO, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kthread_stop(i32 %48)
  %50 = load %struct.dcp*, %struct.dcp** %3, align 8
  %51 = getelementptr inbounds %struct.dcp, %struct.dcp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %54, i32* null)
  store i32* null, i32** @global_sdcp, align 8
  ret i32 0
}

declare dso_local %struct.dcp* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_algs(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
