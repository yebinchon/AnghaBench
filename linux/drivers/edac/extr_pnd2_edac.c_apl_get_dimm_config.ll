; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_apl_get_dimm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_apl_get_dimm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_cr_drp0 = type { i64, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.mem_ctl_info = type { i32, i32, i32, %struct.pnd2_pvt* }
%struct.pnd2_pvt = type { i32* }
%struct.dimm_info = type { i32, i32, i32, i32, i32, i32 }

@APL_NUM_CHANNELS = common dso_local global i32 0, align 4
@chan_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No allocated DIMM for channel %d\0A\00", align 1
@drp0 = common dso_local global %struct.d_cr_drp0* null, align 8
@dimms = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Channel %d: unrecognized DIMM\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Channel %d: %lld MByte DIMM\0A\00", align 1
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Slice#%d_Chan#%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @apl_get_dimm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apl_get_dimm_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.pnd2_pvt*, align 8
  %4 = alloca %struct.dimm_info*, align 8
  %5 = alloca %struct.d_cr_drp0*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %10 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %9, i32 0, i32 3
  %11 = load %struct.pnd2_pvt*, %struct.pnd2_pvt** %10, align 8
  store %struct.pnd2_pvt* %11, %struct.pnd2_pvt** %3, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %167, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @APL_NUM_CHANNELS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %170

16:                                               ; preds = %12
  %17 = load i32, i32* @chan_mask, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %167

23:                                               ; preds = %16
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %25 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %28 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %31 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %26, i32 %29, i32 %32, i32 %33, i32 0, i32 0)
  store %struct.dimm_info* %34, %struct.dimm_info** %4, align 8
  %35 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %36 = icmp ne %struct.dimm_info* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %167

40:                                               ; preds = %23
  %41 = load %struct.d_cr_drp0*, %struct.d_cr_drp0** @drp0, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.d_cr_drp0, %struct.d_cr_drp0* %41, i64 %43
  store %struct.d_cr_drp0* %44, %struct.d_cr_drp0** %5, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %85, %40
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dimms, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dimms, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.d_cr_drp0*, %struct.d_cr_drp0** %5, align 8
  %58 = getelementptr inbounds %struct.d_cr_drp0, %struct.d_cr_drp0* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %50
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dimms, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.d_cr_drp0*, %struct.d_cr_drp0** %5, align 8
  %69 = getelementptr inbounds %struct.d_cr_drp0, %struct.d_cr_drp0* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %61
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dimms, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.d_cr_drp0*, %struct.d_cr_drp0** %5, align 8
  %80 = getelementptr inbounds %struct.d_cr_drp0, %struct.d_cr_drp0* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %88

84:                                               ; preds = %72, %61, %50
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %45

88:                                               ; preds = %83, %45
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dimms, align 8
  %91 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %90)
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %167

96:                                               ; preds = %88
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.pnd2_pvt*, %struct.pnd2_pvt** %3, align 8
  %99 = getelementptr inbounds %struct.pnd2_pvt, %struct.pnd2_pvt* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load %struct.d_cr_drp0*, %struct.d_cr_drp0** %5, align 8
  %105 = getelementptr inbounds %struct.d_cr_drp0, %struct.d_cr_drp0* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.d_cr_drp0*, %struct.d_cr_drp0** %5, align 8
  %108 = getelementptr inbounds %struct.d_cr_drp0, %struct.d_cr_drp0* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  %111 = mul nsw i32 %110, 8
  %112 = sext i32 %111 to i64
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dimms, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = shl i64 1, %118
  %120 = mul i64 %112, %119
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dimms, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = shl i64 1, %126
  %128 = mul i64 %120, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %6, align 4
  %132 = ashr i32 %131, 17
  %133 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = ashr i32 %134, 17
  %136 = call i32 @MiB_TO_PAGES(i32 %135)
  %137 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %138 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %140 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %139, i32 0, i32 0
  store i32 32, i32* %140, align 4
  %141 = load %struct.d_cr_drp0*, %struct.d_cr_drp0** %5, align 8
  %142 = getelementptr inbounds %struct.d_cr_drp0, %struct.d_cr_drp0* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %96
  %146 = load i32, i32* @DEV_X8, align 4
  br label %149

147:                                              ; preds = %96
  %148 = load i32, i32* @DEV_X16, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %152 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @MEM_DDR3, align 4
  %154 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %155 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @EDAC_SECDED, align 4
  %157 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %158 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load %struct.dimm_info*, %struct.dimm_info** %4, align 8
  %160 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sdiv i32 %162, 2
  %164 = load i32, i32* %7, align 4
  %165 = srem i32 %164, 2
  %166 = call i32 @snprintf(i32 %161, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %165)
  br label %167

167:                                              ; preds = %149, %93, %37, %22
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %12

170:                                              ; preds = %12
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @MiB_TO_PAGES(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
