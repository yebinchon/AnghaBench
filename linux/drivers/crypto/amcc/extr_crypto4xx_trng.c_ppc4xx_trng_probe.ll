; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_trng.c_ppc4xx_trng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_trng.c_ppc4xx_trng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_core_device = type { %struct.hwrng*, i32, %struct.crypto4xx_device* }
%struct.hwrng = type { i64, i32, i32, i32 }
%struct.crypto4xx_device = type { i32* }
%struct.device_node = type { i32 }

@ppc4xx_trng_match = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@ppc4xx_trng_data_present = common dso_local global i32 0, align 4
@ppc4xx_trng_data_read = common dso_local global i32 0, align 4
@PPC4XX_TRNG_CTRL = common dso_local global i32 0, align 4
@PPC4XX_TRNG_CTRL_DALM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to register hwrng (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppc4xx_trng_probe(%struct.crypto4xx_core_device* %0) #0 {
  %2 = alloca %struct.crypto4xx_core_device*, align 8
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.hwrng*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto4xx_core_device* %0, %struct.crypto4xx_core_device** %2, align 8
  %7 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %8 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %7, i32 0, i32 2
  %9 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %8, align 8
  store %struct.crypto4xx_device* %9, %struct.crypto4xx_device** %3, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  store %struct.hwrng* null, %struct.hwrng** %5, align 8
  %10 = load i32, i32* @ppc4xx_trng_match, align 4
  %11 = call %struct.device_node* @of_find_matching_node(i32* null, i32 %10)
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_device_is_available(%struct.device_node* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  br label %95

21:                                               ; preds = %14
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32* @of_iomap(%struct.device_node* %22, i32 0)
  %24 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %25 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.device_node*, %struct.device_node** %4, align 8
  %27 = call i32 @of_node_put(%struct.device_node* %26)
  %28 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %29 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %84

33:                                               ; preds = %21
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.hwrng* @kzalloc(i32 24, i32 %34)
  store %struct.hwrng* %35, %struct.hwrng** %5, align 8
  %36 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %37 = icmp ne %struct.hwrng* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %84

39:                                               ; preds = %33
  %40 = load i32, i32* @KBUILD_MODNAME, align 4
  %41 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %42 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ppc4xx_trng_data_present, align 4
  %44 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %45 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ppc4xx_trng_data_read, align 4
  %47 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %48 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %50 = ptrtoint %struct.crypto4xx_device* %49 to i64
  %51 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %52 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %54 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %55 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %54, i32 0, i32 0
  store %struct.hwrng* %53, %struct.hwrng** %55, align 8
  %56 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %57 = call i32 @ppc4xx_trng_enable(%struct.crypto4xx_device* %56, i32 1)
  %58 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %59 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @PPC4XX_TRNG_CTRL, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* @PPC4XX_TRNG_CTRL_DALM, align 4
  %65 = call i32 @out_le32(i32* %63, i32 %64)
  %66 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %67 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %70 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %69, i32 0, i32 0
  %71 = load %struct.hwrng*, %struct.hwrng** %70, align 8
  %72 = call i32 @devm_hwrng_register(i32 %68, %struct.hwrng* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %39
  %76 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %77 = call i32 @ppc4xx_trng_enable(%struct.crypto4xx_device* %76, i32 0)
  %78 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %79 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %84

83:                                               ; preds = %39
  br label %95

84:                                               ; preds = %75, %38, %32
  %85 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %86 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @iounmap(i32* %87)
  %89 = load %struct.hwrng*, %struct.hwrng** %5, align 8
  %90 = call i32 @kfree(%struct.hwrng* %89)
  %91 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %92 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  %93 = load %struct.crypto4xx_core_device*, %struct.crypto4xx_core_device** %2, align 8
  %94 = getelementptr inbounds %struct.crypto4xx_core_device, %struct.crypto4xx_core_device* %93, i32 0, i32 0
  store %struct.hwrng* null, %struct.hwrng** %94, align 8
  br label %95

95:                                               ; preds = %84, %83, %18
  ret void
}

declare dso_local %struct.device_node* @of_find_matching_node(i32*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32* @of_iomap(%struct.device_node*, i32) #1

declare dso_local %struct.hwrng* @kzalloc(i32, i32) #1

declare dso_local i32 @ppc4xx_trng_enable(%struct.crypto4xx_device*, i32) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @devm_hwrng_register(i32, %struct.hwrng*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.hwrng*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
