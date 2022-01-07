; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbridge_pvt = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@MEM_RDDR3 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@MEM_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbridge_pvt*)* @get_memory_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_memory_type(%struct.sbridge_pvt* %0) #0 {
  %2 = alloca %struct.sbridge_pvt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sbridge_pvt* %0, %struct.sbridge_pvt** %2, align 8
  %5 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %6 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %11 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %14 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pci_read_config_dword(i64 %12, i32 %16, i32* %3)
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @GET_BITFIELD(i32 %18, i32 11, i32 11)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = load i32, i32* @MEM_RDDR3, align 4
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %9
  %24 = load i32, i32* @MEM_DDR3, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @MEM_UNKNOWN, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @pci_read_config_dword(i64, i32, i32*) #1

declare dso_local i64 @GET_BITFIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
