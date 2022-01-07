; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_ctx_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_crypto.c_zip_ctx_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_kernel_ctx = type { %struct.zip_operation, %struct.zip_operation }
%struct.zip_operation = type { i32, i32 }

@MAX_INPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@MAX_OUTPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zip_kernel_ctx*)* @zip_ctx_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zip_ctx_exit(%struct.zip_kernel_ctx* %0) #0 {
  %2 = alloca %struct.zip_kernel_ctx*, align 8
  %3 = alloca %struct.zip_operation*, align 8
  %4 = alloca %struct.zip_operation*, align 8
  store %struct.zip_kernel_ctx* %0, %struct.zip_kernel_ctx** %2, align 8
  %5 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.zip_kernel_ctx, %struct.zip_kernel_ctx* %5, i32 0, i32 1
  store %struct.zip_operation* %6, %struct.zip_operation** %3, align 8
  %7 = load %struct.zip_kernel_ctx*, %struct.zip_kernel_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.zip_kernel_ctx, %struct.zip_kernel_ctx* %7, i32 0, i32 0
  store %struct.zip_operation* %8, %struct.zip_operation** %4, align 8
  %9 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %10 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX_INPUT_BUFFER_SIZE, align 4
  %13 = call i32 @zip_data_buf_free(i32 %11, i32 %12)
  %14 = load %struct.zip_operation*, %struct.zip_operation** %3, align 8
  %15 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX_OUTPUT_BUFFER_SIZE, align 4
  %18 = call i32 @zip_data_buf_free(i32 %16, i32 %17)
  %19 = load %struct.zip_operation*, %struct.zip_operation** %4, align 8
  %20 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAX_INPUT_BUFFER_SIZE, align 4
  %23 = call i32 @zip_data_buf_free(i32 %21, i32 %22)
  %24 = load %struct.zip_operation*, %struct.zip_operation** %4, align 8
  %25 = getelementptr inbounds %struct.zip_operation, %struct.zip_operation* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAX_OUTPUT_BUFFER_SIZE, align 4
  %28 = call i32 @zip_data_buf_free(i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @zip_data_buf_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
