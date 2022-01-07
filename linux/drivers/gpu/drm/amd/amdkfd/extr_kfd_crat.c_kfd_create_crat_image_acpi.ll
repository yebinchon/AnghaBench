; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_create_crat_image_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_create_crat_image_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CRAT_SIGNATURE = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"CRAT table not found\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CRAT table error: %s\0A\00", align 1
@ignore_crat = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"CRAT table disabled by module option\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kfd_create_crat_image_acpi(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.acpi_table_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32, i32* @CRAT_SIGNATURE, align 4
  %18 = call i64 @acpi_get_table(i32 %17, i32 0, %struct.acpi_table_header** %6)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @AE_NOT_FOUND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODATA, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %15
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @ACPI_FAILURE(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = call i8* @acpi_format_exception(i64 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* @ignore_crat, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @ENODATA, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %64

45:                                               ; preds = %38
  %46 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %47 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %48 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kmemdup(%struct.acpi_table_header* %46, i64 %49, i32 %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %45
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %4, align 8
  store i8* %58, i8** %59, align 8
  %60 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %61 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %54, %41, %30, %22, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i8* @acpi_format_exception(i64) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i8* @kmemdup(%struct.acpi_table_header*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
