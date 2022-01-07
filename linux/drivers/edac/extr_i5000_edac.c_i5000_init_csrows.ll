; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, %struct.i5000_pvt* }
%struct.i5000_pvt = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }

@MAX_BRANCHES = common dso_local global i32 0, align 4
@MEM_FB_DDR2 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@EDAC_S8ECD8ED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i5000_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5000_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5000_pvt*, align 8
  %4 = alloca %struct.dimm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 3
  %13 = load %struct.i5000_pvt*, %struct.i5000_pvt** %12, align 8
  store %struct.i5000_pvt* %13, %struct.i5000_pvt** %3, align 8
  %14 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %15 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %6, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %96, %1
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %99

22:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %92, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %26 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %23
  %30 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @determine_mtr(%struct.i5000_pvt* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @MTR_DIMMS_PRESENT(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %92

38:                                               ; preds = %29
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %40 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %43 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %46 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MAX_BRANCHES, align 4
  %50 = sdiv i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MAX_BRANCHES, align 4
  %53 = srem i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %54)
  store %struct.dimm_info* %55, %struct.dimm_info** %4, align 8
  %56 = load %struct.i5000_pvt*, %struct.i5000_pvt** %3, align 8
  %57 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %69 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %68, i32 0, i32 0
  store i32 8, i32* %69, align 4
  %70 = load i32, i32* @MEM_FB_DDR2, align 4
  %71 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %72 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @MTR_DRAM_WIDTH(i32 %73)
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %80

76:                                               ; preds = %38
  %77 = load i32, i32* @DEV_X8, align 4
  %78 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %79 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %84

80:                                               ; preds = %38
  %81 = load i32, i32* @DEV_X4, align 4
  %82 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %83 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @EDAC_S8ECD8ED, align 4
  %86 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %87 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %8, align 4
  %89 = shl i32 %88, 8
  %90 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %91 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %37
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %23

95:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %18

99:                                               ; preds = %18
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @determine_mtr(%struct.i5000_pvt*, i32, i32) #1

declare dso_local i32 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MTR_DRAM_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
