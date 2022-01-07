; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_reserve_kernel_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_reserve_kernel_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.efi_boot_memmap = type { i64*, i64*, i64*, i32*, i32*, %struct.TYPE_3__** }

@MAX_UNCOMP_KERNEL_SIZE = common dso_local global i64 0, align 8
@EFI_PAGE_SIZE = common dso_local global i64 0, align 8
@allocate_pages = common dso_local global i32 0, align 4
@EFI_ALLOCATE_MAX_ADDRESS = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"reserve_kernel_base(): Unable to retrieve memory map.\0A\00", align 1
@EFI_ALLOCATE_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"reserve_kernel_base(): alloc failed.\0A\00", align 1
@EFI_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@free_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64*, i64*)* @reserve_kernel_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reserve_kernel_base(i32* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.efi_boot_memmap, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %22 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 0
  store i64* %13, i64** %22, align 8
  %23 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 1
  store i64* %14, i64** %23, align 8
  %24 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 2
  store i64* %15, i64** %24, align 8
  %25 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %18, i32 0, i32 5
  store %struct.TYPE_3__** %11, %struct.TYPE_3__*** %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @MAX_UNCOMP_KERNEL_SIZE, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* @MAX_UNCOMP_KERNEL_SIZE, align 8
  %32 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %33 = udiv i64 %31, %32
  store i64 %33, i64* %12, align 8
  %34 = load i32, i32* @allocate_pages, align 4
  %35 = load i32, i32* @EFI_ALLOCATE_MAX_ADDRESS, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_3__*
  %38 = load i64, i64* %12, align 8
  %39 = call i64 (i32, %struct.TYPE_3__*, ...) @efi_call_early(i32 %34, %struct.TYPE_3__* %37, i32 131, i64 %38, i64* %10)
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* @EFI_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %4
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = load i64*, i64** %8, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @MAX_UNCOMP_KERNEL_SIZE, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %52, i64* %5, align 8
  br label %142

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @efi_get_memory_map(i32* %55, %struct.efi_boot_memmap* %18)
  store i64 %56, i64* %16, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* @EFI_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @pr_efi_err(i32* %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %63 = load i64, i64* %16, align 8
  store i64 %63, i64* %5, align 8
  br label %142

64:                                               ; preds = %54
  store i64 0, i64* %17, align 8
  br label %65

65:                                               ; preds = %131, %64
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %13, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %135

69:                                               ; preds = %65
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %71 = bitcast %struct.TYPE_3__* %70 to i8*
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr i8, i8* %71, i64 %72
  %74 = bitcast i8* %73 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %19, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %20, align 8
  %78 = load i64, i64* %20, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %83 = mul i64 %81, %82
  %84 = add i64 %78, %83
  store i64 %84, i64* %21, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @MAX_UNCOMP_KERNEL_SIZE, align 8
  %88 = add i64 %86, %87
  %89 = icmp uge i64 %85, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %69
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %69
  br label %131

95:                                               ; preds = %90
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %128 [
    i32 132, label %99
    i32 131, label %99
    i32 130, label %100
    i32 129, label %127
    i32 128, label %127
  ]

99:                                               ; preds = %95, %95
  br label %131

100:                                              ; preds = %95
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @max(i64 %101, i64 %102)
  store i64 %103, i64* %20, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* @MAX_UNCOMP_KERNEL_SIZE, align 8
  %107 = add i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = call i64 @min(i64 %104, i32 %108)
  store i64 %109, i64* %21, align 8
  %110 = load i32, i32* @allocate_pages, align 4
  %111 = load i32, i32* @EFI_ALLOCATE_ADDRESS, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to %struct.TYPE_3__*
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* %20, align 8
  %116 = sub i64 %114, %115
  %117 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %118 = udiv i64 %116, %117
  %119 = call i64 (i32, %struct.TYPE_3__*, ...) @efi_call_early(i32 %110, %struct.TYPE_3__* %113, i32 128, i64 %118, i64* %20)
  store i64 %119, i64* %16, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* @EFI_SUCCESS, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %100
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @pr_efi_err(i32* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %137

126:                                              ; preds = %100
  br label %130

127:                                              ; preds = %95, %95
  br label %128

128:                                              ; preds = %95, %127
  %129 = load i64, i64* @EFI_OUT_OF_RESOURCES, align 8
  store i64 %129, i64* %16, align 8
  br label %137

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %99, %94
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %17, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %17, align 8
  br label %65

135:                                              ; preds = %65
  %136 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %136, i64* %16, align 8
  br label %137

137:                                              ; preds = %135, %128, %123
  %138 = load i32, i32* @free_pool, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %140 = call i64 (i32, %struct.TYPE_3__*, ...) @efi_call_early(i32 %138, %struct.TYPE_3__* %139)
  %141 = load i64, i64* %16, align 8
  store i64 %141, i64* %5, align 8
  br label %142

142:                                              ; preds = %137, %60, %47
  %143 = load i64, i64* %5, align 8
  ret i64 %143
}

declare dso_local i64 @efi_call_early(i32, %struct.TYPE_3__*, ...) #1

declare dso_local i64 @efi_get_memory_map(i32*, %struct.efi_boot_memmap*) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
