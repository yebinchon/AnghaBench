; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_validate_sku.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_validate_sku.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"padMuxBond=%08x, prcmChipId=%08x, prcmSoCId=%08x\0A\00", align 1
@MXL_HYDRA_DEVICE_581 = common dso_local global i32 0, align 4
@MXL_HYDRA_DEVICE_581S = common dso_local global i32 0, align 4
@MXL_HYDRA_DEVICE_584 = common dso_local global i32 0, align 4
@MXL_HYDRA_DEVICE_544 = common dso_local global i32 0, align 4
@MXL_HYDRA_DEVICE_542 = common dso_local global i32 0, align 4
@MXL_HYDRA_DEVICE_582 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*)* @validate_sku to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_sku(%struct.mxl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.mxl*, %struct.mxl** %3, align 8
  %10 = getelementptr inbounds %struct.mxl, %struct.mxl* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mxl*, %struct.mxl** %3, align 8
  %15 = call i32 @read_by_mnemonic(%struct.mxl* %14, i32 -1879047792, i32 0, i32 3, i32* %4)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mxl*, %struct.mxl** %3, align 8
  %17 = call i32 @read_by_mnemonic(%struct.mxl* %16, i32 -2147287040, i32 0, i32 12, i32* %5)
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mxl*, %struct.mxl** %3, align 8
  %21 = call i32 @read_by_mnemonic(%struct.mxl* %20, i32 -2147287036, i32 24, i32 8, i32* %6)
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load %struct.mxl*, %struct.mxl** %3, align 8
  %29 = getelementptr inbounds %struct.mxl, %struct.mxl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_info(i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 1376
  br i1 %36, label %37, label %80

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %78 [
    i32 130, label %39
    i32 128, label %55
    i32 131, label %61
    i32 129, label %72
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MXL_HYDRA_DEVICE_581, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %82

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MXL_HYDRA_DEVICE_581S, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* @MXL_HYDRA_DEVICE_581, align 4
  %50 = load %struct.mxl*, %struct.mxl** %3, align 8
  %51 = getelementptr inbounds %struct.mxl, %struct.mxl* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  store i32 0, i32* %2, align 4
  br label %82

54:                                               ; preds = %44
  br label %79

55:                                               ; preds = %37
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @MXL_HYDRA_DEVICE_584, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %82

60:                                               ; preds = %55
  br label %79

61:                                               ; preds = %37
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MXL_HYDRA_DEVICE_544, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %82

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @MXL_HYDRA_DEVICE_542, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %82

71:                                               ; preds = %66
  br label %79

72:                                               ; preds = %37
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MXL_HYDRA_DEVICE_582, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %82

77:                                               ; preds = %72
  br label %79

78:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %82

79:                                               ; preds = %77, %71, %60, %54
  br label %81

80:                                               ; preds = %27
  br label %81

81:                                               ; preds = %80, %79
  store i32 -1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78, %76, %70, %65, %59, %48, %43, %26
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @read_by_mnemonic(%struct.mxl*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
