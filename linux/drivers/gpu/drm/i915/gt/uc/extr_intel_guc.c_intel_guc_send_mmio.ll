; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_send_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_send_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.intel_uncore = type { i32 }
%struct.TYPE_4__ = type { %struct.intel_uncore* }

@INTEL_GUC_MSG_CODE_MASK = common dso_local global i32 0, align 4
@INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER = common dso_local global i32 0, align 4
@INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER = common dso_local global i32 0, align 4
@INTEL_GUC_MSG_TYPE_MASK = common dso_local global i32 0, align 4
@INTEL_GUC_MSG_TYPE_RESPONSE = common dso_local global i32 0, align 4
@INTEL_GUC_MSG_TYPE_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"MMIO: GuC action %#x failed with error %d %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_send_mmio(%struct.intel_guc* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_guc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_uncore*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %17 = call %struct.TYPE_4__* @guc_to_gt(%struct.intel_guc* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %18, align 8
  store %struct.intel_uncore* %19, %struct.intel_uncore** %11, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @GEM_BUG_ON(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %27 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @GEM_BUG_ON(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INTEL_GUC_MSG_CODE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @GEM_BUG_ON(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %5
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER, align 4
  %47 = icmp ne i32 %45, %46
  br label %48

48:                                               ; preds = %43, %5
  %49 = phi i1 [ false, %5 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @GEM_BUG_ON(i32 %50)
  %52 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %53 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  %56 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %57 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @intel_uncore_forcewake_get(%struct.intel_uncore* %55, i32 %59)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %76, %48
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  %67 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @guc_send_reg(%struct.intel_guc* %67, i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @intel_uncore_write(%struct.intel_uncore* %66, i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  %81 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @guc_send_reg(%struct.intel_guc* %81, i32 %83)
  %85 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %80, i32 %84)
  %86 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %87 = call i32 @intel_guc_notify(%struct.intel_guc* %86)
  %88 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  %89 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %90 = call i32 @guc_send_reg(%struct.intel_guc* %89, i32 0)
  %91 = load i32, i32* @INTEL_GUC_MSG_TYPE_MASK, align 4
  %92 = load i32, i32* @INTEL_GUC_MSG_TYPE_RESPONSE, align 4
  %93 = load i32, i32* @INTEL_GUC_MSG_TYPE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @__intel_wait_for_register_fw(%struct.intel_uncore* %88, i32 %90, i32 %91, i32 %94, i32 10, i32 10, i32* %12)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %79
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %102, %98, %79
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  br label %148

115:                                              ; preds = %105
  %116 = load i32*, i32** %9, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %121 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = call i32 @min(i32 %119, i32 %124)
  store i32 %125, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %141, %118
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  %132 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i32 @guc_send_reg(%struct.intel_guc* %132, i32 %134)
  %136 = call i32 @intel_uncore_read(%struct.intel_uncore* %131, i32 %135)
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %126

144:                                              ; preds = %126
  br label %145

145:                                              ; preds = %144, %115
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @INTEL_GUC_MSG_TO_DATA(i32 %146)
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %145, %108
  %149 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  %150 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %151 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @intel_uncore_forcewake_put(%struct.intel_uncore* %149, i32 %153)
  %155 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %156 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %155, i32 0, i32 0
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %14, align 4
  ret i32 %158
}

declare dso_local %struct.TYPE_4__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_uncore_forcewake_get(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @guc_send_reg(%struct.intel_guc*, i32) #1

declare dso_local i32 @intel_uncore_posting_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_guc_notify(%struct.intel_guc*) #1

declare dso_local i32 @__intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @INTEL_GUC_MSG_TO_DATA(i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(%struct.intel_uncore*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
