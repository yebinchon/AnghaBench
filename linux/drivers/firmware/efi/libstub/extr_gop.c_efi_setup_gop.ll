; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c_efi_setup_gop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c_efi_setup_gop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_info = type { i32 }

@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@locate_handle = common dso_local global i32 0, align 4
@EFI_LOCATE_BY_PROTOCOL = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @efi_setup_gop(i32* %0, %struct.screen_info* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.screen_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  store i32* %0, i32** %6, align 8
  store %struct.screen_info* %1, %struct.screen_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** null, i8*** %11, align 8
  %12 = load i32, i32* @allocate_pool, align 4
  %13 = load i32, i32* @EFI_LOADER_DATA, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8**
  %16 = load i64, i64* %9, align 8
  %17 = bitcast i8*** %11 to i8**
  %18 = call i64 (i32, i8**, ...) @efi_call_early(i32 %12, i8** %15, i64 %16, i8** %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @EFI_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %5, align 8
  br label %59

24:                                               ; preds = %4
  %25 = load i32, i32* @locate_handle, align 4
  %26 = load i32, i32* @EFI_LOCATE_BY_PROTOCOL, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8**
  %29 = load i32*, i32** %8, align 8
  %30 = load i8**, i8*** %11, align 8
  %31 = call i64 (i32, i8**, ...) @efi_call_early(i32 %25, i8** %28, i32* %29, i8* null, i64* %9, i8** %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @EFI_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %54

36:                                               ; preds = %24
  %37 = call i64 (...) @efi_is_64bit()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i8**, i8*** %11, align 8
  %45 = call i64 @setup_gop64(i32* %40, %struct.screen_info* %41, i32* %42, i64 %43, i8** %44)
  store i64 %45, i64* %10, align 8
  br label %53

46:                                               ; preds = %36
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.screen_info*, %struct.screen_info** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i8**, i8*** %11, align 8
  %52 = call i64 @setup_gop32(i32* %47, %struct.screen_info* %48, i32* %49, i64 %50, i8** %51)
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %46, %39
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32, i32* @free_pool, align 4
  %56 = load i8**, i8*** %11, align 8
  %57 = call i64 (i32, i8**, ...) @efi_call_early(i32 %55, i8** %56)
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %54, %22
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i64 @efi_call_early(i32, i8**, ...) #1

declare dso_local i64 @efi_is_64bit(...) #1

declare dso_local i64 @setup_gop64(i32*, %struct.screen_info*, i32*, i64, i8**) #1

declare dso_local i64 @setup_gop32(i32*, %struct.screen_info*, i32*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
