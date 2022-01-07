; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_copy_cursor_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vboxvideo/extr_vbox_mode.c_copy_cursor_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i64)* @copy_cursor_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_cursor_image(i32* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 7
  %16 = sdiv i32 %15, 8
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  %25 = mul nsw i32 %24, 4
  %26 = call i32 @memcpy(i32* %20, i32* %21, i32 %25)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %68, %5
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ugt i32 %45, -268435456
  br i1 %46, label %47, label %63

47:                                               ; preds = %36
  %48 = load i32, i32* %13, align 4
  %49 = srem i32 %48, 8
  %50 = ashr i32 128, %49
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %11, align 8
  %55 = mul i64 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = sdiv i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = add i64 %55, %58
  %60 = getelementptr inbounds i32, i32* %51, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %50
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %47, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %32

67:                                               ; preds = %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %27

71:                                               ; preds = %27
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
