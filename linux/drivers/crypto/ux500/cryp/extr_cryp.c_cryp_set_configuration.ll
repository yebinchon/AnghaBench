; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_set_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/cryp/extr_cryp.c_cryp_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryp_device_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cryp_config = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRYP_CR_KEYSIZE_POS = common dso_local global i32 0, align 4
@CRYP_ALGORITHM_DECRYPT = common dso_local global i32 0, align 4
@CRYP_ALGO_AES_ECB = common dso_local global i32 0, align 4
@CRYP_ALGO_AES_CBC = common dso_local global i32 0, align 4
@CRYP_ALGORITHM_ENCRYPT = common dso_local global i32 0, align 4
@CRYP_CR_ALGODIR_POS = common dso_local global i32 0, align 4
@CRYP_CR_ALGOMODE_POS = common dso_local global i32 0, align 4
@CRYP_CRYPEN_ENABLE = common dso_local global i32 0, align 4
@CRYP_CR_CRYPEN_POS = common dso_local global i32 0, align 4
@KSE_ENABLED = common dso_local global i32 0, align 4
@CRYP_CR_KSE_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cryp_set_configuration(%struct.cryp_device_data* %0, %struct.cryp_config* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cryp_device_data*, align 8
  %6 = alloca %struct.cryp_config*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.cryp_device_data* %0, %struct.cryp_device_data** %5, align 8
  store %struct.cryp_config* %1, %struct.cryp_config** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.cryp_device_data*, %struct.cryp_device_data** %5, align 8
  %10 = icmp eq %struct.cryp_device_data* null, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.cryp_config*, %struct.cryp_config** %6, align 8
  %13 = icmp eq %struct.cryp_config* null, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %86

17:                                               ; preds = %11
  %18 = load %struct.cryp_config*, %struct.cryp_config** %6, align 8
  %19 = getelementptr inbounds %struct.cryp_config, %struct.cryp_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CRYP_CR_KEYSIZE_POS, align 4
  %22 = shl i32 %20, %21
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @CRYP_ALGORITHM_DECRYPT, align 4
  %27 = load %struct.cryp_config*, %struct.cryp_config** %6, align 8
  %28 = getelementptr inbounds %struct.cryp_config, %struct.cryp_config* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %17
  %32 = load i32, i32* @CRYP_ALGO_AES_ECB, align 4
  %33 = load %struct.cryp_config*, %struct.cryp_config** %6, align 8
  %34 = getelementptr inbounds %struct.cryp_config, %struct.cryp_config* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @CRYP_ALGO_AES_CBC, align 4
  %39 = load %struct.cryp_config*, %struct.cryp_config** %6, align 8
  %40 = getelementptr inbounds %struct.cryp_config, %struct.cryp_config* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %37, %31
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @CRYP_ALGORITHM_ENCRYPT, align 4
  %47 = load i32, i32* @CRYP_CR_ALGODIR_POS, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* @CRYP_ALGO_AES_ECB, align 4
  %50 = load i32, i32* @CRYP_CR_ALGOMODE_POS, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load i32, i32* @CRYP_CRYPEN_ENABLE, align 4
  %54 = load i32, i32* @CRYP_CR_CRYPEN_POS, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = load i32, i32* @KSE_ENABLED, align 4
  %58 = load i32, i32* @CRYP_CR_KSE_POS, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.cryp_device_data*, %struct.cryp_device_data** %5, align 8
  %65 = getelementptr inbounds %struct.cryp_device_data, %struct.cryp_device_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @writel_relaxed(i32 %63, i32* %67)
  %69 = load %struct.cryp_device_data*, %struct.cryp_device_data** %5, align 8
  %70 = call i32 @cryp_wait_until_done(%struct.cryp_device_data* %69)
  br label %71

71:                                               ; preds = %43, %37, %17
  %72 = load %struct.cryp_config*, %struct.cryp_config** %6, align 8
  %73 = getelementptr inbounds %struct.cryp_config, %struct.cryp_config* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CRYP_CR_ALGOMODE_POS, align 4
  %76 = shl i32 %74, %75
  %77 = load %struct.cryp_config*, %struct.cryp_config** %6, align 8
  %78 = getelementptr inbounds %struct.cryp_config, %struct.cryp_config* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CRYP_CR_ALGODIR_POS, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %76, %81
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %71, %14
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @cryp_wait_until_done(%struct.cryp_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
