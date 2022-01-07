; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_init_with_opt_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_init_with_opt_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uclogic_params = type { i32, i32* }
%struct.hid_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"device report descriptor matches the expected size, replacing\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"device report descriptor doesn't match the expected size (%u != %u), preserving\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uclogic_params*, %struct.hid_device*, i32, i32*, i32)* @uclogic_params_init_with_opt_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_params_init_with_opt_desc(%struct.uclogic_params* %0, %struct.hid_device* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.uclogic_params*, align 8
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uclogic_params* %0, %struct.uclogic_params** %6, align 8
  store %struct.hid_device* %1, %struct.hid_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %14 = load %struct.uclogic_params*, %struct.uclogic_params** %6, align 8
  %15 = icmp eq %struct.uclogic_params* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %5
  %17 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %18 = icmp eq %struct.hid_device* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %16, %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  br label %64

28:                                               ; preds = %22, %19
  %29 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %36 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32* @kmemdup(i32* %37, i32 %38, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %64

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %12, align 4
  br label %55

48:                                               ; preds = %28
  %49 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %50 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %51 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %49, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %48, %46
  %56 = load %struct.uclogic_params*, %struct.uclogic_params** %6, align 8
  %57 = call i32 @memset(%struct.uclogic_params* %56, i32 0, i32 16)
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.uclogic_params*, %struct.uclogic_params** %6, align 8
  %60 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  store i32* null, i32** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.uclogic_params*, %struct.uclogic_params** %6, align 8
  %63 = getelementptr inbounds %struct.uclogic_params, %struct.uclogic_params* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %55, %43, %25
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @kfree(i32* %65)
  %67 = load i32, i32* %13, align 4
  ret i32 %67
}

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, ...) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.uclogic_params*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
