; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_efivar_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 (i32*, i32, i8*, i64)*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@variable_validate = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_validate(i32 %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @ucs2_utf8size(i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = add i64 %17, 1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i64 %18, i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %97

24:                                               ; preds = %4
  %25 = load i8*, i8** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @ucs2_as_utf8(i8* %25, i32* %26, i64 %27)
  %29 = load i8*, i8** %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %31, align 1
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %91, %24
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @variable_validate, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %32
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @variable_validate, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @variable_validate, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @efi_guidcmp(i32 %50, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %91

60:                                               ; preds = %43
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add i64 %62, 1
  %64 = load i8*, i8** %13, align 8
  %65 = call i64 @variable_matches(i8* %61, i64 %63, i8* %64, i32* %14)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @variable_validate, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (i32*, i32, i8*, i64)*, i32 (i32*, i32, i8*, i64)** %72, align 8
  %74 = icmp eq i32 (i32*, i32, i8*, i64)* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %94

76:                                               ; preds = %67
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @kfree(i8* %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @variable_validate, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (i32*, i32, i8*, i64)*, i32 (i32*, i32, i8*, i64)** %83, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 %84(i32* %85, i32 %86, i8* %87, i64 %88)
  store i32 %89, i32* %5, align 4
  br label %97

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %32

94:                                               ; preds = %75, %32
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @kfree(i8* %95)
  store i32 1, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %76, %23
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @ucs2_utf8size(i32*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @ucs2_as_utf8(i8*, i32*, i64) #1

declare dso_local i64 @efi_guidcmp(i32, i32) #1

declare dso_local i64 @variable_matches(i8*, i64, i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
