; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_setup_rb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_setup_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CHIP_HAWAII = common dso_local global i64 0, align 8
@HAWAII_RB_BITMAP_WIDTH_PER_SH = common dso_local global i32 0, align 4
@CIK_RB_BITMAP_WIDTH_PER_SH = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_3 = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_0 = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_2 = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @cik_setup_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_setup_rb(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %67, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @cik_select_se_sh(%struct.radeon_device* %25, i32 %26, i32 %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cik_get_rb_disabled(%struct.radeon_device* %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHIP_HAWAII, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @HAWAII_RB_BITMAP_WIDTH_PER_SH, align 4
  %46 = mul nsw i32 %44, %45
  %47 = shl i32 %39, %46
  %48 = load i32, i32* %13, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %62

50:                                               ; preds = %24
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @CIK_RB_BITMAP_WIDTH_PER_SH, align 4
  %58 = mul nsw i32 %56, %57
  %59 = shl i32 %51, %58
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %50, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %20

66:                                               ; preds = %20
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %15

70:                                               ; preds = %15
  %71 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %72 = call i32 @cik_select_se_sh(%struct.radeon_device* %71, i32 -1, i32 -1)
  store i32 1, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %91, %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %75, %76
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = load i32, i32* %12, align 4
  %90 = shl i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %73

94:                                               ; preds = %73
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %173, %94
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %176

104:                                              ; preds = %100
  %105 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @cik_select_se_sh(%struct.radeon_device* %105, i32 %106, i32 -1)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %166, %104
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %169

112:                                              ; preds = %108
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, 3
  switch i32 %114, label %152 [
    i32 0, label %115
    i32 1, label %129
    i32 2, label %140
    i32 3, label %151
  ]

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* @RASTER_CONFIG_RB_MAP_3, align 4
  %120 = call i32 @PKR_MAP(i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %128

123:                                              ; preds = %115
  %124 = load i32, i32* @RASTER_CONFIG_RB_MAP_0, align 4
  %125 = call i32 @PKR_MAP(i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %123, %118
  br label %163

129:                                              ; preds = %112
  %130 = load i32, i32* @RASTER_CONFIG_RB_MAP_0, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %133, %134
  %136 = mul nsw i32 %135, 2
  %137 = shl i32 %130, %136
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %163

140:                                              ; preds = %112
  %141 = load i32, i32* @RASTER_CONFIG_RB_MAP_3, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %144, %145
  %147 = mul nsw i32 %146, 2
  %148 = shl i32 %141, %147
  %149 = load i32, i32* %11, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %11, align 4
  br label %163

151:                                              ; preds = %112
  br label %152

152:                                              ; preds = %112, %151
  %153 = load i32, i32* @RASTER_CONFIG_RB_MAP_2, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %7, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %156, %157
  %159 = mul nsw i32 %158, 2
  %160 = shl i32 %153, %159
  %161 = load i32, i32* %11, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %152, %140, %129, %128
  %164 = load i32, i32* %14, align 4
  %165 = ashr i32 %164, 2
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %108

169:                                              ; preds = %108
  %170 = load i32, i32* @PA_SC_RASTER_CONFIG, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @WREG32(i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %100

176:                                              ; preds = %100
  %177 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %178 = call i32 @cik_select_se_sh(%struct.radeon_device* %177, i32 -1, i32 -1)
  ret void
}

declare dso_local i32 @cik_select_se_sh(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @cik_get_rb_disabled(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @PKR_MAP(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
