; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_kernel_ctx = type { %struct.zip_operation }
%struct.zip_operation = type { i32, i32, i32, i64*, i64* }
%struct.zip_state = type { i32 }
%struct.zip_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i64*, i32*, %struct.zip_kernel_ctx*)* @zip_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_decompress(i64* %0, i32 %1, i64* %2, i32* %3, %struct.zip_kernel_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.zip_kernel_ctx*, align 8
  %12 = alloca %struct.zip_operation*, align 8
  %13 = alloca %struct.zip_state*, align 8
  %14 = alloca %struct.zip_device*, align 8
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.zip_kernel_ctx* %4, %struct.zip_kernel_ctx** %11, align 8
  store %struct.zip_operation* null, %struct.zip_operation** %12, align 8
  store %struct.zip_device* null, %struct.zip_device** %14, align 8
  %16 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %11, align 8
  %17 = icmp ne %struct.zip_kernel_ctx* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i64*, i64** %7, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64*, i64** %9, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %18, %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %97

30:                                               ; preds = %24
  %31 = call i32 (...) @zip_get_node_id()
  %32 = call %struct.zip_device* @zip_get_device(i32 %31)
  store %struct.zip_device* %32, %struct.zip_device** %14, align 8
  %33 = load %struct.zip_device*, %struct.zip_device** %14, align 8
  %34 = icmp ne %struct.zip_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %97

38:                                               ; preds = %30
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.zip_state* @kzalloc(i32 4, i32 %39)
  store %struct.zip_state* %40, %struct.zip_state** %13, align 8
  %41 = load %struct.zip_state*, %struct.zip_state** %13, align 8
  %42 = icmp ne %struct.zip_state* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %97

46:                                               ; preds = %38
  %47 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %11, align 8
  %48 = getelementptr inbounds %struct.zip_kernel_ctx, %struct.zip_kernel_ctx* %47, i32 0, i32 0
  store %struct.zip_operation* %48, %struct.zip_operation** %12, align 8
  %49 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %50 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memcpy(i64* %51, i64* %52, i32 %53)
  %55 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %56 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 3
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %61 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %60, i32 0, i32 4
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %59, %46
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %70 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %74 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %76 = load %struct.zip_state*, %struct.zip_state** %13, align 8
  %77 = load %struct.zip_device*, %struct.zip_device** %14, align 8
  %78 = call i32 @zip_inflate(%struct.zip_operation* %75, %struct.zip_state* %76, %struct.zip_device* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %67
  %82 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %83 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i64*, i64** %9, align 8
  %87 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %88 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i64* %86, i64* %89, i32 %91)
  br label %93

93:                                               ; preds = %81, %67
  %94 = load %struct.zip_state*, %struct.zip_state** %13, align 8
  %95 = call i32 @kfree(%struct.zip_state* %94)
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %43, %35, %27
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.zip_device* @zip_get_device(i32) #1

declare dso_local i32 @zip_get_node_id(...) #1

declare dso_local %struct.zip_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @zip_inflate(%struct.zip_operation*, %struct.zip_state*, %struct.zip_device*) #1

declare dso_local i32 @kfree(%struct.zip_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
