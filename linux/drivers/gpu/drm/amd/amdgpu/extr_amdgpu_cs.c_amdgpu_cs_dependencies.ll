; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_dependencies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_dependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_cs_parser = type { i32, %struct.amdgpu_cs_chunk* }
%struct.amdgpu_cs_chunk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_cs_parser*)* @amdgpu_cs_dependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_dependencies(%struct.amdgpu_device* %0, %struct.amdgpu_cs_parser* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_cs_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_cs_chunk*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_cs_parser* %1, %struct.amdgpu_cs_parser** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %71, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %74

15:                                               ; preds = %9
  %16 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %17 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %16, i32 0, i32 1
  %18 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %18, i64 %20
  store %struct.amdgpu_cs_chunk* %21, %struct.amdgpu_cs_chunk** %8, align 8
  %22 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpu_cs_chunk, %struct.amdgpu_cs_chunk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %70 [
    i32 133, label %25
    i32 132, label %25
    i32 131, label %34
    i32 130, label %43
    i32 128, label %52
    i32 129, label %61
  ]

25:                                               ; preds = %15, %15
  %26 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %27 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %8, align 8
  %28 = call i32 @amdgpu_cs_process_fence_dep(%struct.amdgpu_cs_parser* %26, %struct.amdgpu_cs_chunk* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %75

33:                                               ; preds = %25
  br label %70

34:                                               ; preds = %15
  %35 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %36 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %8, align 8
  %37 = call i32 @amdgpu_cs_process_syncobj_in_dep(%struct.amdgpu_cs_parser* %35, %struct.amdgpu_cs_chunk* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %75

42:                                               ; preds = %34
  br label %70

43:                                               ; preds = %15
  %44 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %45 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %8, align 8
  %46 = call i32 @amdgpu_cs_process_syncobj_out_dep(%struct.amdgpu_cs_parser* %44, %struct.amdgpu_cs_chunk* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %43
  br label %70

52:                                               ; preds = %15
  %53 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %54 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %8, align 8
  %55 = call i32 @amdgpu_cs_process_syncobj_timeline_in_dep(%struct.amdgpu_cs_parser* %53, %struct.amdgpu_cs_chunk* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %75

60:                                               ; preds = %52
  br label %70

61:                                               ; preds = %15
  %62 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %5, align 8
  %63 = load %struct.amdgpu_cs_chunk*, %struct.amdgpu_cs_chunk** %8, align 8
  %64 = call i32 @amdgpu_cs_process_syncobj_timeline_out_dep(%struct.amdgpu_cs_parser* %62, %struct.amdgpu_cs_chunk* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %75

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %15, %69, %60, %51, %42, %33
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %9

74:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %67, %58, %49, %40, %31
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @amdgpu_cs_process_fence_dep(%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*) #1

declare dso_local i32 @amdgpu_cs_process_syncobj_in_dep(%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*) #1

declare dso_local i32 @amdgpu_cs_process_syncobj_out_dep(%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*) #1

declare dso_local i32 @amdgpu_cs_process_syncobj_timeline_in_dep(%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*) #1

declare dso_local i32 @amdgpu_cs_process_syncobj_timeline_out_dep(%struct.amdgpu_cs_parser*, %struct.amdgpu_cs_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
