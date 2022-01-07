; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm.c_qcom_scm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm.c_qcom_scm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_scm = type { %struct.TYPE_8__*, i32*, %struct.TYPE_9__, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.platform_device = type { %struct.TYPE_8__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@SCM_HAS_CORE_CLK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to acquire core clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@SCM_HAS_IFACE_CLK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to acquire iface clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@SCM_HAS_BUS_CLK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to acquire bus clk\0A\00", align 1
@qcom_scm_pas_reset_ops = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@__scm = common dso_local global %struct.qcom_scm* null, align 8
@download_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_scm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_scm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_scm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.qcom_scm* @devm_kzalloc(%struct.TYPE_8__* %8, i32 56, i32 %9)
  store %struct.qcom_scm* %10, %struct.qcom_scm** %4, align 8
  %11 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %12 = icmp ne %struct.qcom_scm* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %197

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %20 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %19, i32 0, i32 5
  %21 = call i32 @qcom_scm_find_dload_address(%struct.TYPE_8__* %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %197

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i64 @of_device_get_match_data(%struct.TYPE_8__* %28)
  store i64 %29, i64* %5, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i8* @devm_clk_get(%struct.TYPE_8__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %35 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %37 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @IS_ERR(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %26
  %42 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %43 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @PTR_ERR(i32* %44)
  %46 = load i32, i32* @EPROBE_DEFER, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @PTR_ERR(i32* %52)
  store i32 %53, i32* %2, align 4
  br label %197

54:                                               ; preds = %41
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @SCM_HAS_CORE_CLK, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_8__* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %64 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %2, align 4
  br label %197

67:                                               ; preds = %54
  %68 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %69 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %67, %26
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i8* @devm_clk_get(%struct.TYPE_8__* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %76 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %78 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @IS_ERR(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %70
  %83 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %84 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @PTR_ERR(i32* %85)
  %87 = load i32, i32* @EPROBE_DEFER, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %92 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @PTR_ERR(i32* %93)
  store i32 %94, i32* %2, align 4
  br label %197

95:                                               ; preds = %82
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @SCM_HAS_IFACE_CLK, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_err(%struct.TYPE_8__* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %105 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @PTR_ERR(i32* %106)
  store i32 %107, i32* %2, align 4
  br label %197

108:                                              ; preds = %95
  %109 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %110 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %109, i32 0, i32 4
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %108, %70
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i8* @devm_clk_get(%struct.TYPE_8__* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %117 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %116, i32 0, i32 3
  store i32* %115, i32** %117, align 8
  %118 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %119 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = call i64 @IS_ERR(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %152

123:                                              ; preds = %111
  %124 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %125 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @PTR_ERR(i32* %126)
  %128 = load i32, i32* @EPROBE_DEFER, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %133 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @PTR_ERR(i32* %134)
  store i32 %135, i32* %2, align 4
  br label %197

136:                                              ; preds = %123
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* @SCM_HAS_BUS_CLK, align 8
  %139 = and i64 %137, %138
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_err(%struct.TYPE_8__* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %145 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %146 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @PTR_ERR(i32* %147)
  store i32 %148, i32* %2, align 4
  br label %197

149:                                              ; preds = %136
  %150 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %151 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %150, i32 0, i32 3
  store i32* null, i32** %151, align 8
  br label %152

152:                                              ; preds = %149, %111
  %153 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %154 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  store i32* @qcom_scm_pas_reset_ops, i32** %155, align 8
  %156 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %157 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %164 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %169 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %168, i32 0, i32 2
  %170 = call i32 @devm_reset_controller_register(%struct.TYPE_8__* %167, %struct.TYPE_9__* %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %152
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %2, align 4
  br label %197

175:                                              ; preds = %152
  %176 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  %177 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* @INT_MAX, align 4
  %180 = call i32 @clk_set_rate(i32* %178, i32 %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %2, align 4
  br label %197

185:                                              ; preds = %175
  %186 = load %struct.qcom_scm*, %struct.qcom_scm** %4, align 8
  store %struct.qcom_scm* %186, %struct.qcom_scm** @__scm, align 8
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.qcom_scm*, %struct.qcom_scm** @__scm, align 8
  %190 = getelementptr inbounds %struct.qcom_scm, %struct.qcom_scm* %189, i32 0, i32 0
  store %struct.TYPE_8__* %188, %struct.TYPE_8__** %190, align 8
  %191 = call i32 (...) @__qcom_scm_init()
  %192 = load i64, i64* @download_mode, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %185
  %195 = call i32 @qcom_scm_set_download_mode(i32 1)
  br label %196

196:                                              ; preds = %194, %185
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %196, %183, %173, %141, %131, %100, %90, %59, %49, %24, %13
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.qcom_scm* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @qcom_scm_find_dload_address(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_8__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @clk_set_rate(i32*, i32) #1

declare dso_local i32 @__qcom_scm_init(...) #1

declare dso_local i32 @qcom_scm_set_download_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
