; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_smc.c_rv770_load_smc_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_smc.c_rv770_load_smc_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RV770_SMC_UCODE_START = common dso_local global i32 0, align 4
@RV770_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@rv770_smc_int_vectors = common dso_local global i32 0, align 4
@RV770_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@RV770_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@RV730_SMC_UCODE_START = common dso_local global i32 0, align 4
@RV730_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@rv730_smc_int_vectors = common dso_local global i32 0, align 4
@RV730_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@RV730_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@RV710_SMC_UCODE_START = common dso_local global i32 0, align 4
@RV710_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@rv710_smc_int_vectors = common dso_local global i32 0, align 4
@RV710_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@RV710_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@RV740_SMC_UCODE_START = common dso_local global i32 0, align 4
@RV740_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@rv740_smc_int_vectors = common dso_local global i32 0, align 4
@RV740_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@RV740_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@CEDAR_SMC_UCODE_START = common dso_local global i32 0, align 4
@CEDAR_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@cedar_smc_int_vectors = common dso_local global i32 0, align 4
@CEDAR_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@CEDAR_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@REDWOOD_SMC_UCODE_START = common dso_local global i32 0, align 4
@REDWOOD_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@redwood_smc_int_vectors = common dso_local global i32 0, align 4
@REDWOOD_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@REDWOOD_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@JUNIPER_SMC_UCODE_START = common dso_local global i32 0, align 4
@JUNIPER_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@juniper_smc_int_vectors = common dso_local global i32 0, align 4
@JUNIPER_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@JUNIPER_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@CYPRESS_SMC_UCODE_START = common dso_local global i32 0, align 4
@CYPRESS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@cypress_smc_int_vectors = common dso_local global i32 0, align 4
@CYPRESS_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@CYPRESS_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@BARTS_SMC_UCODE_START = common dso_local global i32 0, align 4
@BARTS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@barts_smc_int_vectors = common dso_local global i32 0, align 4
@BARTS_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@BARTS_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@TURKS_SMC_UCODE_START = common dso_local global i32 0, align 4
@TURKS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@turks_smc_int_vectors = common dso_local global i32 0, align 4
@TURKS_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@TURKS_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@CAICOS_SMC_UCODE_START = common dso_local global i32 0, align 4
@CAICOS_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@caicos_smc_int_vectors = common dso_local global i32 0, align 4
@CAICOS_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@CAICOS_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@CAYMAN_SMC_UCODE_START = common dso_local global i32 0, align 4
@CAYMAN_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@cayman_smc_int_vectors = common dso_local global i32 0, align 4
@CAYMAN_SMC_INT_VECTOR_START = common dso_local global i32 0, align 4
@CAYMAN_SMC_INT_VECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unknown asic in smc ucode loader\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_load_smc_ucode(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %118

20:                                               ; preds = %2
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rv770_clear_smc_sram(%struct.radeon_device* %21, i32 %22)
  %24 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %87 [
    i32 129, label %27
    i32 131, label %32
    i32 132, label %37
    i32 130, label %42
    i32 137, label %47
    i32 133, label %52
    i32 134, label %57
    i32 136, label %62
    i32 135, label %62
    i32 140, label %67
    i32 128, label %72
    i32 139, label %77
    i32 138, label %82
  ]

27:                                               ; preds = %20
  %28 = load i32, i32* @RV770_SMC_UCODE_START, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* @RV770_SMC_UCODE_SIZE, align 4
  store i32 %29, i32* %12, align 4
  store i32* @rv770_smc_int_vectors, i32** %7, align 8
  %30 = load i32, i32* @RV770_SMC_INT_VECTOR_START, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @RV770_SMC_INT_VECTOR_SIZE, align 4
  store i32 %31, i32* %9, align 4
  br label %90

32:                                               ; preds = %20
  %33 = load i32, i32* @RV730_SMC_UCODE_START, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @RV730_SMC_UCODE_SIZE, align 4
  store i32 %34, i32* %12, align 4
  store i32* @rv730_smc_int_vectors, i32** %7, align 8
  %35 = load i32, i32* @RV730_SMC_INT_VECTOR_START, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @RV730_SMC_INT_VECTOR_SIZE, align 4
  store i32 %36, i32* %9, align 4
  br label %90

37:                                               ; preds = %20
  %38 = load i32, i32* @RV710_SMC_UCODE_START, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @RV710_SMC_UCODE_SIZE, align 4
  store i32 %39, i32* %12, align 4
  store i32* @rv710_smc_int_vectors, i32** %7, align 8
  %40 = load i32, i32* @RV710_SMC_INT_VECTOR_START, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @RV710_SMC_INT_VECTOR_SIZE, align 4
  store i32 %41, i32* %9, align 4
  br label %90

42:                                               ; preds = %20
  %43 = load i32, i32* @RV740_SMC_UCODE_START, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @RV740_SMC_UCODE_SIZE, align 4
  store i32 %44, i32* %12, align 4
  store i32* @rv740_smc_int_vectors, i32** %7, align 8
  %45 = load i32, i32* @RV740_SMC_INT_VECTOR_START, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @RV740_SMC_INT_VECTOR_SIZE, align 4
  store i32 %46, i32* %9, align 4
  br label %90

47:                                               ; preds = %20
  %48 = load i32, i32* @CEDAR_SMC_UCODE_START, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @CEDAR_SMC_UCODE_SIZE, align 4
  store i32 %49, i32* %12, align 4
  store i32* @cedar_smc_int_vectors, i32** %7, align 8
  %50 = load i32, i32* @CEDAR_SMC_INT_VECTOR_START, align 4
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @CEDAR_SMC_INT_VECTOR_SIZE, align 4
  store i32 %51, i32* %9, align 4
  br label %90

52:                                               ; preds = %20
  %53 = load i32, i32* @REDWOOD_SMC_UCODE_START, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @REDWOOD_SMC_UCODE_SIZE, align 4
  store i32 %54, i32* %12, align 4
  store i32* @redwood_smc_int_vectors, i32** %7, align 8
  %55 = load i32, i32* @REDWOOD_SMC_INT_VECTOR_START, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @REDWOOD_SMC_INT_VECTOR_SIZE, align 4
  store i32 %56, i32* %9, align 4
  br label %90

57:                                               ; preds = %20
  %58 = load i32, i32* @JUNIPER_SMC_UCODE_START, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @JUNIPER_SMC_UCODE_SIZE, align 4
  store i32 %59, i32* %12, align 4
  store i32* @juniper_smc_int_vectors, i32** %7, align 8
  %60 = load i32, i32* @JUNIPER_SMC_INT_VECTOR_START, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @JUNIPER_SMC_INT_VECTOR_SIZE, align 4
  store i32 %61, i32* %9, align 4
  br label %90

62:                                               ; preds = %20, %20
  %63 = load i32, i32* @CYPRESS_SMC_UCODE_START, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @CYPRESS_SMC_UCODE_SIZE, align 4
  store i32 %64, i32* %12, align 4
  store i32* @cypress_smc_int_vectors, i32** %7, align 8
  %65 = load i32, i32* @CYPRESS_SMC_INT_VECTOR_START, align 4
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @CYPRESS_SMC_INT_VECTOR_SIZE, align 4
  store i32 %66, i32* %9, align 4
  br label %90

67:                                               ; preds = %20
  %68 = load i32, i32* @BARTS_SMC_UCODE_START, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @BARTS_SMC_UCODE_SIZE, align 4
  store i32 %69, i32* %12, align 4
  store i32* @barts_smc_int_vectors, i32** %7, align 8
  %70 = load i32, i32* @BARTS_SMC_INT_VECTOR_START, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @BARTS_SMC_INT_VECTOR_SIZE, align 4
  store i32 %71, i32* %9, align 4
  br label %90

72:                                               ; preds = %20
  %73 = load i32, i32* @TURKS_SMC_UCODE_START, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* @TURKS_SMC_UCODE_SIZE, align 4
  store i32 %74, i32* %12, align 4
  store i32* @turks_smc_int_vectors, i32** %7, align 8
  %75 = load i32, i32* @TURKS_SMC_INT_VECTOR_START, align 4
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @TURKS_SMC_INT_VECTOR_SIZE, align 4
  store i32 %76, i32* %9, align 4
  br label %90

77:                                               ; preds = %20
  %78 = load i32, i32* @CAICOS_SMC_UCODE_START, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* @CAICOS_SMC_UCODE_SIZE, align 4
  store i32 %79, i32* %12, align 4
  store i32* @caicos_smc_int_vectors, i32** %7, align 8
  %80 = load i32, i32* @CAICOS_SMC_INT_VECTOR_START, align 4
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @CAICOS_SMC_INT_VECTOR_SIZE, align 4
  store i32 %81, i32* %9, align 4
  br label %90

82:                                               ; preds = %20
  %83 = load i32, i32* @CAYMAN_SMC_UCODE_START, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* @CAYMAN_SMC_UCODE_SIZE, align 4
  store i32 %84, i32* %12, align 4
  store i32* @cayman_smc_int_vectors, i32** %7, align 8
  %85 = load i32, i32* @CAYMAN_SMC_INT_VECTOR_START, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* @CAYMAN_SMC_INT_VECTOR_SIZE, align 4
  store i32 %86, i32* %9, align 4
  br label %90

87:                                               ; preds = %20
  %88 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27
  %91 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %10, align 8
  %97 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %97, i32 %98, i32* %99, i32 %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %118

107:                                              ; preds = %90
  %108 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @rv770_program_interrupt_vectors(%struct.radeon_device* %108, i32 %109, i32* %110, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %118

117:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %115, %105, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @rv770_clear_smc_sram(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @rv770_program_interrupt_vectors(%struct.radeon_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
