; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_shadow_workload_ring_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_shadow_workload_ring_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i32, i64, i64, i64, i64, i8*, i32, %struct.intel_vgpu* }
%struct.intel_vgpu = type { %struct.TYPE_2__, %struct.intel_vgpu_submission }
%struct.TYPE_2__ = type { i32 }
%struct.intel_vgpu_submission = type { i64*, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"fail to re-alloc ring scan buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"fail to copy guest ring buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_workload*)* @shadow_workload_ring_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shadow_workload_ring_buffer(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_workload*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_vgpu_submission*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %3, align 8
  %14 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %14, i32 0, i32 7
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %15, align 8
  store %struct.intel_vgpu* %16, %struct.intel_vgpu** %4, align 8
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %17, i32 0, i32 1
  store %struct.intel_vgpu_submission* %18, %struct.intel_vgpu_submission** %5, align 8
  %19 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @_RING_CTL_BUF_SIZE(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %27 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %28, %29
  %31 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = load i64, i64* %9, align 8
  %36 = urem i64 %34, %35
  %37 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %40 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %43 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  store i64 %45, i64* %6, align 8
  %46 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %50 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  store i64 %52, i64* %7, align 8
  %53 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %54 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  store i64 %57, i64* %8, align 8
  %58 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %59 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %62 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %60, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %1
  %70 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %71 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %78 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @krealloc(i8* %76, i64 %79, i32 %80)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %69
  %85 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %158

88:                                               ; preds = %69
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %91 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %89, i8** %95, align 8
  %96 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %97 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %100 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 %98, i64* %104, align 8
  br label %105

105:                                              ; preds = %88, %1
  %106 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %107 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %106, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %10, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %115 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* %7, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %105
  %120 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %121 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %122 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = call i32 @copy_gma_to_hva(%struct.intel_vgpu* %120, i32 %124, i64 %125, i64 %126, i8* %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %2, align 4
  br label %158

134:                                              ; preds = %119
  %135 = load i32, i32* %12, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr i8, i8* %136, i64 %137
  store i8* %138, i8** %10, align 8
  %139 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %140 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %6, align 8
  br label %142

142:                                              ; preds = %134, %105
  %143 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %144 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %145 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @copy_gma_to_hva(%struct.intel_vgpu* %143, i32 %147, i64 %148, i64 %149, i8* %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %142
  %155 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %2, align 4
  br label %158

157:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %154, %131, %84
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @_RING_CTL_BUF_SIZE(i32) #1

declare dso_local i8* @krealloc(i8*, i64, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @copy_gma_to_hva(%struct.intel_vgpu*, i32, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
