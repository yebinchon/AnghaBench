; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_get_alg_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_get_alg_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algo_param = type { i32, i32, i8* }

@CHCR_KEYCTX_MAC_KEY_SIZE_160 = common dso_local global i8* null, align 8
@CHCR_SCMD_AUTH_MODE_SHA1 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_256 = common dso_local global i8* null, align 8
@CHCR_SCMD_AUTH_MODE_SHA224 = common dso_local global i32 0, align 4
@CHCR_SCMD_AUTH_MODE_SHA256 = common dso_local global i32 0, align 4
@CHCR_KEYCTX_MAC_KEY_SIZE_512 = common dso_local global i8* null, align 8
@CHCR_SCMD_AUTH_MODE_SHA512_384 = common dso_local global i32 0, align 4
@CHCR_SCMD_AUTH_MODE_SHA512_512 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"chcr : ERROR, unsupported digest size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.algo_param*, i32)* @get_alg_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alg_config(%struct.algo_param* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.algo_param*, align 8
  %5 = alloca i32, align 4
  store %struct.algo_param* %0, %struct.algo_param** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %52 [
    i32 132, label %7
    i32 131, label %16
    i32 130, label %25
    i32 129, label %34
    i32 128, label %43
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** @CHCR_KEYCTX_MAC_KEY_SIZE_160, align 8
  %9 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %10 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @CHCR_SCMD_AUTH_MODE_SHA1, align 4
  %12 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %13 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %15 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %14, i32 0, i32 0
  store i32 132, i32* %15, align 8
  br label %56

16:                                               ; preds = %2
  %17 = load i8*, i8** @CHCR_KEYCTX_MAC_KEY_SIZE_256, align 8
  %18 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %19 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @CHCR_SCMD_AUTH_MODE_SHA224, align 4
  %21 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %22 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %24 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %23, i32 0, i32 0
  store i32 130, i32* %24, align 8
  br label %56

25:                                               ; preds = %2
  %26 = load i8*, i8** @CHCR_KEYCTX_MAC_KEY_SIZE_256, align 8
  %27 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %28 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @CHCR_SCMD_AUTH_MODE_SHA256, align 4
  %30 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %31 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %33 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %32, i32 0, i32 0
  store i32 130, i32* %33, align 8
  br label %56

34:                                               ; preds = %2
  %35 = load i8*, i8** @CHCR_KEYCTX_MAC_KEY_SIZE_512, align 8
  %36 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %37 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @CHCR_SCMD_AUTH_MODE_SHA512_384, align 4
  %39 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %40 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %42 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %41, i32 0, i32 0
  store i32 128, i32* %42, align 8
  br label %56

43:                                               ; preds = %2
  %44 = load i8*, i8** @CHCR_KEYCTX_MAC_KEY_SIZE_512, align 8
  %45 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %46 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @CHCR_SCMD_AUTH_MODE_SHA512_512, align 4
  %48 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %49 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.algo_param*, %struct.algo_param** %4, align 8
  %51 = getelementptr inbounds %struct.algo_param, %struct.algo_param* %50, i32 0, i32 0
  store i32 128, i32* %51, align 8
  br label %56

52:                                               ; preds = %2
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %43, %34, %25, %16, %7
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
