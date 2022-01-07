; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_low_alloc_above.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_low_alloc_above.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.efi_boot_memmap = type { i64*, i64*, i64*, i32*, i32*, %struct.TYPE_4__** }

@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_ALLOC_ALIGN = common dso_local global i64 0, align 8
@EFI_PAGE_SIZE = common dso_local global i64 0, align 8
@EFI_CONVENTIONAL_MEMORY = common dso_local global i64 0, align 8
@allocate_pages = common dso_local global i32 0, align 4
@EFI_ALLOCATE_ADDRESS = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@free_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_low_alloc_above(i32* %0, i64 %1, i64 %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.efi_boot_memmap, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %23 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 5
  store %struct.TYPE_4__** %14, %struct.TYPE_4__*** %23, align 8
  %24 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 0
  store i64* %11, i64** %24, align 8
  %25 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 1
  store i64* %12, i64** %25, align 8
  %26 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 2
  store i64* %13, i64** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @efi_get_memory_map(i32* %29, %struct.efi_boot_memmap* %18)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @EFI_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %132

35:                                               ; preds = %5
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @EFI_ALLOC_ALIGN, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @EFI_ALLOC_ALIGN, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @EFI_ALLOC_ALIGN, align 8
  %44 = call i64 @round_up(i64 %42, i64 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %116, %41
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = udiv i64 %51, %52
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %119

55:                                               ; preds = %48
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %57 = ptrtoint %struct.TYPE_4__* %56 to i64
  store i64 %57, i64* %20, align 8
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* %17, align 4
  %61 = call %struct.TYPE_4__* @efi_early_memdesc_ptr(i64 %58, i64 %59, i32 %60)
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %19, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EFI_CONVENTIONAL_MEMORY, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %116

68:                                               ; preds = %55
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %116

75:                                               ; preds = %68
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %21, align 8
  %79 = load i64, i64* %21, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %84 = mul i64 %82, %83
  %85 = add i64 %79, %84
  store i64 %85, i64* %22, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  %90 = load i64, i64* %10, align 8
  store i64 %90, i64* %21, align 8
  br label %91

91:                                               ; preds = %89, %75
  %92 = load i64, i64* %21, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @round_up(i64 %92, i64 %93)
  store i64 %94, i64* %21, align 8
  %95 = load i64, i64* %21, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %95, %96
  %98 = load i64, i64* %22, align 8
  %99 = icmp ugt i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %116

101:                                              ; preds = %91
  %102 = load i32, i32* @allocate_pages, align 4
  %103 = load i32, i32* @EFI_ALLOCATE_ADDRESS, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_4__*
  %106 = load i32, i32* @EFI_LOADER_DATA, align 4
  %107 = load i64, i64* %16, align 8
  %108 = call i64 (i32, %struct.TYPE_4__*, ...) @efi_call_early(i32 %102, %struct.TYPE_4__* %105, i32 %106, i64 %107, i64* %21)
  store i64 %108, i64* %15, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* @EFI_SUCCESS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load i64, i64* %21, align 8
  %114 = load i64*, i64** %9, align 8
  store i64 %113, i64* %114, align 8
  br label %119

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %100, %74, %67
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %48

119:                                              ; preds = %112, %48
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = udiv i64 %122, %123
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i64, i64* @EFI_NOT_FOUND, align 8
  store i64 %127, i64* %15, align 8
  br label %128

128:                                              ; preds = %126, %119
  %129 = load i32, i32* @free_pool, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %131 = call i64 (i32, %struct.TYPE_4__*, ...) @efi_call_early(i32 %129, %struct.TYPE_4__* %130)
  br label %132

132:                                              ; preds = %128, %34
  %133 = load i64, i64* %15, align 8
  ret i64 %133
}

declare dso_local i64 @efi_get_memory_map(i32*, %struct.efi_boot_memmap*) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local %struct.TYPE_4__* @efi_early_memdesc_ptr(i64, i64, i32) #1

declare dso_local i64 @efi_call_early(i32, %struct.TYPE_4__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
