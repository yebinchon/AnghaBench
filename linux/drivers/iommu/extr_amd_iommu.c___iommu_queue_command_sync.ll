; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___iommu_queue_command_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___iommu_queue_command_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i32, i32, i64 }
%struct.iommu_cmd = type { i32 }

@CMD_BUFFER_SIZE = common dso_local global i32 0, align 4
@LOOP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Command buffer timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MMIO_CMD_HEAD_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, %struct.iommu_cmd*, i32)* @__iommu_queue_command_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iommu_queue_command_sync(%struct.amd_iommu* %0, %struct.iommu_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_iommu*, align 8
  %6 = alloca %struct.iommu_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %5, align 8
  store %struct.iommu_cmd* %1, %struct.iommu_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %12 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 4
  %16 = load i32, i32* @CMD_BUFFER_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = urem i64 %15, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %44, %3
  %21 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %22 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* @CMD_BUFFER_SIZE, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 %28, 32
  br i1 %29, label %30, label %53

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @LOOP_TIMEOUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %34
  %43 = call i32 @udelay(i32 1)
  br label %44

44:                                               ; preds = %42, %30
  %45 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %46 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MMIO_CMD_HEAD_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %52 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %55 = load %struct.iommu_cmd*, %struct.iommu_cmd** %6, align 8
  %56 = call i32 @copy_cmd_to_buffer(%struct.amd_iommu* %54, %struct.iommu_cmd* %55)
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.amd_iommu*, %struct.amd_iommu** %5, align 8
  %59 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %38
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @copy_cmd_to_buffer(%struct.amd_iommu*, %struct.iommu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
