; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_frame_init_with_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_frame_init_with_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_params_frame = type { i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uclogic_params_frame*, i32*, i64, i32)* @uclogic_params_frame_init_with_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_params_frame_init_with_desc(%struct.uclogic_params_frame* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uclogic_params_frame*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.uclogic_params_frame* %0, %struct.uclogic_params_frame** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.uclogic_params_frame*, %struct.uclogic_params_frame** %6, align 8
  %12 = icmp eq %struct.uclogic_params_frame* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %16, %13
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmemdup(i32* %23, i64 %24, i32 %25)
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.uclogic_params_frame*, %struct.uclogic_params_frame** %6, align 8
  %34 = call i32 @memset(%struct.uclogic_params_frame* %33, i32 0, i32 24)
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.uclogic_params_frame*, %struct.uclogic_params_frame** %6, align 8
  %37 = getelementptr inbounds %struct.uclogic_params_frame, %struct.uclogic_params_frame* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.uclogic_params_frame*, %struct.uclogic_params_frame** %6, align 8
  %40 = getelementptr inbounds %struct.uclogic_params_frame, %struct.uclogic_params_frame* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.uclogic_params_frame*, %struct.uclogic_params_frame** %6, align 8
  %43 = getelementptr inbounds %struct.uclogic_params_frame, %struct.uclogic_params_frame* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %29, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32* @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @memset(%struct.uclogic_params_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
