; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_sync_it_packet_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_sync_it_packet_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.descriptor = type { i32, i32, i32 }

@DESCRIPTOR_BRANCH_ALWAYS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.descriptor*)* @sync_it_packet_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_it_packet_for_cpu(%struct.context* %0, %struct.descriptor* %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca %struct.descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %3, align 8
  store %struct.descriptor* %1, %struct.descriptor** %4, align 8
  %7 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %8 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DESCRIPTOR_BRANCH_ALWAYS, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %79

15:                                               ; preds = %2
  %16 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %16, i64 2
  store %struct.descriptor* %17, %struct.descriptor** %4, align 8
  %18 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = load i32, i32* @PAGE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.context*, %struct.context** %3, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PAGE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %15
  %31 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %32 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DESCRIPTOR_BRANCH_ALWAYS, align 4
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %79

39:                                               ; preds = %30
  %40 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %41 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %40, i32 1
  store %struct.descriptor* %41, %struct.descriptor** %4, align 8
  br label %42

42:                                               ; preds = %39, %15
  br label %43

43:                                               ; preds = %72, %42
  %44 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %45 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.context*, %struct.context** %3, align 8
  %49 = getelementptr inbounds %struct.context, %struct.context* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PAGE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @PAGE_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %62 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @dma_sync_single_range_for_cpu(i32 %53, i32 %56, i32 %60, i32 %64, i32 %65)
  %67 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %68 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %71 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %70, i32 1
  store %struct.descriptor* %71, %struct.descriptor** %4, align 8
  br label %72

72:                                               ; preds = %43
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @DESCRIPTOR_BRANCH_ALWAYS, align 4
  %75 = call i32 @cpu_to_le16(i32 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br i1 %78, label %43, label %79

79:                                               ; preds = %14, %38, %72
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
