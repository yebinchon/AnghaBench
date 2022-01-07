; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_realloc_eh_data_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ras.c_amdgpu_ras_realloc_eh_data_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.ras_err_handler_data = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.ras_err_handler_data*, i32)* @amdgpu_ras_realloc_eh_data_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ras_realloc_eh_data_space(%struct.amdgpu_device* %0, %struct.ras_err_handler_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.ras_err_handler_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.ras_err_handler_data* %1, %struct.ras_err_handler_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %13 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %16 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 1024)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kmalloc(i32 %27, i32 %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %67

35:                                               ; preds = %3
  %36 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %37 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %43 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %46 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = mul i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i8* %41, i8* %44, i32 %50)
  %52 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %53 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @kfree(i8* %54)
  br label %56

56:                                               ; preds = %40, %35
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %59 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub i32 %60, %61
  %63 = load %struct.ras_err_handler_data*, %struct.ras_err_handler_data** %6, align 8
  %64 = getelementptr inbounds %struct.ras_err_handler_data, %struct.ras_err_handler_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %62
  store i32 %66, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %56, %32
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
