; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, i32, i64, i64, i64 }

@TALITOS_IMR = common dso_local global i64 0, align 8
@TALITOS1_IMR_INIT = common dso_local global i32 0, align 4
@TALITOS_IMR_LO = common dso_local global i64 0, align 8
@TALITOS1_IMR_LO_INIT = common dso_local global i32 0, align 4
@TALITOS_EUICR = common dso_local global i64 0, align 8
@TALITOS1_DEUICR_KPE = common dso_local global i32 0, align 4
@TALITOS2_IMR_INIT = common dso_local global i32 0, align 4
@TALITOS2_IMR_LO_INIT = common dso_local global i32 0, align 4
@TALITOS_FTR_HW_AUTH_CHECK = common dso_local global i32 0, align 4
@TALITOS_EUICR_LO = common dso_local global i64 0, align 8
@TALITOS_MDEUICR_LO_ICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.talitos_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %8)
  store %struct.talitos_private* %9, %struct.talitos_private** %4, align 8
  %10 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %11 = call i32 @has_ftr_sec1(%struct.talitos_private* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @reset_device(%struct.device* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @reset_device(%struct.device* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %100

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %29 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @reset_channel(%struct.device* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %100

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %49 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TALITOS_IMR, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @TALITOS1_IMR_INIT, align 4
  %54 = call i32 @clrbits32(i64 %52, i32 %53)
  %55 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %56 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TALITOS_IMR_LO, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* @TALITOS1_IMR_LO_INIT, align 4
  %61 = call i32 @clrbits32(i64 %59, i32 %60)
  %62 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %63 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TALITOS_EUICR, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* @TALITOS1_DEUICR_KPE, align 4
  %68 = call i32 @setbits32(i64 %66, i32 %67)
  br label %84

69:                                               ; preds = %44
  %70 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %71 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TALITOS_IMR, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* @TALITOS2_IMR_INIT, align 4
  %76 = call i32 @setbits32(i64 %74, i32 %75)
  %77 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %78 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TALITOS_IMR_LO, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* @TALITOS2_IMR_LO_INIT, align 4
  %83 = call i32 @setbits32(i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %69, %47
  %85 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %86 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TALITOS_FTR_HW_AUTH_CHECK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  %92 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %93 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TALITOS_EUICR_LO, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i32, i32* @TALITOS_MDEUICR_LO_ICE, align 4
  %98 = call i32 @setbits32(i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %84
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %38, %23, %16
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @reset_device(%struct.device*) #1

declare dso_local i32 @reset_channel(%struct.device*, i32) #1

declare dso_local i32 @clrbits32(i64, i32) #1

declare dso_local i32 @setbits32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
