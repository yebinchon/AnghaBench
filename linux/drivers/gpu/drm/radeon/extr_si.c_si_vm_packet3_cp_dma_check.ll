; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_cp_dma_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_cp_dma_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKET3_CP_DMA_CMD_SAS = common dso_local global i32 0, align 4
@PACKET3_CP_DMA_CMD_SAIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"CP DMA Bad SRC register\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PACKET3_CP_DMA_CMD_DAS = common dso_local global i32 0, align 4
@PACKET3_CP_DMA_CMD_DAIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"CP DMA Bad DST register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @si_vm_packet3_cp_dma_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_vm_packet3_cp_dma_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PACKET3_CP_DMA_CMD_SAS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 1610612736
  %36 = ashr i32 %35, 29
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = shl i32 %39, 2
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @PACKET3_CP_DMA_CMD_SAIC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @si_vm_reg_valid(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %137

54:                                               ; preds = %45
  br label %78

55:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 2097151
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 4, %63
  %65 = add nsw i32 %62, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @si_vm_reg_valid(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %137

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %56

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %54
  br label %79

79:                                               ; preds = %78, %33
  br label %80

80:                                               ; preds = %79, %2
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @PACKET3_CP_DMA_CMD_DAS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %86, 3145728
  %88 = ashr i32 %87, 20
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %85
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @PACKET3_CP_DMA_CMD_DAIC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @si_vm_reg_valid(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %137

110:                                              ; preds = %101
  br label %134

111:                                              ; preds = %90
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = and i32 %114, 2097151
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %8, align 4
  %120 = mul nsw i32 4, %119
  %121 = add nsw i32 %118, %120
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @si_vm_reg_valid(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %117
  %126 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %137

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %112

133:                                              ; preds = %112
  br label %134

134:                                              ; preds = %133, %110
  br label %135

135:                                              ; preds = %134, %85
  br label %136

136:                                              ; preds = %135, %80
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %125, %106, %69, %50
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @si_vm_reg_valid(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
