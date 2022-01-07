; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_generic_reg_get5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_generic_reg_get5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_reg_get5(%struct.dc_context* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9, i32* %10, i32 %11, i32 %12, i32* %13, i32 %14, i32 %15, i32* %16) #0 {
  %18 = alloca %struct.dc_context*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %18, align 8
  store i32 %1, i32* %19, align 4
  store i32 %2, i32* %20, align 4
  store i32 %3, i32* %21, align 4
  store i32* %4, i32** %22, align 8
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32* %7, i32** %25, align 8
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32* %10, i32** %28, align 8
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32* %13, i32** %31, align 8
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  store i32* %16, i32** %34, align 8
  %36 = load %struct.dc_context*, %struct.dc_context** %18, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @dm_read_reg(%struct.dc_context* %36, i32 %37)
  store i32 %38, i32* %35, align 4
  %39 = load i32, i32* %35, align 4
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %20, align 4
  %42 = call i32 @get_reg_field_value_ex(i32 %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %22, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %35, align 4
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %23, align 4
  %47 = call i32 @get_reg_field_value_ex(i32 %44, i32 %45, i32 %46)
  %48 = load i32*, i32** %25, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %35, align 4
  %50 = load i32, i32* %27, align 4
  %51 = load i32, i32* %26, align 4
  %52 = call i32 @get_reg_field_value_ex(i32 %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %28, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %35, align 4
  %55 = load i32, i32* %30, align 4
  %56 = load i32, i32* %29, align 4
  %57 = call i32 @get_reg_field_value_ex(i32 %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %31, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %35, align 4
  %60 = load i32, i32* %33, align 4
  %61 = load i32, i32* %32, align 4
  %62 = call i32 @get_reg_field_value_ex(i32 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %34, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %35, align 4
  ret i32 %64
}

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @get_reg_field_value_ex(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
