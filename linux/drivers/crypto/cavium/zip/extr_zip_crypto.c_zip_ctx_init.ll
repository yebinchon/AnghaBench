; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_kernel_ctx = type { %struct.zip_operation, %struct.zip_operation }
%struct.zip_operation = type { i8*, i8* }

@MAX_INPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_OUTPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_kernel_ctx*, i32)* @zip_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_ctx_init(%struct.zip_kernel_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_kernel_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zip_operation*, align 8
  %7 = alloca %struct.zip_operation*, align 8
  store %struct.zip_kernel_ctx* %0, %struct.zip_kernel_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.zip_kernel_ctx, %struct.zip_kernel_ctx* %8, i32 0, i32 1
  store %struct.zip_operation* %9, %struct.zip_operation** %6, align 8
  %10 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.zip_kernel_ctx, %struct.zip_kernel_ctx* %10, i32 0, i32 0
  store %struct.zip_operation* %11, %struct.zip_operation** %7, align 8
  %12 = load %struct.zip_operation*, %struct.zip_operation** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @zip_static_init_zip_ops(%struct.zip_operation* %12, i32 %13)
  %15 = load %struct.zip_operation*, %struct.zip_operation** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @zip_static_init_zip_ops(%struct.zip_operation* %15, i32 %16)
  %18 = load i32, i32* @MAX_INPUT_BUFFER_SIZE, align 4
  %19 = call i8* @zip_data_buf_alloc(i32 %18)
  %20 = load %struct.zip_operation*, %struct.zip_operation** %6, align 8
  %21 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.zip_operation*, %struct.zip_operation** %6, align 8
  %23 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %80

29:                                               ; preds = %2
  %30 = load i32, i32* @MAX_OUTPUT_BUFFER_SIZE, align 4
  %31 = call i8* @zip_data_buf_alloc(i32 %30)
  %32 = load %struct.zip_operation*, %struct.zip_operation** %6, align 8
  %33 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.zip_operation*, %struct.zip_operation** %6, align 8
  %35 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %72

39:                                               ; preds = %29
  %40 = load i32, i32* @MAX_INPUT_BUFFER_SIZE, align 4
  %41 = call i8* @zip_data_buf_alloc(i32 %40)
  %42 = load %struct.zip_operation*, %struct.zip_operation** %7, align 8
  %43 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.zip_operation*, %struct.zip_operation** %7, align 8
  %45 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  br label %66

49:                                               ; preds = %39
  %50 = load i32, i32* @MAX_OUTPUT_BUFFER_SIZE, align 4
  %51 = call i8* @zip_data_buf_alloc(i32 %50)
  %52 = load %struct.zip_operation*, %struct.zip_operation** %7, align 8
  %53 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.zip_operation*, %struct.zip_operation** %7, align 8
  %55 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %80

60:                                               ; preds = %58
  %61 = load %struct.zip_operation*, %struct.zip_operation** %7, align 8
  %62 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* @MAX_INPUT_BUFFER_SIZE, align 4
  %65 = call i32 @zip_data_buf_free(i8* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %48
  %67 = load %struct.zip_operation*, %struct.zip_operation** %6, align 8
  %68 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @MAX_OUTPUT_BUFFER_SIZE, align 4
  %71 = call i32 @zip_data_buf_free(i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %38
  %73 = load %struct.zip_operation*, %struct.zip_operation** %6, align 8
  %74 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @MAX_INPUT_BUFFER_SIZE, align 4
  %77 = call i32 @zip_data_buf_free(i8* %75, i32 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %59, %26
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @zip_static_init_zip_ops(%struct.zip_operation*, i32) #1

declare dso_local i8* @zip_data_buf_alloc(i32) #1

declare dso_local i32 @zip_data_buf_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
