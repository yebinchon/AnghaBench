; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_arcturus.c_sdma_v4_0_get_reg_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_arcturus.c_sdma_v4_0_get_reg_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32*** }

@SDMA0_HWIP = common dso_local global i64 0, align 8
@SDMA1_HWIP = common dso_local global i64 0, align 8
@SDMA2_HWIP = common dso_local global i64 0, align 8
@SDMA3_HWIP = common dso_local global i64 0, align 8
@SDMA4_HWIP = common dso_local global i64 0, align 8
@SDMA5_HWIP = common dso_local global i64 0, align 8
@SDMA6_HWIP = common dso_local global i64 0, align 8
@SDMA7_HWIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32)* @sdma_v4_0_get_reg_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_get_reg_offset(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %113 [
    i32 0, label %9
    i32 1, label %22
    i32 2, label %35
    i32 3, label %48
    i32 4, label %61
    i32 5, label %74
    i32 6, label %87
    i32 7, label %100
  ]

9:                                                ; preds = %3
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32***, i32**** %11, align 8
  %13 = load i64, i64* @SDMA0_HWIP, align 8
  %14 = getelementptr inbounds i32**, i32*** %12, i64 %13
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  br label %115

22:                                               ; preds = %3
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i32***, i32**** %24, align 8
  %26 = load i64, i64* @SDMA1_HWIP, align 8
  %27 = getelementptr inbounds i32**, i32*** %25, i64 %26
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %4, align 4
  br label %115

35:                                               ; preds = %3
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = load i32***, i32**** %37, align 8
  %39 = load i64, i64* @SDMA2_HWIP, align 8
  %40 = getelementptr inbounds i32**, i32*** %38, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %4, align 4
  br label %115

48:                                               ; preds = %3
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = load i32***, i32**** %50, align 8
  %52 = load i64, i64* @SDMA3_HWIP, align 8
  %53 = getelementptr inbounds i32**, i32*** %51, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %4, align 4
  br label %115

61:                                               ; preds = %3
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = load i32***, i32**** %63, align 8
  %65 = load i64, i64* @SDMA4_HWIP, align 8
  %66 = getelementptr inbounds i32**, i32*** %64, i64 %65
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %4, align 4
  br label %115

74:                                               ; preds = %3
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 0
  %77 = load i32***, i32**** %76, align 8
  %78 = load i64, i64* @SDMA5_HWIP, align 8
  %79 = getelementptr inbounds i32**, i32*** %77, i64 %78
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %4, align 4
  br label %115

87:                                               ; preds = %3
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i32***, i32**** %89, align 8
  %91 = load i64, i64* @SDMA6_HWIP, align 8
  %92 = getelementptr inbounds i32**, i32*** %90, i64 %91
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* %4, align 4
  br label %115

100:                                              ; preds = %3
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 0
  %103 = load i32***, i32**** %102, align 8
  %104 = load i64, i64* @SDMA7_HWIP, align 8
  %105 = getelementptr inbounds i32**, i32*** %103, i64 %104
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %4, align 4
  br label %115

113:                                              ; preds = %3
  br label %114

114:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %100, %87, %74, %61, %48, %35, %22, %9
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
