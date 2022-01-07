; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_get_memory_error_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_get_memory_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (%struct.mem_ctl_info*, i32, i32, %struct.dram_addr*, i8*)* }
%struct.mem_ctl_info = type { i32 }
%struct.dram_addr = type { i32, i32, i32, i32, i32, i32 }

@ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [79 x i8] c"SysAddr=%llx PmiAddr=%llx Channel=%d DIMM=%d Rank=%d Bank=%d Row=%d Column=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32, %struct.dram_addr*, i8*)* @get_memory_error_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_memory_error_data(%struct.mem_ctl_info* %0, i32 %1, %struct.dram_addr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dram_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dram_addr* %2, %struct.dram_addr** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @sys2pmi(i32 %13, i32* %11, i32* %10, i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %69

20:                                               ; preds = %4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = ashr i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %33 = getelementptr inbounds %struct.dram_addr, %struct.dram_addr* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32 (%struct.mem_ctl_info*, i32, i32, %struct.dram_addr*, i8*)*, i32 (%struct.mem_ctl_info*, i32, i32, %struct.dram_addr*, i8*)** %35, align 8
  %37 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 %36(%struct.mem_ctl_info* %37, i32 %38, i32 %39, %struct.dram_addr* %40, i8* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %20
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %69

47:                                               ; preds = %20
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %51 = getelementptr inbounds %struct.dram_addr, %struct.dram_addr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %54 = getelementptr inbounds %struct.dram_addr, %struct.dram_addr* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %57 = getelementptr inbounds %struct.dram_addr, %struct.dram_addr* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %60 = getelementptr inbounds %struct.dram_addr, %struct.dram_addr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %63 = getelementptr inbounds %struct.dram_addr, %struct.dram_addr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dram_addr*, %struct.dram_addr** %8, align 8
  %66 = getelementptr inbounds %struct.dram_addr, %struct.dram_addr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %47, %45, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @sys2pmi(i32, i32*, i32*, i8*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
