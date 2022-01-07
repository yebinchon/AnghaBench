; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_verifier.c_via_check_header1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_verifier.c_via_check_header1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state_command = common dso_local global i32 0, align 4
@HALCYON_HEADER1 = common dso_local global i32 0, align 4
@HALCYON_HEADER1MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Invalid HALCYON_HEADER1 command. Attempt to access 3D- or command burst area.\0A\00", align 1
@state_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Invalid HALCYON_HEADER1 command. Attempt to access VGA registers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @via_check_header1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_check_header1(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* @state_command, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %56, %2
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ult i32* %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @HALCYON_HEADER1, align 4
  %20 = or i32 255, %19
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @HALCYON_HEADER1, align 4
  %25 = or i32 768, %24
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @HALCYON_HEADER1MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @HALCYON_HEADER1, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %57

34:                                               ; preds = %27
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @state_error, align 4
  store i32 %36, i32* %7, align 4
  br label %57

37:                                               ; preds = %22, %15
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @HALCYON_HEADER1, align 4
  %40 = or i32 831, %39
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HALCYON_HEADER1MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @HALCYON_HEADER1, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %57

49:                                               ; preds = %42
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @state_error, align 4
  store i32 %51, i32* %7, align 4
  br label %57

52:                                               ; preds = %37
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55
  br label %11

57:                                               ; preds = %49, %48, %34, %33, %11
  %58 = load i32*, i32** %6, align 8
  %59 = load i32**, i32*** %3, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
