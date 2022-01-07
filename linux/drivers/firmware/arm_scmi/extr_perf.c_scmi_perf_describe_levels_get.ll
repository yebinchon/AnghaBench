; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_describe_levels_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_perf_describe_levels_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { i32 }
%struct.perf_dom_info = type { %struct.scmi_opp*, i64 }
%struct.scmi_opp = type { i64, i8*, i8* }
%struct.scmi_xfer = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.scmi_msg_resp_perf_describe_levels* }
%struct.scmi_msg_resp_perf_describe_levels = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.scmi_msg_perf_describe_levels* }
%struct.scmi_msg_perf_describe_levels = type { i8*, i8* }

@PERF_DESCRIBE_LEVELS = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_PERF = common dso_local global i32 0, align 4
@MAX_OPPS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"No. of OPPs exceeded MAX_OPPS\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Level %d Power %d Latency %dus\0A\00", align 1
@opp_cmp_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i64, %struct.perf_dom_info*)* @scmi_perf_describe_levels_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_perf_describe_levels_get(%struct.scmi_handle* %0, i64 %1, %struct.perf_dom_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_dom_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.scmi_xfer*, align 8
  %14 = alloca %struct.scmi_opp*, align 8
  %15 = alloca %struct.scmi_msg_perf_describe_levels*, align 8
  %16 = alloca %struct.scmi_msg_resp_perf_describe_levels*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.perf_dom_info* %2, %struct.perf_dom_info** %7, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %18 = load i32, i32* @PERF_DESCRIBE_LEVELS, align 4
  %19 = load i32, i32* @SCMI_PROTOCOL_PERF, align 4
  %20 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %17, i32 %18, i32 %19, i32 16, i32 0, %struct.scmi_xfer** %13)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %157

25:                                               ; preds = %3
  %26 = load %struct.scmi_xfer*, %struct.scmi_xfer** %13, align 8
  %27 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.scmi_msg_perf_describe_levels*, %struct.scmi_msg_perf_describe_levels** %28, align 8
  store %struct.scmi_msg_perf_describe_levels* %29, %struct.scmi_msg_perf_describe_levels** %15, align 8
  %30 = load %struct.scmi_xfer*, %struct.scmi_xfer** %13, align 8
  %31 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.scmi_msg_resp_perf_describe_levels*, %struct.scmi_msg_resp_perf_describe_levels** %32, align 8
  store %struct.scmi_msg_resp_perf_describe_levels* %33, %struct.scmi_msg_resp_perf_describe_levels** %16, align 8
  br label %34

34:                                               ; preds = %141, %25
  %35 = load i64, i64* %6, align 8
  %36 = call i8* @cpu_to_le32(i64 %35)
  %37 = load %struct.scmi_msg_perf_describe_levels*, %struct.scmi_msg_perf_describe_levels** %15, align 8
  %38 = getelementptr inbounds %struct.scmi_msg_perf_describe_levels, %struct.scmi_msg_perf_describe_levels* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i8* @cpu_to_le32(i64 %39)
  %41 = load %struct.scmi_msg_perf_describe_levels*, %struct.scmi_msg_perf_describe_levels** %15, align 8
  %42 = getelementptr inbounds %struct.scmi_msg_perf_describe_levels, %struct.scmi_msg_perf_describe_levels* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %44 = load %struct.scmi_xfer*, %struct.scmi_xfer** %13, align 8
  %45 = call i32 @scmi_do_xfer(%struct.scmi_handle* %43, %struct.scmi_xfer* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %143

49:                                               ; preds = %34
  %50 = load %struct.scmi_msg_resp_perf_describe_levels*, %struct.scmi_msg_resp_perf_describe_levels** %16, align 8
  %51 = getelementptr inbounds %struct.scmi_msg_resp_perf_describe_levels, %struct.scmi_msg_resp_perf_describe_levels* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le16_to_cpu(i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load %struct.scmi_msg_resp_perf_describe_levels*, %struct.scmi_msg_resp_perf_describe_levels** %16, align 8
  %55 = getelementptr inbounds %struct.scmi_msg_resp_perf_describe_levels, %struct.scmi_msg_resp_perf_describe_levels* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @le16_to_cpu(i32 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* @MAX_OPPS, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %65 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %143

68:                                               ; preds = %49
  %69 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %70 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %69, i32 0, i32 0
  %71 = load %struct.scmi_opp*, %struct.scmi_opp** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %71, i64 %72
  store %struct.scmi_opp* %73, %struct.scmi_opp** %14, align 8
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %126, %68
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %11, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %131

79:                                               ; preds = %74
  %80 = load %struct.scmi_msg_resp_perf_describe_levels*, %struct.scmi_msg_resp_perf_describe_levels** %16, align 8
  %81 = getelementptr inbounds %struct.scmi_msg_resp_perf_describe_levels, %struct.scmi_msg_resp_perf_describe_levels* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = load %struct.scmi_opp*, %struct.scmi_opp** %14, align 8
  %90 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.scmi_msg_resp_perf_describe_levels*, %struct.scmi_msg_resp_perf_describe_levels** %16, align 8
  %92 = getelementptr inbounds %struct.scmi_msg_resp_perf_describe_levels, %struct.scmi_msg_resp_perf_describe_levels* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = load %struct.scmi_opp*, %struct.scmi_opp** %14, align 8
  %101 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.scmi_msg_resp_perf_describe_levels*, %struct.scmi_msg_resp_perf_describe_levels** %16, align 8
  %103 = getelementptr inbounds %struct.scmi_msg_resp_perf_describe_levels, %struct.scmi_msg_resp_perf_describe_levels* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @le16_to_cpu(i32 %109)
  %111 = load %struct.scmi_opp*, %struct.scmi_opp** %14, align 8
  %112 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %114 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.scmi_opp*, %struct.scmi_opp** %14, align 8
  %117 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.scmi_opp*, %struct.scmi_opp** %14, align 8
  %120 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.scmi_opp*, %struct.scmi_opp** %14, align 8
  %123 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dev_dbg(i32 %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %118, i8* %121, i64 %124)
  br label %126

126:                                              ; preds = %79
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  %129 = load %struct.scmi_opp*, %struct.scmi_opp** %14, align 8
  %130 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %129, i32 1
  store %struct.scmi_opp* %130, %struct.scmi_opp** %14, align 8
  br label %74

131:                                              ; preds = %74
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %10, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %11, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i64, i64* %12, align 8
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i1 [ false, %135 ], [ %140, %138 ]
  br i1 %142, label %34, label %143

143:                                              ; preds = %141, %63, %48
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %146 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %148 = load %struct.scmi_xfer*, %struct.scmi_xfer** %13, align 8
  %149 = call i32 @scmi_xfer_put(%struct.scmi_handle* %147, %struct.scmi_xfer* %148)
  %150 = load %struct.perf_dom_info*, %struct.perf_dom_info** %7, align 8
  %151 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %150, i32 0, i32 0
  %152 = load %struct.scmi_opp*, %struct.scmi_opp** %151, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i32, i32* @opp_cmp_func, align 4
  %155 = call i32 @sort(%struct.scmi_opp* %152, i64 %153, i32 24, i32 %154, i32* null)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %143, %23
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i8*, i64) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @sort(%struct.scmi_opp*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
