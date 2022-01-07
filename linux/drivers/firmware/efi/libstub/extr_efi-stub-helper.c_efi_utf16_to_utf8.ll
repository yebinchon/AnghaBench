; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_utf16_to_utf8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_efi-stub-helper.c_efi_utf16_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @efi_utf16_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @efi_utf16_to_utf8(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %96, %55, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %102

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %13, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = icmp uge i32 %19, 55296
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ule i32 %22, 56319
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 56320
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 57343
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 1023
  %35 = shl i32 %34, 10
  %36 = add i32 65536, %35
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1023
  %40 = add i32 %36, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %32, %28, %24, %21, %18, %12
  %46 = load i32, i32* %7, align 4
  %47 = icmp uge i32 %46, 55296
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp ule i32 %49, 57343
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 65533, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %48, %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp ult i32 %53, 128
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %8

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = icmp ult i32 %60, 2048
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = lshr i32 %63, 6
  %65 = add i32 192, %64
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %4, align 8
  store i32 %65, i32* %66, align 4
  br label %96

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp ult i32 %69, 65536
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = lshr i32 %72, 12
  %74 = add i32 224, %73
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  br label %89

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = lshr i32 %78, 18
  %80 = add i32 240, %79
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %4, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = lshr i32 %83, 12
  %85 = and i32 %84, 63
  %86 = add i32 128, %85
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %4, align 8
  store i32 %86, i32* %87, align 4
  br label %89

89:                                               ; preds = %77, %71
  %90 = load i32, i32* %7, align 4
  %91 = lshr i32 %90, 6
  %92 = and i32 %91, 63
  %93 = add i32 128, %92
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %4, align 8
  store i32 %93, i32* %94, align 4
  br label %96

96:                                               ; preds = %89, %62
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 63
  %99 = add i32 128, %98
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %4, align 8
  store i32 %99, i32* %100, align 4
  br label %8

102:                                              ; preds = %8
  %103 = load i32*, i32** %4, align 8
  ret i32* %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
