; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_parse_asic_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_parse_asic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_asic_id = type { i32, i32 }

@DCE_VERSION_UNKNOWN = common dso_local global i32 0, align 4
@DCE_VERSION_8_0 = common dso_local global i32 0, align 4
@DCE_VERSION_8_3 = common dso_local global i32 0, align 4
@DCE_VERSION_8_1 = common dso_local global i32 0, align 4
@DCE_VERSION_11_0 = common dso_local global i32 0, align 4
@DCE_VERSION_10_0 = common dso_local global i32 0, align 4
@DCE_VERSION_11_2 = common dso_local global i32 0, align 4
@DCE_VERSION_11_22 = common dso_local global i32 0, align 4
@DCE_VERSION_12_1 = common dso_local global i32 0, align 4
@DCE_VERSION_12_0 = common dso_local global i32 0, align 4
@DCN_VERSION_1_0 = common dso_local global i32 0, align 4
@DCN_VERSION_1_01 = common dso_local global i32 0, align 4
@DCN_VERSION_2_0 = common dso_local global i32 0, align 4
@DCN_VERSION_2_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_parse_asic_id(i64 %0) #0 {
  %2 = alloca %struct.hw_asic_id, align 4
  %3 = alloca i32, align 4
  %4 = bitcast %struct.hw_asic_id* %2 to i64*
  store i64 %0, i64* %4, align 4
  %5 = load i32, i32* @DCE_VERSION_UNKNOWN, align 4
  store i32 %5, i32* %3, align 4
  %6 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %79 [
    i32 133, label %8
    i32 131, label %10
    i32 132, label %30
    i32 128, label %32
    i32 134, label %69
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @DCE_VERSION_8_0, align 4
  store i32 %9, i32* %3, align 4
  br label %81

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ASIC_REV_IS_KALINDI(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ASIC_REV_IS_BHAVANI(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ASIC_REV_IS_GODAVARI(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %15, %10
  %26 = load i32, i32* @DCE_VERSION_8_3, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @DCE_VERSION_8_1, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %81

30:                                               ; preds = %1
  %31 = load i32, i32* @DCE_VERSION_11_0, align 4
  store i32 %31, i32* %3, align 4
  br label %81

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ASIC_REV_IS_TONGA_P(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ASIC_REV_IS_FIJI_P(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @DCE_VERSION_10_0, align 4
  store i32 %43, i32* %3, align 4
  br label %81

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ASIC_REV_IS_POLARIS10_P(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ASIC_REV_IS_POLARIS11_M(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ASIC_REV_IS_POLARIS12_V(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %49, %44
  %60 = load i32, i32* @DCE_VERSION_11_2, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ASIC_REV_IS_VEGAM(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @DCE_VERSION_11_22, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %61
  br label %81

69:                                               ; preds = %1
  %70 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %2, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ASICREV_IS_VEGA20_P(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @DCE_VERSION_12_1, align 4
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @DCE_VERSION_12_0, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %81

79:                                               ; preds = %1
  %80 = load i32, i32* @DCE_VERSION_UNKNOWN, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %78, %68, %42, %30, %29, %8
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ASIC_REV_IS_KALINDI(i32) #1

declare dso_local i32 @ASIC_REV_IS_BHAVANI(i32) #1

declare dso_local i32 @ASIC_REV_IS_GODAVARI(i32) #1

declare dso_local i32 @ASIC_REV_IS_TONGA_P(i32) #1

declare dso_local i32 @ASIC_REV_IS_FIJI_P(i32) #1

declare dso_local i32 @ASIC_REV_IS_POLARIS10_P(i32) #1

declare dso_local i32 @ASIC_REV_IS_POLARIS11_M(i32) #1

declare dso_local i32 @ASIC_REV_IS_POLARIS12_V(i32) #1

declare dso_local i32 @ASIC_REV_IS_VEGAM(i32) #1

declare dso_local i32 @ASICREV_IS_VEGA20_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
