; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_check_state_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_check_state_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_ps = type { i32, i32* }
%struct.amdgpu_ps = type { i64, i64, i64, i64 }
%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"si_cps is NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*)* @si_check_state_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_check_state_equal(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.si_ps*, align 8
  %11 = alloca %struct.si_ps*, align 8
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
  br label %125

36:                                               ; preds = %30
  %37 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %38 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %37)
  store %struct.si_ps* %38, %struct.si_ps** %10, align 8
  %39 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %40 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %39)
  store %struct.si_ps* %40, %struct.si_ps** %11, align 8
  %41 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %42 = icmp eq %struct.si_ps* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %45 = load i32*, i32** %9, align 8
  store i32 0, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %125

46:                                               ; preds = %36
  %47 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %48 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.si_ps*, %struct.si_ps** %11, align 8
  %51 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %125

56:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %60 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %57
  %64 = load %struct.si_ps*, %struct.si_ps** %10, align 8
  %65 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.si_ps*, %struct.si_ps** %11, align 8
  %71 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = call i32 @si_are_power_levels_equal(i32* %69, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %63
  %79 = load i32*, i32** %9, align 8
  store i32 0, i32* %79, align 4
  store i32 0, i32* %5, align 4
  br label %125

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %86 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %89 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %94 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %97 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %95, %98
  br label %100

100:                                              ; preds = %92, %84
  %101 = phi i1 [ false, %84 ], [ %99, %92 ]
  %102 = zext i1 %101 to i32
  %103 = load i32*, i32** %9, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %105 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %108 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %13, align 8
  %113 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %14, align 8
  %116 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br label %119

119:                                              ; preds = %111, %100
  %120 = phi i1 [ false, %100 ], [ %118, %111 ]
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %121
  store i32 %124, i32* %122, align 4
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %78, %54, %43, %33
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @si_are_power_levels_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
