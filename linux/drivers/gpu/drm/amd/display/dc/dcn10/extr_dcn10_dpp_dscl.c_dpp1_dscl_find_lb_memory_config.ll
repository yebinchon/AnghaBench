; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_find_lb_memory_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_dscl.c_dpp1_dscl_find_lb_memory_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 (%struct.scaler_data*, i32, i32*, i32*)* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.scaler_data = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@LB_MEMORY_CONFIG_0 = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG_1 = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG_2 = common dso_local global i32 0, align 4
@PIXEL_FORMAT_420BPP8 = common dso_local global i64 0, align 8
@PIXEL_FORMAT_420BPP10 = common dso_local global i64 0, align 8
@LB_MEMORY_CONFIG_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcn10_dpp*, %struct.scaler_data*)* @dpp1_dscl_find_lb_memory_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp1_dscl_find_lb_memory_config(%struct.dcn10_dpp* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcn10_dpp*, align 8
  %5 = alloca %struct.scaler_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %4, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %5, align 8
  %13 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %14 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %18 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %22 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dc_fixpt_ceil(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %27 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dc_fixpt_ceil(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @LB_MEMORY_CONFIG_0, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %33 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %152

44:                                               ; preds = %2
  %45 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %46 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32 (%struct.scaler_data*, i32, i32*, i32*)*, i32 (%struct.scaler_data*, i32, i32*, i32*)** %49, align 8
  %51 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %52 = load i32, i32* @LB_MEMORY_CONFIG_1, align 4
  %53 = call i32 %50(%struct.scaler_data* %51, i32 %52, i32* %6, i32* %7)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %44
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @LB_MEMORY_CONFIG_1, align 4
  store i32 %66, i32* %3, align 4
  br label %152

67:                                               ; preds = %59, %44
  %68 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %69 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32 (%struct.scaler_data*, i32, i32*, i32*)*, i32 (%struct.scaler_data*, i32, i32*, i32*)** %72, align 8
  %74 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %75 = load i32, i32* @LB_MEMORY_CONFIG_2, align 4
  %76 = call i32 %73(%struct.scaler_data* %74, i32 %75, i32* %6, i32* %7)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %67
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @LB_MEMORY_CONFIG_2, align 4
  store i32 %89, i32* %3, align 4
  br label %152

90:                                               ; preds = %82, %67
  %91 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %92 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PIXEL_FORMAT_420BPP8, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %98 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PIXEL_FORMAT_420BPP10, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %96, %90
  %103 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %104 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32 (%struct.scaler_data*, i32, i32*, i32*)*, i32 (%struct.scaler_data*, i32, i32*, i32*)** %107, align 8
  %109 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %110 = load i32, i32* @LB_MEMORY_CONFIG_3, align 4
  %111 = call i32 %108(%struct.scaler_data* %109, i32 %110, i32* %6, i32* %7)
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %112, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %102
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %118, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* @LB_MEMORY_CONFIG_3, align 4
  store i32 %124, i32* %3, align 4
  br label %152

125:                                              ; preds = %117, %102
  br label %126

126:                                              ; preds = %125, %96
  %127 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %128 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32 (%struct.scaler_data*, i32, i32*, i32*)*, i32 (%struct.scaler_data*, i32, i32*, i32*)** %131, align 8
  %133 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %134 = load i32, i32* @LB_MEMORY_CONFIG_0, align 4
  %135 = call i32 %132(%struct.scaler_data* %133, i32 %134, i32* %6, i32* %7)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %136, i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %126
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i64 @dpp1_dscl_is_lb_conf_valid(i32 %142, i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %141, %126
  %148 = phi i1 [ false, %126 ], [ %146, %141 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  %151 = load i32, i32* @LB_MEMORY_CONFIG_0, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %147, %123, %88, %65, %42
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @dc_fixpt_ceil(i32) #1

declare dso_local i64 @dpp1_dscl_is_lb_conf_valid(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
