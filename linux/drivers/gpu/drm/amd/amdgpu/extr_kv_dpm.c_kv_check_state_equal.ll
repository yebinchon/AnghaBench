; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_check_state_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_check_state_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kv_ps = type { i32, i32* }
%struct.amdgpu_ps = type { i64, i64, i64, i64 }
%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*)* @kv_check_state_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_check_state_equal(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kv_ps*, align 8
  %11 = alloca %struct.kv_ps*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdgpu_ps*, align 8
  %14 = alloca %struct.amdgpu_ps*, align 8
  %15 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.amdgpu_ps*
  store %struct.amdgpu_ps* %17, %struct.amdgpu_ps** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.amdgpu_ps*
  store %struct.amdgpu_ps* %19, %struct.amdgpu_ps** %14, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %15, align 8
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  %23 = icmp eq %struct.amdgpu_device* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %4
  %25 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %26 = icmp eq %struct.amdgpu_ps* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %29 = icmp eq %struct.amdgpu_ps* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %24, %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %124

36:                                               ; preds = %30
  %37 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %38 = call %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps* %37)
  store %struct.kv_ps* %38, %struct.kv_ps** %10, align 8
  %39 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %40 = call %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps* %39)
  store %struct.kv_ps* %40, %struct.kv_ps** %11, align 8
  %41 = load %struct.kv_ps*, %struct.kv_ps** %10, align 8
  %42 = icmp eq %struct.kv_ps* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  store i32 0, i32* %44, align 4
  store i32 0, i32* %5, align 4
  br label %124

45:                                               ; preds = %36
  %46 = load %struct.kv_ps*, %struct.kv_ps** %10, align 8
  %47 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.kv_ps*, %struct.kv_ps** %11, align 8
  %50 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  store i32 0, i32* %5, align 4
  br label %124

55:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %80, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.kv_ps*, %struct.kv_ps** %10, align 8
  %59 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load %struct.kv_ps*, %struct.kv_ps** %10, align 8
  %64 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load %struct.kv_ps*, %struct.kv_ps** %11, align 8
  %70 = getelementptr inbounds %struct.kv_ps, %struct.kv_ps* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @kv_are_power_levels_equal(i32* %68, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %62
  %78 = load i32*, i32** %9, align 8
  store i32 0, i32* %78, align 4
  store i32 0, i32* %5, align 4
  br label %124

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %56

83:                                               ; preds = %56
  %84 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %85 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %88 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %93 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br label %99

99:                                               ; preds = %91, %83
  %100 = phi i1 [ false, %83 ], [ %98, %91 ]
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %107 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %112 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %115 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br label %118

118:                                              ; preds = %110, %99
  %119 = phi i1 [ false, %99 ], [ %117, %110 ]
  %120 = zext i1 %119 to i32
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %120
  store i32 %123, i32* %121, align 4
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %118, %77, %53, %43, %33
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.kv_ps* @kv_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i32 @kv_are_power_levels_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
