; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_relocate_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_relocate_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFI_INVALID_PARAMETER = common dso_local global i64 0, align 8
@EFI_ALLOC_ALIGN = common dso_local global i32 0, align 4
@EFI_PAGE_SIZE = common dso_local global i64 0, align 8
@allocate_pages = common dso_local global i32 0, align 4
@EFI_ALLOCATE_ADDRESS = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Failed to allocate usable memory for kernel.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_relocate_kernel(i32* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %21 = load i64, i64* %13, align 8
  store i64 %21, i64* %20, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %24, %7
  %31 = load i64, i64* @EFI_INVALID_PARAMETER, align 8
  store i64 %31, i64* %8, align 8
  br label %79

32:                                               ; preds = %27
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @EFI_INVALID_PARAMETER, align 8
  store i64 %37, i64* %8, align 8
  br label %79

38:                                               ; preds = %32
  %39 = load i64*, i64** %10, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @EFI_ALLOC_ALIGN, align 4
  %43 = call i64 @round_up(i64 %41, i32 %42)
  %44 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %45 = udiv i64 %43, %44
  store i64 %45, i64* %19, align 8
  %46 = load i32, i32* @allocate_pages, align 4
  %47 = load i32, i32* @EFI_ALLOCATE_ADDRESS, align 4
  %48 = load i32, i32* @EFI_LOADER_DATA, align 4
  %49 = load i64, i64* %19, align 8
  %50 = call i64 @efi_call_early(i32 %46, i32 %47, i32 %48, i64 %49, i64* %20)
  store i64 %50, i64* %18, align 8
  %51 = load i64, i64* %20, align 8
  store i64 %51, i64* %17, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* @EFI_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load i32*, i32** %9, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i64 @efi_low_alloc_above(i32* %56, i64 %57, i64 %58, i64* %17, i64 %59)
  store i64 %60, i64* %18, align 8
  br label %61

61:                                               ; preds = %55, %38
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* @EFI_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @pr_efi_err(i32* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %68 = load i64, i64* %18, align 8
  store i64 %68, i64* %8, align 8
  br label %79

69:                                               ; preds = %61
  %70 = load i64, i64* %17, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i64, i64* %16, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @memcpy(i8* %71, i8* %73, i64 %74)
  %76 = load i64, i64* %17, align 8
  %77 = load i64*, i64** %10, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %18, align 8
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %69, %65, %36, %30
  %80 = load i64, i64* %8, align 8
  ret i64 %80
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @efi_call_early(i32, i32, i32, i64, i64*) #1

declare dso_local i64 @efi_low_alloc_above(i32*, i64, i64, i64*, i64) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
