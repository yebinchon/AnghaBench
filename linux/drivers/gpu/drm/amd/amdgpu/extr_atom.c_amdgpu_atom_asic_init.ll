; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_asic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atom.c_amdgpu_atom_asic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i64, i64 }

@ATOM_DATA_FWI_PTR = common dso_local global i64 0, align 8
@ATOM_FWI_DEFSCLK_PTR = common dso_local global i64 0, align 8
@ATOM_FWI_DEFMCLK_PTR = common dso_local global i64 0, align 8
@ATOM_CMD_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atom_asic_init(%struct.atom_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atom_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %3, align 8
  %7 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %8 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ATOM_DATA_FWI_PTR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @CU16(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 64)
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @ATOM_FWI_DEFSCLK_PTR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @CU32(i64 %18)
  %20 = call i32 @cpu_to_le32(i32 %19)
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @ATOM_FWI_DEFMCLK_PTR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @CU32(i64 %25)
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %1
  store i32 1, i32* %2, align 4
  br label %62

37:                                               ; preds = %32
  %38 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %39 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 4
  %42 = load i32, i32* @ATOM_CMD_INIT, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @CU16(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 1, i32* %2, align 4
  br label %62

49:                                               ; preds = %37
  %50 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %51 = load i32, i32* @ATOM_CMD_INIT, align 4
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %53 = call i32 @amdgpu_atom_execute_table(%struct.atom_context* %50, i32 %51, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %49
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %60 = call i32 @memset(i32* %59, i32 0, i32 64)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %56, %48, %36
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @CU16(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @CU32(i64) #1

declare dso_local i32 @amdgpu_atom_execute_table(%struct.atom_context*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
