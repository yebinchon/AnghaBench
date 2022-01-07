; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_update_topology_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-topology.c_update_topology_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, i32*, i32)* @update_topology_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_topology_map(%struct.fw_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %10 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 63
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %17 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 2
  %21 = shl i32 %20, 16
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %26 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %27 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  %32 = add nsw i32 %31, 1
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @cpu_to_be32(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  br label %45

45:                                               ; preds = %49, %3
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  %52 = ptrtoint i32* %50 to i32
  %53 = call i32 @cpu_to_be32p(i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %45

56:                                               ; preds = %45
  %57 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %58 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @fw_compute_block_crc(i32* %59)
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32p(i32) #1

declare dso_local i32 @fw_compute_block_crc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
