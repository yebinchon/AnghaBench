; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_get_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_get_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring }
%struct.amdgpu_ih_ring = type { i32, i32, i32* }

@IH_RB_WPTR = common dso_local global i32 0, align 4
@RB_OVERFLOW = common dso_local global i32 0, align 4
@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_WPTR = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_RING2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"IH ring buffer overflow (0x%08X, 0x%08X, 0x%08X)\0A\00", align 1
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@mmIH_RB_CNTL_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_CNTL_RING2 = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@WPTR_OVERFLOW_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*)* @vega10_ih_get_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_ih_get_wptr(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  %8 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IH_RB_WPTR, align 4
  %15 = load i32, i32* @RB_OVERFLOW, align 4
  %16 = call i32 @REG_GET_FIELD(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %128

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = icmp eq %struct.amdgpu_ih_ring* %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @OSSSYS, align 4
  %27 = load i32, i32* @mmIH_RB_WPTR, align 4
  %28 = call i32 @SOC15_REG_OFFSET(i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = icmp eq %struct.amdgpu_ih_ring* %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @OSSSYS, align 4
  %37 = load i32, i32* @mmIH_RB_WPTR_RING1, align 4
  %38 = call i32 @SOC15_REG_OFFSET(i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %52

39:                                               ; preds = %29
  %40 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = icmp eq %struct.amdgpu_ih_ring* %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* @OSSSYS, align 4
  %47 = load i32, i32* @mmIH_RB_WPTR_RING2, align 4
  %48 = call i32 @SOC15_REG_OFFSET(i32 %46, i32 0, i32 %47)
  store i32 %48, i32* %6, align 4
  br label %51

49:                                               ; preds = %39
  %50 = call i32 (...) @BUG()
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %35
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @RREG32_NO_KIQ(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @IH_RB_WPTR, align 4
  %58 = load i32, i32* @RB_OVERFLOW, align 4
  %59 = call i32 @REG_GET_FIELD(i32 %56, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %128

62:                                               ; preds = %53
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @IH_RB_WPTR, align 4
  %65 = load i32, i32* @RB_OVERFLOW, align 4
  %66 = call i32 @REG_SET_FIELD(i32 %63, i32 %64, i32 %65, i32 0)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 32
  %69 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %68, %71
  store i32 %72, i32* %7, align 4
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %78 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = icmp eq %struct.amdgpu_ih_ring* %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %62
  %91 = load i32, i32* @OSSSYS, align 4
  %92 = load i32, i32* @mmIH_RB_CNTL, align 4
  %93 = call i32 @SOC15_REG_OFFSET(i32 %91, i32 0, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %118

94:                                               ; preds = %62
  %95 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = icmp eq %struct.amdgpu_ih_ring* %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @OSSSYS, align 4
  %102 = load i32, i32* @mmIH_RB_CNTL_RING1, align 4
  %103 = call i32 @SOC15_REG_OFFSET(i32 %101, i32 0, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %117

104:                                              ; preds = %94
  %105 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = icmp eq %struct.amdgpu_ih_ring* %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @OSSSYS, align 4
  %112 = load i32, i32* @mmIH_RB_CNTL_RING2, align 4
  %113 = call i32 @SOC15_REG_OFFSET(i32 %111, i32 0, i32 %112)
  store i32 %113, i32* %6, align 4
  br label %116

114:                                              ; preds = %104
  %115 = call i32 (...) @BUG()
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %100
  br label %118

118:                                              ; preds = %117, %90
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @RREG32_NO_KIQ(i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @IH_RB_CNTL, align 4
  %123 = load i32, i32* @WPTR_OVERFLOW_CLEAR, align 4
  %124 = call i32 @REG_SET_FIELD(i32 %121, i32 %122, i32 %123, i32 1)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @WREG32_NO_KIQ(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %118, %61, %18
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %131 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %129, %132
  ret i32 %133
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @RREG32_NO_KIQ(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @WREG32_NO_KIQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
