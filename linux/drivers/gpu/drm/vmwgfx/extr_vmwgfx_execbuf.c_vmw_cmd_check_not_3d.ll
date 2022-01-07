; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check_not_3d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check_not_3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unsupported SVGA command: %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid SVGA command (size mismatch): %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Kernel only SVGA command: %u.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i8*, i32*)* @vmw_cmd_check_not_3d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_check_not_3d(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_sw_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %27 [
    i32 128, label %19
    i32 129, label %21
    i32 131, label %23
    i32 130, label %25
  ]

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  store i32 8, i32* %20, align 4
  br label %32

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  store i32 8, i32* %22, align 4
  br label %32

23:                                               ; preds = %4
  %24 = load i32*, i32** %9, align 8
  store i32 8, i32* %24, align 4
  br label %32

25:                                               ; preds = %4
  %26 = load i32*, i32** %9, align 8
  store i32 8, i32* %26, align 4
  br label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %65

32:                                               ; preds = %25, %23, %21, %19
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %65

42:                                               ; preds = %32
  %43 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %44 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %65

56:                                               ; preds = %42
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %61 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @vmw_cmd_check_define_gmrfb(%struct.vmw_private* %60, %struct.vmw_sw_context* %61, i8* %62)
  store i32 %63, i32* %5, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %59, %51, %37, %27
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @VMW_DEBUG_USER(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_cmd_check_define_gmrfb(%struct.vmw_private*, %struct.vmw_sw_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
