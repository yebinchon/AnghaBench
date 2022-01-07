; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_find_first_free_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_find_first_free_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32 }
%struct.resource_context = type { i32*, i32* }
%struct.resource_pool = type { i32, %struct.audio** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audio* (%struct.resource_context*, %struct.resource_pool*, i32)* @find_first_free_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audio* @find_first_free_audio(%struct.resource_context* %0, %struct.resource_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.audio*, align 8
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %11 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %49, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %19 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %28 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %49

40:                                               ; preds = %35
  %41 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %42 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %41, i32 0, i32 1
  %43 = load %struct.audio**, %struct.audio*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.audio*, %struct.audio** %43, i64 %45
  %47 = load %struct.audio*, %struct.audio** %46, align 8
  store %struct.audio* %47, %struct.audio** %4, align 8
  br label %100

48:                                               ; preds = %26, %17
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %13

52:                                               ; preds = %13
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %58 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %67 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %66, i32 0, i32 1
  %68 = load %struct.audio**, %struct.audio*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.audio*, %struct.audio** %68, i64 %70
  %72 = load %struct.audio*, %struct.audio** %71, align 8
  store %struct.audio* %72, %struct.audio** %4, align 8
  br label %100

73:                                               ; preds = %56, %52
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %96, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %80 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %89 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %88, i32 0, i32 1
  %90 = load %struct.audio**, %struct.audio*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.audio*, %struct.audio** %90, i64 %92
  %94 = load %struct.audio*, %struct.audio** %93, align 8
  store %struct.audio* %94, %struct.audio** %4, align 8
  br label %100

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %74

99:                                               ; preds = %74
  store %struct.audio* null, %struct.audio** %4, align 8
  br label %100

100:                                              ; preds = %99, %87, %65, %40
  %101 = load %struct.audio*, %struct.audio** %4, align 8
  ret %struct.audio* %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
