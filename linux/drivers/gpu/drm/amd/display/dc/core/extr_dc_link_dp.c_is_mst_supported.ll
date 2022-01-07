; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_is_mst_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_is_mst_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%union.dpcd_rev = type { i64 }
%union.mstm_cap = type { i64 }
%struct.TYPE_3__ = type { i32 }

@DC_OK = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i32 0, align 4
@DPCD_REV_12 = common dso_local global i64 0, align 8
@DP_MSTM_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_mst_supported(%struct.dc_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.dpcd_rev, align 8
  %7 = alloca %union.mstm_cap, align 8
  store %struct.dc_link* %0, %struct.dc_link** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @DC_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %10 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %16 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %54

22:                                               ; preds = %14, %1
  %23 = bitcast %union.dpcd_rev* %6 to i64*
  store i64 0, i64* %23, align 8
  %24 = bitcast %union.mstm_cap* %7 to i64*
  store i64 0, i64* %24, align 8
  %25 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %26 = load i32, i32* @DP_DPCD_REV, align 4
  %27 = bitcast %union.dpcd_rev* %6 to i64*
  %28 = call i32 @core_link_read_dpcd(%struct.dc_link* %25, i32 %26, i64* %27, i32 8)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DC_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %22
  %33 = bitcast %union.dpcd_rev* %6 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DPCD_REV_12, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load %struct.dc_link*, %struct.dc_link** %3, align 8
  %39 = load i32, i32* @DP_MSTM_CAP, align 4
  %40 = bitcast %union.mstm_cap* %7 to i64*
  %41 = call i32 @core_link_read_dpcd(%struct.dc_link* %38, i32 %39, i64* %40, i32 8)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DC_OK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = bitcast %union.mstm_cap* %7 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %45, %37
  br label %52

52:                                               ; preds = %51, %32, %22
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
