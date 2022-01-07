; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_program_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_program_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i64 }
%struct.amdgpu_atom_ss = type { i64, i32, i32, i32 }
%union.atom_enable_ss = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8* }

@COMMAND = common dso_local global i32 0, align 4
@EnableSpreadSpectrumOnPPLL = common dso_local global i32 0, align 4
@ATOM_EXTERNAL_SS_MASK = common dso_local global i32 0, align 4
@ATOM_SS_CENTRE_SPREAD_MODE_MASK = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V3_P1PLL = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V3_P2PLL = common dso_local global i32 0, align 4
@ATOM_PPLL_SS_TYPE_V3_DCPLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32, %struct.amdgpu_atom_ss*)* @amdgpu_atombios_crtc_program_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atombios_crtc_program_ss(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, %struct.amdgpu_atom_ss* %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_atom_ss*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.atom_enable_ss, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.amdgpu_atom_ss* %4, %struct.amdgpu_atom_ss** %10, align 8
  %14 = load i32, i32* @COMMAND, align 4
  %15 = load i32, i32* @EnableSpreadSpectrumOnPPLL, align 4
  %16 = call i32 @GetIndexIntoMasterTable(i32 %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %10, align 8
  %21 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %142

25:                                               ; preds = %19
  %26 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %10, align 8
  %27 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ATOM_EXTERNAL_SS_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %142

33:                                               ; preds = %25
  br label %87

34:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %83, %34
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %35
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %82

52:                                               ; preds = %42
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %69, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %142

82:                                               ; preds = %68, %64, %52, %42
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %35

86:                                               ; preds = %35
  br label %87

87:                                               ; preds = %86, %33
  %88 = call i32 @memset(%union.atom_enable_ss* %13, i32 0, i32 32)
  %89 = call i8* @cpu_to_le16(i32 0)
  %90 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %10, align 8
  %93 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATOM_SS_CENTRE_SPREAD_MODE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  switch i32 %99, label %119 [
    i32 130, label %100
    i32 129, label %106
    i32 131, label %112
    i32 128, label %118
  ]

100:                                              ; preds = %87
  %101 = load i32, i32* @ATOM_PPLL_SS_TYPE_V3_P1PLL, align 4
  %102 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %119

106:                                              ; preds = %87
  %107 = load i32, i32* @ATOM_PPLL_SS_TYPE_V3_P2PLL, align 4
  %108 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %119

112:                                              ; preds = %87
  %113 = load i32, i32* @ATOM_PPLL_SS_TYPE_V3_DCPLL, align 4
  %114 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %119

118:                                              ; preds = %87
  br label %142

119:                                              ; preds = %87, %112, %106, %100
  %120 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %10, align 8
  %121 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.amdgpu_atom_ss*, %struct.amdgpu_atom_ss** %10, align 8
  %127 = getelementptr inbounds %struct.amdgpu_atom_ss, %struct.amdgpu_atom_ss* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_le16(i32 %128)
  %130 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = bitcast %union.atom_enable_ss* %13 to %struct.TYPE_5__*
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %12, align 4
  %140 = bitcast %union.atom_enable_ss* %13 to i32*
  %141 = call i32 @amdgpu_atom_execute_table(i32 %138, i32 %139, i32* %140)
  br label %142

142:                                              ; preds = %119, %118, %81, %32, %24
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%union.atom_enable_ss*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
