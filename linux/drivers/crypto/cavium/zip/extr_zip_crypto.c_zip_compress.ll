; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_compress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_kernel_ctx = type { %struct.zip_operation }
%struct.zip_operation = type { i32, i32, i32*, i32* }
%struct.zip_state = type { i32 }
%struct.zip_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, %struct.zip_kernel_ctx*)* @zip_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_compress(i32* %0, i32 %1, i32* %2, i32* %3, %struct.zip_kernel_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.zip_kernel_ctx*, align 8
  %12 = alloca %struct.zip_operation*, align 8
  %13 = alloca %struct.zip_state*, align 8
  %14 = alloca %struct.zip_device*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.zip_kernel_ctx* %4, %struct.zip_kernel_ctx** %11, align 8
  store %struct.zip_operation* null, %struct.zip_operation** %12, align 8
  store %struct.zip_device* null, %struct.zip_device** %14, align 8
  %16 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %11, align 8
  %17 = icmp ne %struct.zip_kernel_ctx* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %18, %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %84

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
  br label %84

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
  br label %84

46:                                               ; preds = %38
  %47 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %11, align 8
  %48 = getelementptr inbounds %struct.zip_kernel_ctx, %struct.zip_kernel_ctx* %47, i32 0, i32 0
  store %struct.zip_operation* %48, %struct.zip_operation** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %51 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %55 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %57 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @memcpy(i32* %58, i32* %59, i32 %60)
  %62 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %63 = load %struct.zip_state*, %struct.zip_state** %13, align 8
  %64 = load %struct.zip_device*, %struct.zip_device** %14, align 8
  %65 = call i32 @zip_deflate(%struct.zip_operation* %62, %struct.zip_state* %63, %struct.zip_device* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %46
  %69 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %70 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.zip_operation*, %struct.zip_operation** %12, align 8
  %75 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32* %73, i32* %76, i32 %78)
  br label %80

80:                                               ; preds = %68, %46
  %81 = load %struct.zip_state*, %struct.zip_state** %13, align 8
  %82 = call i32 @kfree(%struct.zip_state* %81)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %43, %35, %27
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.zip_device* @zip_get_device(i32) #1

declare dso_local i32 @zip_get_node_id(...) #1

declare dso_local %struct.zip_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @zip_deflate(%struct.zip_operation*, %struct.zip_state*, %struct.zip_device*) #1

declare dso_local i32 @kfree(%struct.zip_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
