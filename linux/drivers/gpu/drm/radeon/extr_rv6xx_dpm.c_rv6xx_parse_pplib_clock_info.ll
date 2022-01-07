; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_parse_pplib_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_parse_pplib_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.radeon_ps = type { i32 }
%union.pplib_clock_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.rv6xx_ps = type { %struct.rv6xx_pl, %struct.rv6xx_pl, %struct.rv6xx_pl }
%struct.rv6xx_pl = type { i32, i32, i32, i32 }

@ATOM_PPLIB_R600_FLAGS_PCIEGEN2 = common dso_local global i32 0, align 4
@CHIP_RV610 = common dso_local global i64 0, align 8
@CHIP_RV630 = common dso_local global i64 0, align 8
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, i32, %union.pplib_clock_info*)* @rv6xx_parse_pplib_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv6xx_parse_pplib_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, i32 %2, %union.pplib_clock_info* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.pplib_clock_info*, align 8
  %9 = alloca %struct.rv6xx_ps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.rv6xx_pl*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.pplib_clock_info* %3, %union.pplib_clock_info** %8, align 8
  %17 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %18 = call %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps* %17)
  store %struct.rv6xx_ps* %18, %struct.rv6xx_ps** %9, align 8
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %27 [
    i32 0, label %20
    i32 1, label %23
    i32 2, label %26
  ]

20:                                               ; preds = %4
  %21 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %9, align 8
  %22 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %21, i32 0, i32 2
  store %struct.rv6xx_pl* %22, %struct.rv6xx_pl** %13, align 8
  br label %30

23:                                               ; preds = %4
  %24 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %9, align 8
  %25 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %24, i32 0, i32 1
  store %struct.rv6xx_pl* %25, %struct.rv6xx_pl** %13, align 8
  br label %30

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %4, %26
  %28 = load %struct.rv6xx_ps*, %struct.rv6xx_ps** %9, align 8
  %29 = getelementptr inbounds %struct.rv6xx_ps, %struct.rv6xx_ps* %28, i32 0, i32 0
  store %struct.rv6xx_pl* %29, %struct.rv6xx_pl** %13, align 8
  br label %30

30:                                               ; preds = %27, %23, %20
  %31 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %32 = bitcast %union.pplib_clock_info* %31 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le16_to_cpu(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %38 = bitcast %union.pplib_clock_info* %37 to %struct.TYPE_3__*
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %45 = bitcast %union.pplib_clock_info* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %51 = bitcast %union.pplib_clock_info* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %59 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %62 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %64 = bitcast %union.pplib_clock_info* %63 to %struct.TYPE_3__*
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le16_to_cpu(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %70 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %union.pplib_clock_info*, %union.pplib_clock_info** %8, align 8
  %72 = bitcast %union.pplib_clock_info* %71 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %77 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %79 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 65281
  br i1 %81, label %82, label %92

82:                                               ; preds = %30
  %83 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %84 = call i64 @radeon_atom_get_max_vddc(%struct.radeon_device* %83, i32 0, i32 0, i8** %12)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %12, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %90 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91, %30
  %93 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %94 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %92
  %100 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @CHIP_RV610, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CHIP_RV630, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %105, %99
  %112 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %113 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 1100
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i32, i32* @ATOM_PPLIB_R600_FLAGS_PCIEGEN2, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %120 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %116, %111
  br label %124

124:                                              ; preds = %123, %105
  br label %125

125:                                              ; preds = %124, %92
  %126 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %127 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %125
  %133 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %134 = call i32 @radeon_atombios_get_default_voltages(%struct.radeon_device* %133, i8** %14, i8** %15, i8** %16)
  %135 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %140 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %146 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i8*, i8** %14, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.rv6xx_pl*, %struct.rv6xx_pl** %13, align 8
  %150 = getelementptr inbounds %struct.rv6xx_pl, %struct.rv6xx_pl* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %132, %125
  ret void
}

declare dso_local %struct.rv6xx_ps* @rv6xx_get_ps(%struct.radeon_ps*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @radeon_atom_get_max_vddc(%struct.radeon_device*, i32, i32, i8**) #1

declare dso_local i32 @radeon_atombios_get_default_voltages(%struct.radeon_device*, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
