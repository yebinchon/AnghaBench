; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_handle_kernel_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_handle_kernel_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SZ_128M = common dso_local global i32 0, align 4
@TEXT_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for uncompressed kernel.\0A\00", align 1
@MAX_UNCOMP_KERNEL_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to relocate kernel.\0A\00", align 1
@ZIMAGE_OFFSET_LIMIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"Failed to relocate kernel, no low memory available.\0A\00", align 1
@EFI_LOAD_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @handle_kernel_image(i32* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64 %5, %struct.TYPE_3__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %15, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i32, i32* @SZ_128M, align 4
  %20 = call i64 @round_up(i64 %18, i32 %19)
  store i64 %20, i64* %16, align 8
  %21 = load i32, i32* @TEXT_OFFSET, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = mul nsw i32 5, %22
  %24 = sub nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %16, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %16, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = load i64*, i64** %13, align 8
  %32 = call i64 @reserve_kernel_base(i32* %28, i64 %29, i64* %30, i64* %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* @EFI_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %7
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @pr_efi_err(i32* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* %17, align 8
  store i64 %39, i64* %8, align 8
  br label %99

40:                                               ; preds = %7
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %11, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %11, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* @MAX_UNCOMP_KERNEL_SIZE, align 8
  %53 = add i64 %51, %52
  %54 = call i64 @efi_relocate_kernel(i32* %45, i64* %46, i64 %48, i64 %50, i64 %53, i32 0, i32 0)
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* @EFI_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %40
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @pr_efi_err(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %9, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @efi_free(i32* %61, i64 %63, i64 %65)
  %67 = load i64*, i64** %13, align 8
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %17, align 8
  store i64 %68, i64* %8, align 8
  br label %99

69:                                               ; preds = %40
  %70 = load i64*, i64** %10, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %71, %73
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* @ZIMAGE_OFFSET_LIMIT, align 8
  %77 = add i64 %75, %76
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %69
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @pr_efi_err(i32* %80, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32*, i32** %9, align 8
  %83 = load i64*, i64** %13, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %12, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @efi_free(i32* %82, i64 %84, i64 %86)
  %88 = load i64*, i64** %13, align 8
  store i64 0, i64* %88, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i64*, i64** %11, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @efi_free(i32* %89, i64 %91, i64 %93)
  %95 = load i64*, i64** %11, align 8
  store i64 0, i64* %95, align 8
  %96 = load i64, i64* @EFI_LOAD_ERROR, align 8
  store i64 %96, i64* %8, align 8
  br label %99

97:                                               ; preds = %69
  %98 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %97, %79, %58, %36
  %100 = load i64, i64* %8, align 8
  ret i64 %100
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @reserve_kernel_base(i32*, i64, i64*, i64*) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i64 @efi_relocate_kernel(i32*, i64*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @efi_free(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
