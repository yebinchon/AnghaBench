; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_io_util.c_msm_dss_parse_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_io_util.c_msm_dss_parse_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dss_module_power = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"clocks are not defined\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to get clock name for %d\0A\00", align 1
@DSS_CLK_AHB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to get clock refs %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to set clock defaults %d\0A\00", align 1
@DSS_CLK_PCLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dss_parse_clock(%struct.platform_device* %0, %struct.dss_module_power* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.dss_module_power*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.dss_module_power* %1, %struct.dss_module_power** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = icmp ne %struct.platform_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %15 = icmp ne %struct.dss_module_power* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %164

19:                                               ; preds = %13
  %20 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %21 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @of_property_count_strings(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %164

31:                                               ; preds = %19
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.TYPE_7__* @devm_kcalloc(%struct.TYPE_8__* %33, i32 %34, i32 4, i32 %35)
  %37 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %38 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %37, i32 0, i32 1
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %40 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %164

46:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %84, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %87

51:                                               ; preds = %47
  %52 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @of_property_read_string_index(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56, i8** %8)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DRM_DEV_ERROR(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %87

65:                                               ; preds = %51
  %66 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %67 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strlcpy(i32 %73, i8* %74, i32 4)
  %76 = load i32, i32* @DSS_CLK_AHB, align 4
  %77 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %78 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32 %76, i32* %83, align 4
  br label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %47

87:                                               ; preds = %60, %47
  %88 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %91 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @msm_dss_get_clk(%struct.TYPE_8__* %89, %struct.TYPE_7__* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @DRM_DEV_ERROR(%struct.TYPE_8__* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %157

102:                                              ; preds = %87
  %103 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @of_clk_set_defaults(i32 %106, i32 0)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @DRM_DEV_ERROR(%struct.TYPE_8__* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %157

115:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %150, %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %153

120:                                              ; preds = %116
  %121 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %122 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @clk_get_rate(i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  br label %150

133:                                              ; preds = %120
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %136 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %134, i32* %141, align 4
  %142 = load i32, i32* @DSS_CLK_PCLK, align 4
  %143 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %144 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i32 %142, i32* %149, align 4
  br label %150

150:                                              ; preds = %133, %132
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %116

153:                                              ; preds = %116
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %156 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  store i32 0, i32* %3, align 4
  br label %164

157:                                              ; preds = %110, %97
  %158 = load %struct.dss_module_power*, %struct.dss_module_power** %5, align 8
  %159 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @msm_dss_put_clk(%struct.TYPE_7__* %160, i32 %161)
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %157, %153, %43, %29, %16
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @of_property_count_strings(i32, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.TYPE_7__* @devm_kcalloc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @msm_dss_get_clk(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @of_clk_set_defaults(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @msm_dss_put_clk(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
