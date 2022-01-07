; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_setup_rb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_setup_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TAHITI_RB_BITMAP_WIDTH_PER_SH = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_0 = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_3 = common dso_local global i32 0, align 4
@RASTER_CONFIG_RB_MAP_2 = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32, i32)* @si_setup_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_setup_rb(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
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

15:                                               ; preds = %48, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @si_select_se_sh(%struct.radeon_device* %25, i32 %26, i32 %27)
  %29 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @si_get_rb_disabled(%struct.radeon_device* %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @TAHITI_RB_BITMAP_WIDTH_PER_SH, align 4
  %40 = mul nsw i32 %38, %39
  %41 = shl i32 %33, %40
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %20

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %53 = call i32 @si_select_se_sh(%struct.radeon_device* %52, i32 -1, i32 -1)
  store i32 1, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %72, %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %56, %57
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %54

75:                                               ; preds = %54
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %140, %75
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %143

85:                                               ; preds = %81
  %86 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @si_select_se_sh(%struct.radeon_device* %86, i32 %87, i32 -1)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %133, %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %136

93:                                               ; preds = %89
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, 3
  switch i32 %95, label %119 [
    i32 1, label %96
    i32 2, label %107
    i32 3, label %118
  ]

96:                                               ; preds = %93
  %97 = load i32, i32* @RASTER_CONFIG_RB_MAP_0, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = mul nsw i32 %102, 2
  %104 = shl i32 %97, %103
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %130

107:                                              ; preds = %93
  %108 = load i32, i32* @RASTER_CONFIG_RB_MAP_3, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %111, %112
  %114 = mul nsw i32 %113, 2
  %115 = shl i32 %108, %114
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %130

118:                                              ; preds = %93
  br label %119

119:                                              ; preds = %93, %118
  %120 = load i32, i32* @RASTER_CONFIG_RB_MAP_2, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = mul nsw i32 %125, 2
  %127 = shl i32 %120, %126
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %119, %107, %96
  %131 = load i32, i32* %14, align 4
  %132 = ashr i32 %131, 2
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %89

136:                                              ; preds = %89
  %137 = load i32, i32* @PA_SC_RASTER_CONFIG, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @WREG32(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %81

143:                                              ; preds = %81
  %144 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %145 = call i32 @si_select_se_sh(%struct.radeon_device* %144, i32 -1, i32 -1)
  ret void
}

declare dso_local i32 @si_select_se_sh(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @si_get_rb_disabled(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
