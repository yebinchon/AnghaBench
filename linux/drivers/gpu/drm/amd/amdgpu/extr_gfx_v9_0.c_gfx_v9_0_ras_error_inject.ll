; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ras_error_inject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ras_error_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.amdgpu_device = type { i64, i32, i32 }
%struct.ras_inject_if = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ta_ras_trigger_error_input = type { i32, i32, i32, i32, i32, i32 }

@CHIP_VEGA20 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ras_gfx_subblocks = common dso_local global %struct.TYPE_5__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"GFX Subblock %s, hardware do not support type 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"GFX Subblock %s, driver do not support type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i8*)* @gfx_v9_0_ras_error_inject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_ras_error_inject(%struct.amdgpu_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ras_inject_if*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ta_ras_trigger_error_input, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ras_inject_if*
  store %struct.ras_inject_if* %10, %struct.ras_inject_if** %6, align 8
  %11 = bitcast %struct.ta_ras_trigger_error_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_VEGA20, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %146

20:                                               ; preds = %2
  %21 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %22 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ras_gfx_subblocks, align 8
  %26 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %25)
  %27 = icmp uge i64 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %146

31:                                               ; preds = %20
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ras_gfx_subblocks, align 8
  %33 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %34 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @EPERM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %146

44:                                               ; preds = %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ras_gfx_subblocks, align 8
  %46 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %47 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %54 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %44
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ras_gfx_subblocks, align 8
  %61 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %62 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %69 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %71)
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %146

75:                                               ; preds = %44
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ras_gfx_subblocks, align 8
  %77 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %78 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %85 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %83, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %75
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ras_gfx_subblocks, align 8
  %92 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %93 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %100 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %102)
  %104 = load i32, i32* @EPERM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %146

106:                                              ; preds = %75
  %107 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %108 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @amdgpu_ras_block_to_ta(i32 %110)
  %112 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %8, i32 0, i32 4
  store i32 %111, i32* %112, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ras_gfx_subblocks, align 8
  %114 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %115 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %8, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %123 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @amdgpu_ras_error_to_ta(i32 %125)
  %127 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %8, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %129 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %8, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = load %struct.ras_inject_if*, %struct.ras_inject_if** %6, align 8
  %133 = getelementptr inbounds %struct.ras_inject_if, %struct.ras_inject_if* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.ta_ras_trigger_error_input, %struct.ta_ras_trigger_error_input* %8, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 1
  %138 = call i32 @mutex_lock(i32* %137)
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 2
  %141 = call i32 @psp_ras_trigger_error(i32* %140, %struct.ta_ras_trigger_error_input* %8)
  store i32 %141, i32* %7, align 4
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %143 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %142, i32 0, i32 1
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %106, %90, %59, %41, %28, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #2

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #2

declare dso_local i32 @amdgpu_ras_block_to_ta(i32) #2

declare dso_local i32 @amdgpu_ras_error_to_ta(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @psp_ras_trigger_error(i32*, %struct.ta_ras_trigger_error_input*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
