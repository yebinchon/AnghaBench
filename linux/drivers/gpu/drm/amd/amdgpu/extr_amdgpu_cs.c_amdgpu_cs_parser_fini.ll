; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_parser_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_parser_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_7__*, i64, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.amdgpu_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_cs_parser*, i32, i32)* @amdgpu_cs_parser_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_cs_parser_fini(%struct.amdgpu_cs_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_cs_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %15, i32 0, i32 10
  %17 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %17, i32 0, i32 9
  %19 = call i32 @ttm_eu_backoff_reservation(i32* %16, i32* %18)
  br label %20

20:                                               ; preds = %14, %11, %3
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %29 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %28, i32 0, i32 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @drm_syncobj_put(i32 %35)
  %37 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %37, i32 0, i32 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @kfree(%struct.TYPE_7__* %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %50, i32 0, i32 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 @kfree(%struct.TYPE_7__* %52)
  %54 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_fence_put(i32 %56)
  %58 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %58, i32 0, i32 6
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %49
  %63 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %63, i32 0, i32 6
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %69 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %68, i32 0, i32 6
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 @amdgpu_ctx_put(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %62, %49
  %73 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %74 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %79 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @amdgpu_bo_list_put(i64 %80)
  br label %82

82:                                               ; preds = %77, %72
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %99, %82
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %86 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %91 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %90, i32 0, i32 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @kvfree(i32 %97)
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %7, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %83

102:                                              ; preds = %83
  %103 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %104 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %103, i32 0, i32 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = call i32 @kfree(%struct.TYPE_7__* %105)
  %107 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %108 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %113 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @amdgpu_job_free(i64 %114)
  br label %116

116:                                              ; preds = %111, %102
  %117 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %118 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %116
  %124 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %4, align 8
  %125 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(i64 %128)
  store %struct.amdgpu_bo* %129, %struct.amdgpu_bo** %8, align 8
  %130 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %8)
  br label %131

131:                                              ; preds = %123, %116
  ret void
}

declare dso_local i32 @ttm_eu_backoff_reservation(i32*, i32*) #1

declare dso_local i32 @drm_syncobj_put(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @dma_fence_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @amdgpu_ctx_put(%struct.TYPE_8__*) #1

declare dso_local i32 @amdgpu_bo_list_put(i64) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @amdgpu_job_free(i64) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(i64) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
