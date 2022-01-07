; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_afmt_write_sad_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce3_1_afmt.c_dce3_2_afmt_write_sad_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.cea_sad = type { i64, i32, i32, i32 }

@dce3_2_afmt_write_sad_regs.eld_reg_to_type = internal constant [12 x [2 x i64]] [[2 x i64] [i64 151, i64 129], [2 x i64] [i64 150, i64 138], [2 x i64] [i64 146, i64 131], [2 x i64] [i64 145, i64 132], [2 x i64] [i64 144, i64 130], [2 x i64] [i64 143, i64 139], [2 x i64] [i64 142, i64 136], [2 x i64] [i64 141, i64 137], [2 x i64] [i64 140, i64 134], [2 x i64] [i64 149, i64 135], [2 x i64] [i64 148, i64 133], [2 x i64] [i64 147, i64 128]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce3_2_afmt_write_sad_regs(%struct.drm_encoder* %0, %struct.cea_sad* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.cea_sad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cea_sad*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.cea_sad* %1, %struct.cea_sad** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %8, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %95, %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ARRAY_SIZE(i64** bitcast ([12 x [2 x i64]]* @dce3_2_afmt_write_sad_regs.eld_reg_to_type to i64**))
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %98

23:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %80, %23
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %29, i64 %31
  store %struct.cea_sad* %32, %struct.cea_sad** %13, align 8
  %33 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %34 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [12 x [2 x i64]], [12 x [2 x i64]]* @dce3_2_afmt_write_sad_regs.eld_reg_to_type, i64 0, i64 %37
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %38, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %28
  %43 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %44 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %50 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MAX_CHANNELS(i32 %51)
  %53 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %54 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @DESCRIPTOR_BYTE_2(i32 %55)
  %57 = or i32 %52, %56
  %58 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %59 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SUPPORTED_FREQUENCIES(i32 %60)
  %62 = or i32 %57, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %64 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %48, %42
  %67 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %68 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 129
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.cea_sad*, %struct.cea_sad** %13, align 8
  %73 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %78

77:                                               ; preds = %66
  br label %83

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %28
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %24

83:                                               ; preds = %77, %24
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @SUPPORTED_FREQUENCIES_STEREO(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [12 x [2 x i64]], [12 x [2 x i64]]* @dce3_2_afmt_write_sad_regs.eld_reg_to_type, i64 0, i64 %89
  %91 = getelementptr inbounds [2 x i64], [2 x i64]* %90, i64 0, i64 0
  %92 = load i64, i64* %91, align 16
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @WREG32_ENDPOINT(i32 0, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %19

98:                                               ; preds = %19
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @MAX_CHANNELS(i32) #1

declare dso_local i32 @DESCRIPTOR_BYTE_2(i32) #1

declare dso_local i32 @SUPPORTED_FREQUENCIES(i32) #1

declare dso_local i32 @SUPPORTED_FREQUENCIES_STEREO(i32) #1

declare dso_local i32 @WREG32_ENDPOINT(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
