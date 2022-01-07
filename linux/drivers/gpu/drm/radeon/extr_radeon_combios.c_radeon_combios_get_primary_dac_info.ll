; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_primary_dac_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_primary_dac_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_primary_dac = type { i32 }
%struct.radeon_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__*, %struct.radeon_device* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.radeon_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@COMBIOS_CRT_INFO_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_encoder_primary_dac* @radeon_combios_get_primary_dac_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_primary_dac*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.radeon_encoder_primary_dac*, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %12 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  store %struct.radeon_device* %18, %struct.radeon_device** %5, align 8
  store %struct.radeon_encoder_primary_dac* null, %struct.radeon_encoder_primary_dac** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.radeon_encoder_primary_dac* @kzalloc(i32 4, i32 %19)
  store %struct.radeon_encoder_primary_dac* %20, %struct.radeon_encoder_primary_dac** %10, align 8
  %21 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %10, align 8
  %22 = icmp ne %struct.radeon_encoder_primary_dac* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store %struct.radeon_encoder_primary_dac* null, %struct.radeon_encoder_primary_dac** %2, align 8
  br label %128

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load i32, i32* @COMBIOS_CRT_INFO_TABLE, align 4
  %27 = call i64 @combios_get_table_offset(%struct.drm_device* %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @RBIOS8(i64 %31)
  %33 = and i32 %32, 3
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 2
  %39 = call i32 @RBIOS8(i64 %38)
  %40 = and i32 %39, 15
  store i32 %40, i32* %8, align 4
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 2
  %43 = call i32 @RBIOS8(i64 %42)
  %44 = ashr i32 %43, 4
  %45 = and i32 %44, 15
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %10, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder_primary_dac, %struct.radeon_encoder_primary_dac* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %67

52:                                               ; preds = %30
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 2
  %55 = call i32 @RBIOS8(i64 %54)
  %56 = and i32 %55, 15
  store i32 %56, i32* %8, align 4
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, 3
  %59 = call i32 @RBIOS8(i64 %58)
  %60 = and i32 %59, 15
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %10, align 8
  %66 = getelementptr inbounds %struct.radeon_encoder_primary_dac, %struct.radeon_encoder_primary_dac* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %52, %36
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i32 0, i32* %11, align 4
  br label %75

74:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %74, %73
  br label %76

76:                                               ; preds = %75, %24
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 20825
  br i1 %82, label %83, label %97

83:                                               ; preds = %76
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 5963
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 31784
  br i1 %96, label %118, label %97

97:                                               ; preds = %90, %83, %76
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 20813
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 5963
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 29001
  br i1 %117, label %118, label %119

118:                                              ; preds = %111, %90
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %111, %104, %97
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %124 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %10, align 8
  %125 = call i32 @radeon_legacy_get_primary_dac_info_from_table(%struct.radeon_device* %123, %struct.radeon_encoder_primary_dac* %124)
  br label %126

126:                                              ; preds = %122, %119
  %127 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %10, align 8
  store %struct.radeon_encoder_primary_dac* %127, %struct.radeon_encoder_primary_dac** %2, align 8
  br label %128

128:                                              ; preds = %126, %23
  %129 = load %struct.radeon_encoder_primary_dac*, %struct.radeon_encoder_primary_dac** %2, align 8
  ret %struct.radeon_encoder_primary_dac* %129
}

declare dso_local %struct.radeon_encoder_primary_dac* @kzalloc(i32, i32) #1

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i32 @radeon_legacy_get_primary_dac_info_from_table(%struct.radeon_device*, %struct.radeon_encoder_primary_dac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
