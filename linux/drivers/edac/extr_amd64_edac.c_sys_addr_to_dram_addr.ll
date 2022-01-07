; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_sys_addr_to_dram_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_sys_addr_to_dram_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"using DHAR to translate SysAddr 0x%lx to DramAddr 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"using DRAM Base register to translate SysAddr 0x%lx to DramAddr 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i64)* @sys_addr_to_dram_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sys_addr_to_dram_addr(%struct.mem_ctl_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %14, align 8
  store %struct.amd64_pvt* %15, %struct.amd64_pvt** %6, align 8
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %18 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @get_dram_base(%struct.amd64_pvt* %16, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %22 = call i32 @amd64_get_dram_hole_info(%struct.mem_ctl_info* %21, i64* %8, i64* %9, i64* %10)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = icmp uge i64 %26, 4294967296
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %10, align 8
  %31 = add i64 4294967296, %30
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %3, align 8
  br label %52

41:                                               ; preds = %28, %25
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @GENMASK_ULL(i32 39, i32 0)
  %45 = and i64 %43, %44
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %49)
  %51 = load i64, i64* %11, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %42, %33
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i64 @get_dram_base(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @amd64_get_dram_hole_info(%struct.mem_ctl_info*, i64*, i64*, i64*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i64, i64) #1

declare dso_local i64 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
