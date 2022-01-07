; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_get_memory_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_get_memory_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_boot_memmap = type { i32*, i32*, i32*, i64*, i32**, i32* }

@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@get_memory_map = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@free_pool = common dso_local global i32 0, align 4
@EFI_MMAP_NR_SLACK_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_get_memory_map(i32* %0, %struct.efi_boot_memmap* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.efi_boot_memmap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.efi_boot_memmap* %1, %struct.efi_boot_memmap** %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %10 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32 4, i32* %11, align 4
  %12 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %13 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 32
  %17 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %18 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32 %16, i32* %19, align 4
  %20 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %21 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %25 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %73, %2
  %28 = load i32, i32* @allocate_pool, align 4
  %29 = load i32, i32* @EFI_LOADER_DATA, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %33 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %34, align 4
  %36 = bitcast i32** %5 to i8**
  %37 = call i64 (i32, i32*, ...) @efi_call_early(i32 %28, i32* %31, i32 %35, i8** %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @EFI_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %132

42:                                               ; preds = %27
  %43 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %44 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32 0, i32* %45, align 4
  store i64 0, i64* %7, align 8
  %46 = load i32, i32* @get_memory_map, align 4
  %47 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %48 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %52 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 (i32, i32*, ...) @efi_call_early(i32 %46, i32* %49, i32* %50, i64* %7, i32* %53, i32* %8)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %73, label %58

58:                                               ; preds = %42
  %59 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %60 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %64 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %68 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mmap_has_headroom(i32 %62, i32 %66, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %58, %42
  %74 = load i32, i32* @free_pool, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = call i64 (i32, i32*, ...) @efi_call_early(i32 %74, i32* %75)
  %77 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %78 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @EFI_MMAP_NR_SLACK_SLOTS, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %84 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %89 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %93 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  store i32 %91, i32* %94, align 4
  br label %27

95:                                               ; preds = %58
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @EFI_SUCCESS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @free_pool, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = call i64 (i32, i32*, ...) @efi_call_early(i32 %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %105 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @EFI_SUCCESS, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i64, i64* %7, align 8
  %114 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %115 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %114, i32 0, i32 3
  %116 = load i64*, i64** %115, align 8
  store i64 %113, i64* %116, align 8
  br label %117

117:                                              ; preds = %112, %108, %103
  %118 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %119 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @EFI_SUCCESS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %129 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %122, %117
  br label %132

132:                                              ; preds = %131, %41
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.efi_boot_memmap*, %struct.efi_boot_memmap** %4, align 8
  %135 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %134, i32 0, i32 4
  %136 = load i32**, i32*** %135, align 8
  store i32* %133, i32** %136, align 8
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local i64 @efi_call_early(i32, i32*, ...) #1

declare dso_local i32 @mmap_has_headroom(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
