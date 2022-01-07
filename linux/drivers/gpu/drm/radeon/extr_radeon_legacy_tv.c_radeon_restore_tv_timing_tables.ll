; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_restore_tv_timing_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_legacy_tv.c_radeon_restore_tv_timing_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.radeon_encoder_tv_dac*, %struct.TYPE_3__ }
%struct.radeon_encoder_tv_dac = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i64*, i32 }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_TV_UV_ADR = common dso_local global i32 0, align 4
@MAX_H_CODE_TIMING_LEN = common dso_local global i32 0, align 4
@MAX_V_CODE_TIMING_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_encoder*)* @radeon_restore_tv_timing_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_restore_tv_timing_tables(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_encoder_tv_dac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %2, align 8
  %10 = load %struct.radeon_encoder*, %struct.radeon_encoder** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %4, align 8
  %17 = load %struct.radeon_encoder*, %struct.radeon_encoder** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %17, i32 0, i32 0
  %19 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %18, align 8
  store %struct.radeon_encoder_tv_dac* %19, %struct.radeon_encoder_tv_dac** %5, align 8
  %20 = load i32, i32* @RADEON_TV_UV_ADR, align 4
  %21 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @WREG32(i32 %20, i32 %24)
  %26 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @radeon_get_htiming_tables_addr(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %32 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @radeon_get_vtiming_tables_addr(i32 %34)
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %88, %1
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MAX_H_CODE_TIMING_LEN, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 14
  %51 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = or i32 %50, %60
  store i32 %61, i32* %8, align 4
  %62 = load %struct.radeon_encoder*, %struct.radeon_encoder** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @radeon_legacy_tv_write_fifo(%struct.radeon_encoder* %62, i32 %63, i32 %64)
  %66 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %67 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %40
  %76 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %77 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75, %40
  br label %93

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %6, align 4
  br label %36

93:                                               ; preds = %86, %36
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %146, %93
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MAX_V_CODE_TIMING_LEN, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %151

98:                                               ; preds = %94
  %99 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %100 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = shl i32 %108, 14
  %110 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %111 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = or i32 %109, %118
  store i32 %119, i32* %8, align 4
  %120 = load %struct.radeon_encoder*, %struct.radeon_encoder** %2, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @radeon_legacy_tv_write_fifo(%struct.radeon_encoder* %120, i32 %121, i32 %122)
  %124 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %125 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %98
  %134 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %5, align 8
  %135 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133, %98
  br label %151

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %94

151:                                              ; preds = %144, %94
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_get_htiming_tables_addr(i32) #1

declare dso_local i32 @radeon_get_vtiming_tables_addr(i32) #1

declare dso_local i32 @radeon_legacy_tv_write_fifo(%struct.radeon_encoder*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
