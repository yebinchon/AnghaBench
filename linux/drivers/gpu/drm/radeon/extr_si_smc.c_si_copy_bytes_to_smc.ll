; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_smc.c_si_copy_bytes_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_smc.c_si_copy_bytes_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMC_IND_DATA_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_copy_bytes_to_smc(%struct.radeon_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %140

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %140

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %16, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %68, %33
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 4
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 24
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %46, %50
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %51, %55
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %56, %59
  store i32 %60, i32* %14, align 4
  %61 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @si_set_smc_sram_address(%struct.radeon_device* %61, i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %42
  br label %134

68:                                               ; preds = %42
  %69 = load i32, i32* @SMC_IND_DATA_0, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32* %73, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %74, 4
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %16, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %133

81:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  %82 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @si_set_smc_sram_address(%struct.radeon_device* %82, i32 %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %134

89:                                               ; preds = %81
  %90 = load i32, i32* @SMC_IND_DATA_0, align 4
  %91 = call i32 @RREG32(i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 4, %92
  %94 = mul nsw i32 8, %93
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %98, %89
  %96 = load i32, i32* %10, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = shl i32 %99, 8
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %9, align 8
  %103 = load i32, i32* %101, align 4
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %10, align 4
  br label %95

107:                                              ; preds = %95
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %14, align 4
  %110 = shl i32 %109, %108
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = load i32, i32* %17, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 -1, %114
  %116 = xor i64 %115, -1
  %117 = and i64 %112, %116
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = or i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %14, align 4
  %122 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @si_set_smc_sram_address(%struct.radeon_device* %122, i32 %123, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %107
  br label %134

129:                                              ; preds = %107
  %130 = load i32, i32* @SMC_IND_DATA_0, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @WREG32(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %78
  br label %134

134:                                              ; preds = %133, %128, %88, %67
  %135 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 0
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %134, %30, %21
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @si_set_smc_sram_address(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
