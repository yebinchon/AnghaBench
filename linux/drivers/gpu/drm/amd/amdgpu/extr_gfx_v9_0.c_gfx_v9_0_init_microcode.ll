; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vega10\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vega12\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vega20\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"raven2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"picasso\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"raven\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"arcturus\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"renoir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_init_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_init_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %32 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %12
    i32 132, label %13
    i32 133, label %30
    i32 131, label %31
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %34

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %34

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %29

19:                                               ; preds = %13
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 5592
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %28

27:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %18
  br label %34

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %34

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %34

32:                                               ; preds = %1
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %31, %30, %29, %12, %11, %10
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 133
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @gfx_v9_0_init_cp_gfx_microcode(%struct.amdgpu_device* %40, i8* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %66

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @gfx_v9_0_init_rlc_microcode(%struct.amdgpu_device* %49, i8* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %66

56:                                               ; preds = %48
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @gfx_v9_0_init_cp_compute_microcode(%struct.amdgpu_device* %57, i8* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %62, %54, %45
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @gfx_v9_0_init_cp_gfx_microcode(%struct.amdgpu_device*, i8*) #1

declare dso_local i32 @gfx_v9_0_init_rlc_microcode(%struct.amdgpu_device*, i8*) #1

declare dso_local i32 @gfx_v9_0_init_cp_compute_microcode(%struct.amdgpu_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
