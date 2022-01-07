; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_generic_reg_get7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_generic_reg_get7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_reg_get7(%struct.dc_context* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32* %7, i32 %8, i32 %9, i32* %10, i32 %11, i32 %12, i32* %13, i32 %14, i32 %15, i32* %16, i32 %17, i32 %18, i32* %19, i32 %20, i32 %21, i32* %22) #0 {
  %24 = alloca %struct.dc_context*, align 8
  %25 = alloca i32, align 4
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
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32*, align 8
  %47 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %24, align 8
  store i32 %1, i32* %25, align 4
  store i32 %2, i32* %26, align 4
  store i32 %3, i32* %27, align 4
  store i32* %4, i32** %28, align 8
  store i32 %5, i32* %29, align 4
  store i32 %6, i32* %30, align 4
  store i32* %7, i32** %31, align 8
  store i32 %8, i32* %32, align 4
  store i32 %9, i32* %33, align 4
  store i32* %10, i32** %34, align 8
  store i32 %11, i32* %35, align 4
  store i32 %12, i32* %36, align 4
  store i32* %13, i32** %37, align 8
  store i32 %14, i32* %38, align 4
  store i32 %15, i32* %39, align 4
  store i32* %16, i32** %40, align 8
  store i32 %17, i32* %41, align 4
  store i32 %18, i32* %42, align 4
  store i32* %19, i32** %43, align 8
  store i32 %20, i32* %44, align 4
  store i32 %21, i32* %45, align 4
  store i32* %22, i32** %46, align 8
  %48 = load %struct.dc_context*, %struct.dc_context** %24, align 8
  %49 = load i32, i32* %25, align 4
  %50 = call i32 @dm_read_reg(%struct.dc_context* %48, i32 %49)
  store i32 %50, i32* %47, align 4
  %51 = load i32, i32* %47, align 4
  %52 = load i32, i32* %27, align 4
  %53 = load i32, i32* %26, align 4
  %54 = call i32 @get_reg_field_value_ex(i32 %51, i32 %52, i32 %53)
  %55 = load i32*, i32** %28, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %47, align 4
  %57 = load i32, i32* %30, align 4
  %58 = load i32, i32* %29, align 4
  %59 = call i32 @get_reg_field_value_ex(i32 %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %31, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %47, align 4
  %62 = load i32, i32* %33, align 4
  %63 = load i32, i32* %32, align 4
  %64 = call i32 @get_reg_field_value_ex(i32 %61, i32 %62, i32 %63)
  %65 = load i32*, i32** %34, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %47, align 4
  %67 = load i32, i32* %36, align 4
  %68 = load i32, i32* %35, align 4
  %69 = call i32 @get_reg_field_value_ex(i32 %66, i32 %67, i32 %68)
  %70 = load i32*, i32** %37, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %47, align 4
  %72 = load i32, i32* %39, align 4
  %73 = load i32, i32* %38, align 4
  %74 = call i32 @get_reg_field_value_ex(i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %40, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %47, align 4
  %77 = load i32, i32* %42, align 4
  %78 = load i32, i32* %41, align 4
  %79 = call i32 @get_reg_field_value_ex(i32 %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %43, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %47, align 4
  %82 = load i32, i32* %45, align 4
  %83 = load i32, i32* %44, align 4
  %84 = call i32 @get_reg_field_value_ex(i32 %81, i32 %82, i32 %83)
  %85 = load i32*, i32** %46, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %47, align 4
  ret i32 %86
}

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @get_reg_field_value_ex(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
