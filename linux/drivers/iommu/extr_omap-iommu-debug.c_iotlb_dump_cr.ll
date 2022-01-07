; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_iotlb_dump_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu-debug.c_iotlb_dump_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32 }
%struct.cr_regs = type { i32, i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%08x %08x %01x\0A\00", align 1
@MMU_CAM_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_iommu*, %struct.cr_regs*, %struct.seq_file*)* @iotlb_dump_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iotlb_dump_cr(%struct.omap_iommu* %0, %struct.cr_regs* %1, %struct.seq_file* %2) #0 {
  %4 = alloca %struct.omap_iommu*, align 8
  %5 = alloca %struct.cr_regs*, align 8
  %6 = alloca %struct.seq_file*, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %4, align 8
  store %struct.cr_regs* %1, %struct.cr_regs** %5, align 8
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %8 = load %struct.cr_regs*, %struct.cr_regs** %5, align 8
  %9 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cr_regs*, %struct.cr_regs** %5, align 8
  %12 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cr_regs*, %struct.cr_regs** %5, align 8
  %15 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MMU_CAM_P, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = call i32 @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %21)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
