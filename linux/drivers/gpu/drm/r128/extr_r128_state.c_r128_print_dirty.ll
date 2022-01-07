; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_print_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_print_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"%s: (0x%x) %s%s%s%s%s%s%s%s%s\0A\00", align 1
@R128_UPLOAD_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"core, \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@R128_UPLOAD_CONTEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"context, \00", align 1
@R128_UPLOAD_SETUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"setup, \00", align 1
@R128_UPLOAD_TEX0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"tex0, \00", align 1
@R128_UPLOAD_TEX1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"tex1, \00", align 1
@R128_UPLOAD_MASKS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"masks, \00", align 1
@R128_UPLOAD_WINDOW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"window, \00", align 1
@R128_UPLOAD_CLIPRECTS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"cliprects, \00", align 1
@R128_REQUIRE_QUIESCENCE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"quiescence, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @r128_print_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r128_print_dirty(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @R128_UPLOAD_CORE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @R128_UPLOAD_CONTEXT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @R128_UPLOAD_SETUP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @R128_UPLOAD_TEX0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @R128_UPLOAD_TEX1, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @R128_UPLOAD_MASKS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @R128_UPLOAD_WINDOW, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @R128_UPLOAD_CLIPRECTS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @R128_REQUIRE_QUIESCENCE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %6, i8* %12, i8* %18, i8* %24, i8* %30, i8* %36, i8* %42, i8* %48, i8* %54, i8* %60)
  ret void
}

declare dso_local i32 @DRM_INFO(i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
