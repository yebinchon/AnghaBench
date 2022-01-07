; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_parse_disable_cu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_parse_disable_cu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amdgpu_disable_cu = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%u.%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"amdgpu: could not parse disable_cu\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"amdgpu: disabling CU %u.%u.%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"amdgpu: disable_cu %u.%u.%u is out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_gfx_parse_disable_cu(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i32* %13, i32 0, i32 %20)
  %22 = load i8*, i8** @amdgpu_disable_cu, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i8*, i8** @amdgpu_disable_cu, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %3
  br label %80

29:                                               ; preds = %24
  %30 = load i8*, i8** @amdgpu_disable_cu, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %77, %29
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @sscanf(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8, i32* %9)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %80

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = icmp ult i32 %47, 16
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 1, %54
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = mul i32 %57, %58
  %60 = load i32, i32* %8, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %55
  store i32 %65, i32* %63, align 4
  br label %71

66:                                               ; preds = %46, %42, %38
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %49
  %72 = load i8*, i8** %10, align 8
  %73 = call i8* @strchr(i8* %72, i8 signext 44)
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %80

77:                                               ; preds = %71
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** %10, align 8
  br label %31

80:                                               ; preds = %28, %36, %76
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
