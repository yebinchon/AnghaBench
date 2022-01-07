; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_awg_utils.c_awg_generate_instr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_awg_utils.c_awg_generate_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_code_generation_params = type { i64, i64* }

@AWG_MAX_INST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"too many number of instructions\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AWG_MAX_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"instruction %d does not exist\0A\00", align 1
@AWG_OPCODE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, %struct.awg_code_generation_params*)* @awg_generate_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_generate_instr(i32 %0, i64 %1, i64 %2, i64 %3, %struct.awg_code_generation_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.awg_code_generation_params*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.awg_code_generation_params* %4, %struct.awg_code_generation_params** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i64, i64* %9, align 8
  %17 = shl i64 %16, 8
  %18 = and i64 %17, 511
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = shl i64 %19, 9
  %21 = and i64 %20, 767
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %15, align 8
  br label %23

23:                                               ; preds = %78, %5
  %24 = load i64, i64* %15, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %106

26:                                               ; preds = %23
  %27 = load i64, i64* %15, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %11, align 8
  %29 = getelementptr inbounds %struct.awg_code_generation_params, %struct.awg_code_generation_params* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AWG_MAX_INST, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %107

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  switch i32 %38, label %73 [
    i32 129, label %39
    i32 134, label %55
    i32 133, label %55
    i32 135, label %63
    i32 128, label %69
    i32 130, label %70
    i32 131, label %70
    i32 132, label %70
    i32 136, label %70
  ]

39:                                               ; preds = %37
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %15, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %107

47:                                               ; preds = %39
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 130, i32* %7, align 4
  br label %78

51:                                               ; preds = %47
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %52 = load i64, i64* @AWG_MAX_ARG, align 8
  %53 = load i64, i64* %8, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %78

55:                                               ; preds = %37, %37
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %107

59:                                               ; preds = %55
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %60 = load i64, i64* @AWG_MAX_ARG, align 8
  %61 = load i64, i64* %8, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %8, align 8
  br label %78

63:                                               ; preds = %37
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %64 = load i64, i64* %8, align 8
  %65 = or i64 %64, 64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* @AWG_MAX_ARG, align 8
  %67 = load i64, i64* %8, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %8, align 8
  br label %78

69:                                               ; preds = %37
  store i64 0, i64* %8, align 8
  br label %78

70:                                               ; preds = %37, %37, %37, %37
  %71 = load i64, i64* %8, align 8
  %72 = and i64 %71, 255
  store i64 %72, i64* %8, align 8
  br label %78

73:                                               ; preds = %37
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %107

78:                                               ; preds = %70, %69, %63, %59, %51, %50
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %13, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* %14, align 8
  %86 = add nsw i64 %84, %85
  store i64 %86, i64* %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @AWG_OPCODE_OFFSET, align 4
  %89 = shl i32 %87, %88
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %8, align 8
  %92 = or i64 %90, %91
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = and i64 %93, 16383
  %95 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %11, align 8
  %96 = getelementptr inbounds %struct.awg_code_generation_params, %struct.awg_code_generation_params* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %11, align 8
  %99 = getelementptr inbounds %struct.awg_code_generation_params, %struct.awg_code_generation_params* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  store i64 %94, i64* %101, align 8
  %102 = load %struct.awg_code_generation_params*, %struct.awg_code_generation_params** %11, align 8
  %103 = getelementptr inbounds %struct.awg_code_generation_params, %struct.awg_code_generation_params* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %23

106:                                              ; preds = %23
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %73, %58, %46, %33
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
