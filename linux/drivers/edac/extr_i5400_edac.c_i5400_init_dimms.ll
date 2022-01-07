; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_init_dimms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5400_edac.c_i5400_init_dimms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_6__**, i32, %struct.TYPE_5__*, %struct.i5400_pvt* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i5400_pvt = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"dimm (branch %d channel %d slot %d): %d.%03d GB\0A\00", align 1
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@MEM_FB_DDR2 = common dso_local global i32 0, align 4
@EDAC_S8ECD8ED = common dso_local global i32 0, align 4
@EDAC_S4ECD4ED = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i5400_init_dimms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i5400_init_dimms(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i5400_pvt*, align 8
  %4 = alloca %struct.dimm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 3
  %14 = load %struct.i5400_pvt*, %struct.i5400_pvt** %13, align 8
  store %struct.i5400_pvt* %14, %struct.i5400_pvt** %3, align 8
  %15 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %16 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %19 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %131, %1
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %30 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %28, %34
  %36 = icmp slt i32 %22, %35
  br i1 %36, label %37, label %134

37:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %127, %37
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %41 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %39, %45
  br i1 %46, label %47, label %130

47:                                               ; preds = %38
  %48 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @determine_mtr(%struct.i5400_pvt* %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @MTR_DIMMS_PRESENT(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %127

56:                                               ; preds = %47
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %58 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %61 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %64 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sdiv i32 %66, 2
  %68 = load i32, i32* %10, align 4
  %69 = srem i32 %68, 2
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.dimm_info* @EDAC_DIMM_PTR(%struct.TYPE_5__* %59, %struct.TYPE_6__** %62, i32 %65, i32 %67, i32 %69, i32 %70)
  store %struct.dimm_info* %71, %struct.dimm_info** %4, align 8
  %72 = load %struct.i5400_pvt*, %struct.i5400_pvt** %3, align 8
  %73 = getelementptr inbounds %struct.i5400_pvt, %struct.i5400_pvt* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sdiv i32 %84, 2
  %86 = load i32, i32* %10, align 4
  %87 = srem i32 %86, 2
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sdiv i32 %89, 1000
  %91 = load i32, i32* %9, align 4
  %92 = srem i32 %91, 1000
  %93 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %87, i32 %88, i32 %90, i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 8
  %96 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %97 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %99 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %98, i32 0, i32 1
  store i32 8, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @MTR_DRAM_WIDTH(i32 %100)
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %103, label %105

103:                                              ; preds = %56
  %104 = load i32, i32* @DEV_X8, align 4
  br label %107

105:                                              ; preds = %56
  %106 = load i32, i32* @DEV_X4, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %110 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @MEM_FB_DDR2, align 4
  %112 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %113 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @MTR_DRAM_WIDTH(i32 %114)
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* @EDAC_S8ECD8ED, align 4
  br label %121

119:                                              ; preds = %107
  %120 = load i32, i32* @EDAC_S4ECD4ED, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %124 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %121, %55
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %38

130:                                              ; preds = %38
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %21

134:                                              ; preds = %21
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, i32* @EDAC_SECDED, align 4
  %139 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %140 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %141, i64 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %138, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %134
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  ret i32 %148
}

declare dso_local i32 @determine_mtr(%struct.i5400_pvt*, i32, i32) #1

declare dso_local i32 @MTR_DIMMS_PRESENT(i32) #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(%struct.TYPE_5__*, %struct.TYPE_6__**, i32, i32, i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MTR_DRAM_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
