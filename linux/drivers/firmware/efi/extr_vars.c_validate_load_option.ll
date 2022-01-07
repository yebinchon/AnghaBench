; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_validate_load_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_vars.c_validate_load_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFI_VAR_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64)* @validate_load_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_load_option(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @EFI_VAR_NAME_LEN, align 4
  %16 = call i32 @ucs2_strnlen(i32* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %41, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 127
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  %37 = call i64 @hex_to_bin(i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30, %23
  store i32 1, i32* %5, align 4
  br label %91

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %18

44:                                               ; preds = %18
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 4
  %48 = icmp sgt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %91

50:                                               ; preds = %44
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %51, 8
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %91

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %57, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, 6
  %67 = call i32 @ucs2_strsize(i32* %64, i64 %66)
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %91

72:                                               ; preds = %54
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 6
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %9, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %91

81:                                               ; preds = %72
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @validate_device_path(i32* %82, i32 %83, i32* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %81, %80, %71, %53, %49, %39
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @ucs2_strnlen(i32*, i32) #1

declare dso_local i64 @hex_to_bin(i32) #1

declare dso_local i32 @ucs2_strsize(i32*, i64) #1

declare dso_local i32 @validate_device_path(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
