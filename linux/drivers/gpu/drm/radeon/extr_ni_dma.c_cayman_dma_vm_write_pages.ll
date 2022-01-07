; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_vm_write_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_vm_write_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ib = type { i32*, i32 }

@DMA_PACKET_WRITE = common dso_local global i32 0, align 4
@R600_PTE_SYSTEM = common dso_local global i32 0, align 4
@R600_PTE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_dma_vm_write_pages(%struct.radeon_device* %0, %struct.radeon_ib* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_ib*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %8, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  br label %17

17:                                               ; preds = %117, %7
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %118

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = mul i32 %21, 2
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ugt i32 %23, 1048574
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1048574, i32* %16, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* @DMA_PACKET_WRITE, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @DMA_PACKET(i32 %27, i32 0, i32 0, i32 %28)
  %30 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %31 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %34 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  store i32 %29, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %41 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %44 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 %39, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @upper_32_bits(i32 %49)
  %51 = and i32 %50, 255
  %52 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %53 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %56 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  store i32 %51, i32* %60, align 4
  br label %61

61:                                               ; preds = %110, %26
  %62 = load i32, i32* %16, align 4
  %63 = icmp ugt i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @R600_PTE_SYSTEM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @radeon_vm_map_gart(%struct.radeon_device* %70, i32 %71)
  store i32 %72, i32* %15, align 4
  br label %82

73:                                               ; preds = %64
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @R600_PTE_VALID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %15, align 4
  br label %81

80:                                               ; preds = %73
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %80, %78
  br label %82

82:                                               ; preds = %81, %69
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %91 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %94 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  store i32 %89, i32* %98, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @upper_32_bits(i32 %99)
  %101 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %102 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.radeon_ib*, %struct.radeon_ib** %9, align 8
  %105 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  store i32 %100, i32* %109, align 4
  br label %110

110:                                              ; preds = %82
  %111 = load i32, i32* %16, align 4
  %112 = sub i32 %111, 2
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, -1
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 8
  store i32 %116, i32* %10, align 4
  br label %61

117:                                              ; preds = %61
  br label %17

118:                                              ; preds = %17
  ret void
}

declare dso_local i32 @DMA_PACKET(i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_vm_map_gart(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
