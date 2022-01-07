; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_copy_cmd_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_copy_cmd_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i64, i32* }
%struct.iommu_cmd = type { i32 }

@CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@MMIO_CMD_TAIL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*, %struct.iommu_cmd*)* @copy_cmd_to_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_cmd_to_buffer(%struct.amd_iommu* %0, %struct.iommu_cmd* %1) #0 {
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca %struct.iommu_cmd*, align 8
  %5 = alloca i32*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %3, align 8
  store %struct.iommu_cmd* %1, %struct.iommu_cmd** %4, align 8
  %6 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %7 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %10 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  store i32* %13, i32** %5, align 8
  %14 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %15 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 8
  %20 = load i32, i32* @CMD_BUFFER_SIZE, align 4
  %21 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %22 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = srem i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.iommu_cmd*, %struct.iommu_cmd** %4, align 8
  %27 = call i32 @memcpy(i32* %25, %struct.iommu_cmd* %26, i32 4)
  %28 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %29 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %32 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMIO_CMD_TAIL_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.iommu_cmd*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
