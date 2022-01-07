; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_adjust_tile_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_adjust_tile_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32, i32, i32)* @intel_adjust_tile_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_adjust_tile_offset(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* %11, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %13, align 4
  %24 = sub i32 %23, 1
  %25 = and i32 %22, %24
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sub i32 %28, 1
  %30 = and i32 %27, %29
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ugt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = sub i32 %37, %38
  %40 = load i32, i32* %13, align 4
  %41 = udiv i32 %39, %40
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %14, align 4
  %44 = udiv i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = mul i32 %44, %45
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %14, align 4
  %52 = urem i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = mul i32 %52, %53
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %17, align 4
  %61 = udiv i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = mul i32 %61, %62
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %63
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = urem i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %16, align 4
  ret i32 %71
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
