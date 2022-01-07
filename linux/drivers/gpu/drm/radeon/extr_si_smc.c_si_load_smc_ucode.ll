; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_smc.c_si_load_smc_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_smc.c_si_load_smc_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.smc_firmware_header_v1_0 = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TAHITI_SMC_UCODE_START = common dso_local global i32 0, align 4
@TAHITI_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@PITCAIRN_SMC_UCODE_START = common dso_local global i32 0, align 4
@PITCAIRN_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@VERDE_SMC_UCODE_START = common dso_local global i32 0, align 4
@VERDE_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@OLAND_SMC_UCODE_START = common dso_local global i32 0, align 4
@OLAND_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@HAINAN_SMC_UCODE_START = common dso_local global i32 0, align 4
@HAINAN_SMC_UCODE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unknown asic in smc ucode loader\0A\00", align 1
@SMC_IND_INDEX_0 = common dso_local global i32 0, align 4
@SMC_IND_ACCESS_CNTL = common dso_local global i32 0, align 4
@AUTO_INCREMENT_IND_0 = common dso_local global i32 0, align 4
@SMC_IND_DATA_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_load_smc_ucode(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smc_firmware_header_v1_0*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %145

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.smc_firmware_header_v1_0*
  store %struct.smc_firmware_header_v1_0* %31, %struct.smc_firmware_header_v1_0** %11, align 8
  %32 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %11, align 8
  %33 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %32, i32 0, i32 0
  %34 = call i32 @radeon_ucode_print_smc_hdr(%struct.TYPE_4__* %33)
  %35 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %11, align 8
  %36 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %11, align 8
  %40 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.smc_firmware_header_v1_0*, %struct.smc_firmware_header_v1_0** %11, align 8
  %50 = getelementptr inbounds %struct.smc_firmware_header_v1_0, %struct.smc_firmware_header_v1_0* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = add nsw i32 %48, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %9, align 8
  br label %87

57:                                               ; preds = %19
  %58 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %76 [
    i32 129, label %61
    i32 130, label %64
    i32 128, label %67
    i32 131, label %70
    i32 132, label %73
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @TAHITI_SMC_UCODE_START, align 4
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @TAHITI_SMC_UCODE_SIZE, align 4
  store i32 %63, i32* %8, align 4
  br label %79

64:                                               ; preds = %57
  %65 = load i32, i32* @PITCAIRN_SMC_UCODE_START, align 4
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @PITCAIRN_SMC_UCODE_SIZE, align 4
  store i32 %66, i32* %8, align 4
  br label %79

67:                                               ; preds = %57
  %68 = load i32, i32* @VERDE_SMC_UCODE_START, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @VERDE_SMC_UCODE_SIZE, align 4
  store i32 %69, i32* %8, align 4
  br label %79

70:                                               ; preds = %57
  %71 = load i32, i32* @OLAND_SMC_UCODE_START, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @OLAND_SMC_UCODE_SIZE, align 4
  store i32 %72, i32* %8, align 4
  br label %79

73:                                               ; preds = %57
  %74 = load i32, i32* @HAINAN_SMC_UCODE_START, align 4
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @HAINAN_SMC_UCODE_SIZE, align 4
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %57
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %76, %73, %70, %67, %64, %61
  %80 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i32*
  store i32* %86, i32** %9, align 8
  br label %87

87:                                               ; preds = %79, %24
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %145

94:                                               ; preds = %87
  %95 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 1
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load i32, i32* @SMC_IND_INDEX_0, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @WREG32(i32 %99, i32 %100)
  %102 = load i32, i32* @SMC_IND_ACCESS_CNTL, align 4
  %103 = load i32, i32* @AUTO_INCREMENT_IND_0, align 4
  %104 = load i32, i32* @AUTO_INCREMENT_IND_0, align 4
  %105 = xor i32 %104, -1
  %106 = call i32 @WREG32_P(i32 %102, i32 %103, i32 %105)
  br label %107

107:                                              ; preds = %110, %94
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 4
  br i1 %109, label %110, label %136

110:                                              ; preds = %107
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 24
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %114, %118
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %119, %123
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %124, %127
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* @SMC_IND_DATA_0, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @WREG32(i32 %129, i32 %130)
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32* %133, i32** %9, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 4
  store i32 %135, i32* %8, align 4
  br label %107

136:                                              ; preds = %107
  %137 = load i32, i32* @SMC_IND_ACCESS_CNTL, align 4
  %138 = load i32, i32* @AUTO_INCREMENT_IND_0, align 4
  %139 = xor i32 %138, -1
  %140 = call i32 @WREG32_P(i32 %137, i32 0, i32 %139)
  %141 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @spin_unlock_irqrestore(i32* %142, i64 %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %136, %91, %16
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @radeon_ucode_print_smc_hdr(%struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
