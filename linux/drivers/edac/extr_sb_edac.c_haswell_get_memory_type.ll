; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_haswell_get_memory_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_haswell_get_memory_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbridge_pvt = type { i32, i32 }

@MEM_UNKNOWN = common dso_local global i32 0, align 4
@HASWELL_DDRCRCLKCONTROLS = common dso_local global i32 0, align 4
@MCMTR = common dso_local global i32 0, align 4
@MEM_RDDR4 = common dso_local global i32 0, align 4
@MEM_DDR4 = common dso_local global i32 0, align 4
@MEM_RDDR3 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbridge_pvt*)* @haswell_get_memory_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @haswell_get_memory_type(%struct.sbridge_pvt* %0) #0 {
  %2 = alloca %struct.sbridge_pvt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sbridge_pvt* %0, %struct.sbridge_pvt** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @MEM_UNKNOWN, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %8 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %14 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HASWELL_DDRCRCLKCONTROLS, align 4
  %17 = call i32 @pci_read_config_dword(i32 %15, i32 %16, i32* %3)
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @GET_BITFIELD(i32 %18, i32 16, i32 16)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %2, align 8
  %24 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MCMTR, align 4
  %27 = call i32 @pci_read_config_dword(i32 %25, i32 %26, i32* %3)
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @GET_BITFIELD(i32 %28, i32 14, i32 14)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @MEM_RDDR4, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @MEM_DDR4, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %47

39:                                               ; preds = %22
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @MEM_RDDR3, align 4
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @MEM_DDR3, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47, %11
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i64 @GET_BITFIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
