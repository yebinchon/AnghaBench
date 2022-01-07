; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_detect_edp_sink_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_detect_edp_sink_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@LINK_RATE_UNKNOWN = common dso_local global i64 0, align 8
@DPCD_REV_14 = common dso_local global i64 0, align 8
@DP_SUPPORTED_LINK_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_edp_sink_caps(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %7 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %6, align 4
  %9 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %10 = call i32 @retrieve_link_cap(%struct.dc_link* %9)
  %11 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %12 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 64)
  %16 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %17 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DPCD_REV_14, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %1
  %24 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %25 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %33 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LINK_RATE_UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %31, %23
  %39 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %40 = load i32, i32* @DP_SUPPORTED_LINK_RATES, align 4
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %42 = call i32 @core_link_read_dpcd(%struct.dc_link* %39, i32 %40, i32* %41, i32 64)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %94, %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %97

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 256
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  %58 = mul nsw i32 %57, 200
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %46
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @linkRateInKHzToLinkRateMultiplier(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %66 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %70 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %64, i32* %73, align 4
  %74 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %75 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %80 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %61
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %90 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %61
  br label %93

93:                                               ; preds = %92, %46
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %4, align 4
  br label %43

97:                                               ; preds = %43
  br label %98

98:                                               ; preds = %97, %31, %1
  %99 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %100 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %99, i32 0, i32 1
  %101 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %102 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %101, i32 0, i32 0
  %103 = bitcast %struct.TYPE_10__* %100 to i8*
  %104 = bitcast %struct.TYPE_10__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 8, i1 false)
  ret void
}

declare dso_local i32 @retrieve_link_cap(%struct.dc_link*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @core_link_read_dpcd(%struct.dc_link*, i32, i32*, i32) #1

declare dso_local i32 @linkRateInKHzToLinkRateMultiplier(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
