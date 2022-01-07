; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_post_dependencies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_post_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_cs_parser*)* @amdgpu_cs_post_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_cs_post_dependencies(%struct.amdgpu_cs_parser* %0) #0 {
  %2 = alloca %struct.amdgpu_cs_parser*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %80, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %83

10:                                               ; preds = %4
  %11 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %66

20:                                               ; preds = %10
  %21 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %20
  %31 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %48 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %51 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @drm_syncobj_add_point(i32 %38, i32* %46, i32 %49, i64 %57)
  %59 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  br label %79

66:                                               ; preds = %20, %10
  %67 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %68 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %2, align 8
  %76 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @drm_syncobj_replace_fence(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %66, %30
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %4

83:                                               ; preds = %4
  ret void
}

declare dso_local i32 @drm_syncobj_add_point(i32, i32*, i32, i64) #1

declare dso_local i32 @drm_syncobj_replace_fence(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
