; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_asic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atom.c_atom_asic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atom_context = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i64 }

@ATOM_DATA_FWI_PTR = common dso_local global i64 0, align 8
@ATOM_FWI_DEFSCLK_PTR = common dso_local global i64 0, align 8
@ATOM_FWI_DEFMCLK_PTR = common dso_local global i64 0, align 8
@ATOM_CMD_INIT = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@ATOM_CMD_SPDFANCNTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atom_asic_init(%struct.atom_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atom_context*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.atom_context* %0, %struct.atom_context** %3, align 8
  %8 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %9 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %4, align 8
  %15 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %16 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ATOM_DATA_FWI_PTR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @CU16(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 64)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @ATOM_FWI_DEFSCLK_PTR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @CU32(i64 %26)
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @ATOM_FWI_DEFMCLK_PTR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @CU32(i64 %33)
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %1
  store i32 1, i32* %2, align 4
  br label %93

45:                                               ; preds = %40
  %46 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %47 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 4
  %50 = load i32, i32* @ATOM_CMD_INIT, align 4
  %51 = mul nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i32 @CU16(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %93

57:                                               ; preds = %45
  %58 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %59 = load i32, i32* @ATOM_CMD_INIT, align 4
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %61 = call i32 @atom_execute_table(%struct.atom_context* %58, i32 %59, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %93

66:                                               ; preds = %57
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %68 = call i32 @memset(i32* %67, i32 0, i32 64)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CHIP_R600, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %66
  %75 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %76 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 4
  %79 = load i32, i32* @ATOM_CMD_SPDFANCNTL, align 4
  %80 = mul nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = call i32 @CU16(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %87 = load i32, i32* @ATOM_CMD_SPDFANCNTL, align 4
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %89 = call i32 @atom_execute_table(%struct.atom_context* %86, i32 %87, i32* %88)
  br label %90

90:                                               ; preds = %85, %74
  br label %91

91:                                               ; preds = %90, %66
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %64, %56, %44
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @CU16(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @CU32(i64) #1

declare dso_local i32 @atom_execute_table(%struct.atom_context*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
