; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm64-stub.c_handle_kernel_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm64-stub.c_handle_kernel_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_RANDOMIZE_BASE = common dso_local global i32 0, align 4
@EFI_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"EFI_RNG_PROTOCOL unavailable, no randomness supplied\0A\00", align 1
@EFI_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"efi_get_random_bytes() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"KASLR disabled on kernel command line\0A\00", align 1
@MIN_KIMG_ALIGN = common dso_local global i64 0, align 8
@TEXT_OFFSET = common dso_local global i32 0, align 4
@_edata = common dso_local global i64 0, align 8
@_text = common dso_local global i64 0, align 8
@_end = common dso_local global i64 0, align 8
@EFI_KIMG_ALIGN = common dso_local global i32 0, align 4
@CONFIG_DEBUG_ALIGN_RODATA = common dso_local global i32 0, align 4
@EFI_ALLOC_ALIGN = common dso_local global i32 0, align 4
@allocate_pages = common dso_local global i32 0, align 4
@EFI_ALLOCATE_ADDRESS = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to relocate kernel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @handle_kernel_image(i32* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %18, align 8
  %24 = load i64*, i64** %10, align 8
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %19, align 8
  store i32 0, i32* %21, align 4
  %27 = load i32, i32* @CONFIG_RANDOMIZE_BASE, align 4
  %28 = call i64 @IS_ENABLED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %7
  %31 = call i32 (...) @nokaslr()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @efi_get_random_bytes(i32* %34, i32 4, i32* %21)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @EFI_NOT_FOUND, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @pr_efi(i32* %40, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %51

42:                                               ; preds = %33
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* @EFI_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @pr_efi_err(i32* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* %16, align 8
  store i64 %49, i64* %8, align 8
  br label %193

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %39
  br label %55

52:                                               ; preds = %30
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @pr_efi(i32* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %51
  br label %56

56:                                               ; preds = %55, %7
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @MIN_KIMG_ALIGN, align 8
  %59 = call i32 @round_down(i64 %57, i64 %58)
  %60 = load i32, i32* @TEXT_OFFSET, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %20, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i64, i64* @MIN_KIMG_ALIGN, align 8
  %68 = load i64, i64* %20, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %20, align 8
  br label %70

70:                                               ; preds = %66, %56
  %71 = load i64, i64* @_edata, align 8
  %72 = load i64, i64* @_text, align 8
  %73 = sub i64 %71, %72
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* @_end, align 8
  %76 = load i64, i64* @_edata, align 8
  %77 = sub i64 %75, %76
  %78 = add i64 %74, %77
  store i64 %78, i64* %18, align 8
  %79 = load i32, i32* @CONFIG_RANDOMIZE_BASE, align 4
  %80 = call i64 @IS_ENABLED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %129

82:                                               ; preds = %70
  %83 = load i32, i32* %21, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %82
  %86 = load i64, i64* @MIN_KIMG_ALIGN, align 8
  %87 = sub i64 %86, 1
  %88 = load i32, i32* @EFI_KIMG_ALIGN, align 4
  %89 = sub nsw i32 %88, 1
  %90 = xor i32 %89, -1
  %91 = sext i32 %90 to i64
  %92 = and i64 %87, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* @CONFIG_DEBUG_ALIGN_RODATA, align 4
  %95 = call i64 @IS_ENABLED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %21, align 4
  %99 = ashr i32 %98, 32
  %100 = load i32, i32* %22, align 4
  %101 = and i32 %99, %100
  br label %104

102:                                              ; preds = %85
  %103 = load i32, i32* @TEXT_OFFSET, align 4
  br label %104

104:                                              ; preds = %102, %97
  %105 = phi i32 [ %101, %97 ], [ %103, %102 ]
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* @TEXT_OFFSET, align 4
  %107 = load i32, i32* @EFI_KIMG_ALIGN, align 4
  %108 = srem i32 %106, %107
  %109 = load i32, i32* %23, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %23, align 4
  %111 = load i64, i64* %18, align 8
  %112 = load i32, i32* %23, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  %115 = load i64*, i64** %13, align 8
  store i64 %114, i64* %115, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i64*, i64** %13, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MIN_KIMG_ALIGN, align 8
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %21, align 4
  %122 = call i64 @efi_random_alloc(i32* %116, i64 %118, i64 %119, i64* %120, i32 %121)
  store i64 %122, i64* %16, align 8
  %123 = load i64*, i64** %12, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %124, %126
  %128 = load i64*, i64** %10, align 8
  store i64 %127, i64* %128, align 8
  br label %154

129:                                              ; preds = %82, %70
  %130 = load i64*, i64** %10, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %20, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %135, i64* %8, align 8
  br label %193

136:                                              ; preds = %129
  %137 = load i64, i64* %20, align 8
  %138 = load i64*, i64** %12, align 8
  store i64 %137, i64* %138, align 8
  %139 = load i64*, i64** %10, align 8
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load i32, i32* @EFI_ALLOC_ALIGN, align 4
  %142 = call i64 @round_up(i64 %140, i32 %141)
  %143 = load i64*, i64** %13, align 8
  store i64 %142, i64* %143, align 8
  %144 = load i32, i32* @allocate_pages, align 4
  %145 = load i32, i32* @EFI_ALLOCATE_ADDRESS, align 4
  %146 = load i32, i32* @EFI_LOADER_DATA, align 4
  %147 = load i64*, i64** %13, align 8
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @EFI_PAGE_SIZE, align 8
  %150 = udiv i64 %148, %149
  %151 = load i64*, i64** %12, align 8
  %152 = bitcast i64* %151 to i32*
  %153 = call i64 @efi_call_early(i32 %144, i32 %145, i32 %146, i64 %150, i32* %152)
  store i64 %153, i64* %16, align 8
  br label %154

154:                                              ; preds = %136, %104
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* @EFI_SUCCESS, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = load i64, i64* %18, align 8
  %160 = load i32, i32* @TEXT_OFFSET, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 %159, %161
  %163 = load i64*, i64** %13, align 8
  store i64 %162, i64* %163, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = load i64*, i64** %13, align 8
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MIN_KIMG_ALIGN, align 8
  %168 = load i64*, i64** %12, align 8
  %169 = call i64 @efi_low_alloc(i32* %164, i64 %166, i64 %167, i64* %168)
  store i64 %169, i64* %16, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* @EFI_SUCCESS, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %158
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @pr_efi_err(i32* %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i64*, i64** %13, align 8
  store i64 0, i64* %176, align 8
  %177 = load i64, i64* %16, align 8
  store i64 %177, i64* %8, align 8
  br label %193

178:                                              ; preds = %158
  %179 = load i64*, i64** %12, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @TEXT_OFFSET, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %180, %182
  %184 = load i64*, i64** %10, align 8
  store i64 %183, i64* %184, align 8
  br label %185

185:                                              ; preds = %178, %154
  %186 = load i64*, i64** %10, align 8
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to i8*
  %189 = load i8*, i8** %19, align 8
  %190 = load i64, i64* %17, align 8
  %191 = call i32 @memcpy(i8* %188, i8* %189, i64 %190)
  %192 = load i64, i64* @EFI_SUCCESS, align 8
  store i64 %192, i64* %8, align 8
  br label %193

193:                                              ; preds = %185, %173, %134, %46
  %194 = load i64, i64* %8, align 8
  ret i64 %194
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @nokaslr(...) #1

declare dso_local i64 @efi_get_random_bytes(i32*, i32, i32*) #1

declare dso_local i32 @pr_efi(i32*, i8*) #1

declare dso_local i32 @pr_efi_err(i32*, i8*) #1

declare dso_local i32 @round_down(i64, i64) #1

declare dso_local i64 @efi_random_alloc(i32*, i64, i64, i64*, i32) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @efi_call_early(i32, i32, i32, i64, i32*) #1

declare dso_local i64 @efi_low_alloc(i32*, i64, i64, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
