; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_afmt_write_sad_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_dce6_afmt.c_dce6_afmt_write_sad_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.cea_sad = type { i64, i32, i32, i32 }
%struct.radeon_encoder = type { %struct.radeon_encoder_atom_dig* }
%struct.radeon_encoder_atom_dig = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@dce6_afmt_write_sad_regs.eld_reg_to_type = internal constant [12 x [2 x i64]] [[2 x i64] [i64 151, i64 129], [2 x i64] [i64 150, i64 138], [2 x i64] [i64 146, i64 131], [2 x i64] [i64 145, i64 132], [2 x i64] [i64 144, i64 130], [2 x i64] [i64 143, i64 139], [2 x i64] [i64 142, i64 136], [2 x i64] [i64 141, i64 137], [2 x i64] [i64 140, i64 134], [2 x i64] [i64 149, i64 135], [2 x i64] [i64 148, i64 133], [2 x i64] [i64 147, i64 128]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce6_afmt_write_sad_regs(%struct.drm_encoder* %0, %struct.cea_sad* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.cea_sad*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cea_sad*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.cea_sad* %1, %struct.cea_sad** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %16)
  store %struct.radeon_encoder* %17, %struct.radeon_encoder** %8, align 8
  %18 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %18, i32 0, i32 0
  %20 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %19, align 8
  store %struct.radeon_encoder_atom_dig* %20, %struct.radeon_encoder_atom_dig** %9, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.radeon_device*, %struct.radeon_device** %24, align 8
  store %struct.radeon_device* %25, %struct.radeon_device** %10, align 8
  %26 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %27 = icmp ne %struct.radeon_encoder_atom_dig* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %28, %3
  br label %124

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %121, %39
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ARRAY_SIZE(i64** bitcast ([12 x [2 x i64]]* @dce6_afmt_write_sad_regs.eld_reg_to_type to i64**))
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %124

44:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %45
  %50 = load %struct.cea_sad*, %struct.cea_sad** %5, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %50, i64 %52
  store %struct.cea_sad* %53, %struct.cea_sad** %15, align 8
  %54 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %55 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [12 x [2 x i64]], [12 x [2 x i64]]* @dce6_afmt_write_sad_regs.eld_reg_to_type, i64 0, i64 %58
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %59, i64 0, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %56, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %49
  %64 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %65 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %71 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @MAX_CHANNELS(i32 %72)
  %74 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %75 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @DESCRIPTOR_BYTE_2(i32 %76)
  %78 = or i32 %73, %77
  %79 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %80 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @SUPPORTED_FREQUENCIES(i32 %81)
  %83 = or i32 %78, %82
  store i32 %83, i32* %11, align 4
  %84 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %85 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %69, %63
  %88 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %89 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 129
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.cea_sad*, %struct.cea_sad** %15, align 8
  %94 = getelementptr inbounds %struct.cea_sad, %struct.cea_sad* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %99

98:                                               ; preds = %87
  br label %104

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %49
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %45

104:                                              ; preds = %98, %45
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @SUPPORTED_FREQUENCIES_STEREO(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %9, align 8
  %110 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [12 x [2 x i64]], [12 x [2 x i64]]* @dce6_afmt_write_sad_regs.eld_reg_to_type, i64 0, i64 %115
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %116, i64 0, i64 0
  %118 = load i64, i64* %117, align 16
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @WREG32_ENDPOINT(i32 %113, i64 %118, i32 %119)
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %40

124:                                              ; preds = %38, %40
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

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
