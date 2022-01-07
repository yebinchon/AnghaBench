; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_parse_data_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_parse_data_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atom_parse_data_header(%struct.atom_context* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.atom_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.atom_context* %0, %struct.atom_context** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %17, 2
  %19 = add nsw i32 %18, 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.atom_context*, %struct.atom_context** %8, align 8
  %21 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i8* @CU16(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load %struct.atom_context*, %struct.atom_context** %8, align 8
  %28 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atom_context*, %struct.atom_context** %8, align 8
  %31 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = add nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %71

44:                                               ; preds = %6
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = call i8* @CU16(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i32 @CU8(i32 %57)
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32*, i32** %12, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 3
  %66 = call i32 @CU8(i32 %65)
  %67 = load i32*, i32** %12, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %13, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %7, align 4
  br label %71

71:                                               ; preds = %68, %43
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i8* @CU16(i32) #1

declare dso_local i32 @CU8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
