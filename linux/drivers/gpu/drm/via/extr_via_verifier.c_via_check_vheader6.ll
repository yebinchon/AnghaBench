; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_verifier.c_via_check_vheader6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_verifier.c_via_check_vheader6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"Illegal termination of video header6 command\0A\00", align 1
@state_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Illegal header6 header data\0A\00", align 1
@state_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @via_check_vheader6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_check_vheader6(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = ptrtoint i32* %11 to i64
  %14 = ptrtoint i32* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 4
  %17 = icmp slt i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @state_error, align 4
  store i32 %20, i32* %3, align 4
  br label %94

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %27, align 4
  %30 = icmp ne i32 %29, 16121856
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @state_error, align 4
  store i32 %33, i32* %3, align 4
  br label %94

34:                                               ; preds = %21
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %35, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @state_error, align 4
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %34
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @state_error, align 4
  store i32 %55, i32* %3, align 4
  br label %94

56:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  %64 = load i32, i32* %62, align 4
  %65 = call i64 @verify_mmio_address(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @state_error, align 4
  store i32 %68, i32* %3, align 4
  br label %94

69:                                               ; preds = %61
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %57

75:                                               ; preds = %57
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, 3
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 3
  %85 = sub nsw i32 4, %84
  %86 = call i64 @verify_video_tail(i32** %7, i32* %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @state_error, align 4
  store i32 %89, i32* %3, align 4
  br label %94

90:                                               ; preds = %81, %75
  %91 = load i32*, i32** %7, align 8
  %92 = load i32**, i32*** %4, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32, i32* @state_command, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %88, %67, %53, %39, %31, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @verify_mmio_address(i32) #1

declare dso_local i64 @verify_video_tail(i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
