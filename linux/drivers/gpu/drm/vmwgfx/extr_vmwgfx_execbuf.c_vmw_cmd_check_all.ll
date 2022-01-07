; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"Command verifier out of sync.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i8*, i64)* @vmw_cmd_check_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_check_all(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_sw_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %15 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  br label %16

16:                                               ; preds = %32, %4
  %17 = load i64, i64* %10, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %22 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @vmw_cmd_check(%struct.vmw_private* %21, %struct.vmw_sw_context* %22, i8* %23, i64* %9)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %52

32:                                               ; preds = %19
  %33 = load i8*, i8** %8, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %16

41:                                               ; preds = %16
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %47, %30
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @vmw_cmd_check(%struct.vmw_private*, %struct.vmw_sw_context*, i8*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
