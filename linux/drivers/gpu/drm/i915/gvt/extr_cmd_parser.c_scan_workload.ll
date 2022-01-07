; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_scan_workload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_scan_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.parser_exec_state = type { i32, i8*, i64, i64, i32, %struct.intel_vgpu_workload*, i32, i8*, i32, i32, i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RING_BUFFER_INSTRUCTION = common dso_local global i32 0, align 4
@GTT_BUFFER = common dso_local global i32 0, align 4
@bypass_scan_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_workload*)* @scan_workload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_workload(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_workload*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.parser_exec_state, align 8
  %8 = alloca i32, align 4
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %13 = call i32 @IS_ALIGNED(i64 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %115

22:                                               ; preds = %1
  %23 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %27 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %4, align 8
  %30 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  store i64 %36, i64* %5, align 8
  %37 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @_RING_CTL_BUF_SIZE(i32 %42)
  %44 = getelementptr i8, i8* %43, i64 %39
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %6, align 8
  %46 = load i32, i32* @RING_BUFFER_INSTRUCTION, align 4
  %47 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 10
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @GTT_BUFFER, align 4
  %49 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 9
  store i32 %48, i32* %49, align 4
  %50 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %51 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 8
  store i32 %52, i32* %53, align 8
  %54 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %55 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %59 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %64 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @_RING_CTL_BUF_SIZE(i32 %65)
  %67 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 7
  store i8* %66, i8** %67, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 2
  store i64 %68, i64* %69, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 3
  store i64 %70, i64* %71, align 8
  %72 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %73 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 6
  store i32 %74, i32* %75, align 8
  %76 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %77 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 5
  store %struct.intel_vgpu_workload* %76, %struct.intel_vgpu_workload** %77, align 8
  %78 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %7, i32 0, i32 4
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* @bypass_scan_mask, align 4
  %80 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %81 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 1, %82
  %84 = and i32 %79, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %22
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86, %22
  store i32 0, i32* %2, align 4
  br label %115

91:                                               ; preds = %86
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @ip_gma_set(%struct.parser_exec_state* %7, i64 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %113

97:                                               ; preds = %91
  %98 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %99 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %102 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %105 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %109 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @_RING_CTL_BUF_SIZE(i32 %110)
  %112 = call i32 @command_scan(%struct.parser_exec_state* %7, i64 %100, i64 %103, i8* %107, i8* %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %97, %96
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %90, %19
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i8* @_RING_CTL_BUF_SIZE(i32) #1

declare dso_local i32 @ip_gma_set(%struct.parser_exec_state*, i64) #1

declare dso_local i32 @command_scan(%struct.parser_exec_state*, i64, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
