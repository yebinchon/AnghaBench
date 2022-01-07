; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc.c_tmc_etr_setup_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc.c_tmc_etr_setup_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tmc_drvdata = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@TMC_DEVID_NOSCAT = common dso_local global i32 0, align 4
@TMC_ETR_SG = common dso_local global i32 0, align 4
@TMC_DEVID_AXIAW_VALID = common dso_local global i32 0, align 4
@TMC_DEVID_AXIAW_SHIFT = common dso_local global i32 0, align 4
@TMC_DEVID_AXIAW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Detected dma mask %dbits\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to setup DMA mask: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @tmc_etr_setup_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_etr_setup_caps(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tmc_drvdata*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.tmc_drvdata* @dev_get_drvdata(%struct.device* %11)
  store %struct.tmc_drvdata* %12, %struct.tmc_drvdata** %10, align 8
  %13 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %10, align 8
  %14 = call i32 @tmc_etr_has_non_secure_access(%struct.tmc_drvdata* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = trunc i64 %22 to i32
  %24 = call i32 @tmc_etr_init_caps(%struct.tmc_drvdata* %20, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TMC_DEVID_NOSCAT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %19
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i64 @tmc_etr_can_use_sg(%struct.device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %10, align 8
  %35 = load i32, i32* @TMC_ETR_SG, align 4
  %36 = call i32 @tmc_etr_set_cap(%struct.tmc_drvdata* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29, %19
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TMC_DEVID_AXIAW_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @TMC_DEVID_AXIAW_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @TMC_DEVID_AXIAW_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %54 [
    i32 32, label %50
    i32 40, label %50
    i32 44, label %50
    i32 48, label %50
    i32 52, label %50
  ]

50:                                               ; preds = %48, %48, %48, %48, %48
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dev_info(%struct.device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %55

54:                                               ; preds = %48
  store i32 40, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @DMA_BIT_MASK(i32 %57)
  %59 = call i32 @dma_set_mask_and_coherent(%struct.device* %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.tmc_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tmc_etr_has_non_secure_access(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_etr_init_caps(%struct.tmc_drvdata*, i32) #1

declare dso_local i64 @tmc_etr_can_use_sg(%struct.device*) #1

declare dso_local i32 @tmc_etr_set_cap(%struct.tmc_drvdata*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
