; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_error_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_error_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i32 }
%struct.mce = type { i32, i32 }
%struct.mem_ctl_info = type { %struct.amd64_pvt* }

@DRAM_LOCAL_NODE_LIM = common dso_local global i32 0, align 4
@DRAM_LOCAL_NODE_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd64_pvt*, %struct.mce*)* @get_error_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_error_address(%struct.amd64_pvt* %0, %struct.mce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca %struct.mce*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_ctl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %4, align 8
  store %struct.mce* %1, %struct.mce** %5, align 8
  %15 = load %struct.mce*, %struct.mce** %5, align 8
  %16 = getelementptr inbounds %struct.mce, %struct.mce* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @amd_get_nb_id(i32 %17)
  store i32 %18, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i32 47, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.mem_ctl_info* @edac_mc_find(i32 %19)
  store %struct.mem_ctl_info* %20, %struct.mem_ctl_info** %7, align 8
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %22 = icmp ne %struct.mem_ctl_info* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

24:                                               ; preds = %2
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %26 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %25, i32 0, i32 0
  %27 = load %struct.amd64_pvt*, %struct.amd64_pvt** %26, align 8
  store %struct.amd64_pvt* %27, %struct.amd64_pvt** %4, align 8
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %29 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 15
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 3, i32* %8, align 4
  store i32 39, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.mce*, %struct.mce** %5, align 8
  %35 = getelementptr inbounds %struct.mce, %struct.mce* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @GENMASK_ULL(i32 %37, i32 %38)
  %40 = and i32 %36, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %42 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 21
  br i1 %44, label %45, label %107

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @GENMASK_ULL(i32 47, i32 24)
  %48 = and i32 %46, %47
  %49 = ashr i32 %48, 24
  %50 = icmp ne i32 %49, 65015
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %109

53:                                               ; preds = %45
  %54 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %55 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DRAM_LOCAL_NODE_LIM, align 4
  %58 = call i32 @amd64_read_pci_cfg(i32 %56, i32 %57, i32* %13)
  %59 = load i32, i32* %13, align 4
  %60 = ashr i32 %59, 21
  %61 = and i32 %60, 7
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @GENMASK_ULL(i32 20, i32 0)
  %64 = and i32 %62, %63
  %65 = shl i32 %64, 3
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = xor i32 %66, 7
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %70, 24
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @GENMASK_ULL(i32 23, i32 0)
  %78 = and i32 %76, %77
  %79 = or i32 %75, %78
  store i32 %79, i32* %3, align 4
  br label %109

80:                                               ; preds = %53
  %81 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %82 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DRAM_LOCAL_NODE_BASE, align 4
  %85 = call i32 @amd64_read_pci_cfg(i32 %83, i32 %84, i32* %13)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @GENMASK_ULL(i32 23, i32 12)
  %88 = and i32 %86, %87
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @__fls(i32 %90)
  %92 = shl i32 %88, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @GENMASK_ULL(i32 23, i32 21)
  %95 = and i32 %93, %94
  %96 = ashr i32 %95, 9
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @GENMASK_ULL(i32 11, i32 0)
  %101 = and i32 %99, %100
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %3, align 4
  br label %109

107:                                              ; preds = %33
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %80, %74, %51, %23
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @amd_get_nb_id(i32) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_find(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @__fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
