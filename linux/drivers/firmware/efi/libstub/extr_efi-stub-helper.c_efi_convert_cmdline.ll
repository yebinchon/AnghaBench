; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_convert_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_convert_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@MAX_CMDLINE_ADDRESS = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @efi_convert_cmdline(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8 0, i8* %16, align 1
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %3
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %44, %26
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 10
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %33, %28
  %43 = phi i1 [ false, %33 ], [ false, %28 ], [ %41, %38 ]
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  %49 = call i64 @efi_utf8_bytes(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %28

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %3
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i8* %16, i8** %12, align 8
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @MAX_CMDLINE_ADDRESS, align 4
  %67 = call i64 @efi_high_alloc(i32* %64, i32 %65, i32 0, i64* %10, i32 %66)
  store i64 %67, i64* %15, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i64, i64* @EFI_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i8* null, i8** %4, align 8
  br label %85

72:                                               ; preds = %61
  %73 = load i64, i64* %10, align 8
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %12, align 8
  store i8* %75, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i8* @efi_utf16_to_utf8(i8* %76, i8* %77, i32 %78)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* %10, align 8
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %4, align 8
  br label %85

85:                                               ; preds = %72, %71
  %86 = load i8*, i8** %4, align 8
  ret i8* %86
}

declare dso_local i64 @efi_utf8_bytes(i32) #1

declare dso_local i64 @efi_high_alloc(i32*, i32, i32, i64*, i32) #1

declare dso_local i8* @efi_utf16_to_utf8(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
