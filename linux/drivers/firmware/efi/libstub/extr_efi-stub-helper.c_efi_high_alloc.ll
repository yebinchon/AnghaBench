; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_high_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_high_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.efi_boot_memmap = type { i64*, i64*, i64*, i32*, i32*, %struct.TYPE_4__** }

@EFI_SUCCESS = common dso_local global i64 0, align 8
@EFI_ALLOC_ALIGN = common dso_local global i64 0, align 8
@EFI_PAGE_SIZE = common dso_local global i64 0, align 8
@EFI_CONVENTIONAL_MEMORY = common dso_local global i64 0, align 8
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@allocate_pages = common dso_local global i32 0, align 4
@EFI_ALLOCATE_ADDRESS = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_high_alloc(i32* %0, i64 %1, i64 %2, i64* %3, i64 %4) #0 {
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
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.efi_boot_memmap, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %17, align 8
  %24 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %19, i32 0, i32 5
  store %struct.TYPE_4__** %14, %struct.TYPE_4__*** %24, align 8
  %25 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %19, i32 0, i32 0
  store i64* %11, i64** %25, align 8
  %26 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %19, i32 0, i32 1
  store i64* %12, i64** %26, align 8
  %27 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %19, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %19, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds %struct.efi_boot_memmap, %struct.efi_boot_memmap* %19, i32 0, i32 2
  store i64* %13, i64** %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @efi_get_memory_map(i32* %30, %struct.efi_boot_memmap* %19)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* @EFI_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %153

36:                                               ; preds = %5
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @EFI_ALLOC_ALIGN, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* @EFI_ALLOC_ALIGN, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @EFI_ALLOC_ALIGN, align 8
  %45 = call i64 @round_up(i64 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %48 = udiv i64 %46, %47
  store i64 %48, i64* %16, align 8
  br label %49

49:                                               ; preds = %144, %42
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %125, %49
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = udiv i64 %53, %54
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %128

57:                                               ; preds = %50
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %59 = ptrtoint %struct.TYPE_4__* %58 to i64
  store i64 %59, i64* %21, align 8
  %60 = load i64, i64* %21, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %18, align 4
  %63 = call %struct.TYPE_4__* @efi_early_memdesc_ptr(i64 %60, i64 %61, i32 %62)
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** %20, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EFI_CONVENTIONAL_MEMORY, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %125

70:                                               ; preds = %57
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %125

77:                                               ; preds = %70
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %22, align 8
  %81 = load i64, i64* %22, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %86 = mul i64 %84, %85
  %87 = add i64 %81, %86
  store i64 %87, i64* %23, align 8
  %88 = load i64, i64* %23, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %23, align 8
  br label %93

93:                                               ; preds = %91, %77
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %94, %95
  %97 = load i64, i64* %23, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %125

100:                                              ; preds = %93
  %101 = load i64, i64* %23, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub i64 %101, %102
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @round_down(i64 %103, i64 %104)
  %106 = load i64, i64* %22, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %125

109:                                              ; preds = %100
  %110 = load i64, i64* %23, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %110, %111
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @round_down(i64 %112, i64 %113)
  store i64 %114, i64* %22, align 8
  %115 = load i64, i64* %22, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %125

118:                                              ; preds = %109
  %119 = load i64, i64* %22, align 8
  %120 = load i64, i64* %17, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i64, i64* %22, align 8
  store i64 %123, i64* %17, align 8
  br label %124

124:                                              ; preds = %122, %118
  br label %125

125:                                              ; preds = %124, %117, %108, %99, %76, %69
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %18, align 4
  br label %50

128:                                              ; preds = %50
  %129 = load i64, i64* %17, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* @EFI_NOT_FOUND, align 8
  store i64 %132, i64* %15, align 8
  br label %149

133:                                              ; preds = %128
  %134 = load i32, i32* @allocate_pages, align 4
  %135 = load i32, i32* @EFI_ALLOCATE_ADDRESS, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to %struct.TYPE_4__*
  %138 = load i32, i32* @EFI_LOADER_DATA, align 4
  %139 = load i64, i64* %16, align 8
  %140 = call i64 (i32, %struct.TYPE_4__*, ...) @efi_call_early(i32 %134, %struct.TYPE_4__* %137, i32 %138, i64 %139, i64* %17)
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* @EFI_SUCCESS, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %133
  %145 = load i64, i64* %17, align 8
  store i64 %145, i64* %10, align 8
  store i64 0, i64* %17, align 8
  br label %49

146:                                              ; preds = %133
  %147 = load i64, i64* %17, align 8
  %148 = load i64*, i64** %9, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %131
  %150 = load i32, i32* @free_pool, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %152 = call i64 (i32, %struct.TYPE_4__*, ...) @efi_call_early(i32 %150, %struct.TYPE_4__* %151)
  br label %153

153:                                              ; preds = %149, %35
  %154 = load i64, i64* %15, align 8
  ret i64 %154
}

declare dso_local i64 @efi_get_memory_map(i32*, %struct.efi_boot_memmap*) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local %struct.TYPE_4__* @efi_early_memdesc_ptr(i64, i64, i32) #1

declare dso_local i64 @round_down(i64, i64) #1

declare dso_local i64 @efi_call_early(i32, %struct.TYPE_4__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
