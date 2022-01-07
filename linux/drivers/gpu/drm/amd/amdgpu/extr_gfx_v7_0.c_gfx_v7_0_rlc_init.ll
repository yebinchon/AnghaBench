; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_rlc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_rlc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_section_def = type { i32 }
%struct.amdgpu_device = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8**, i64, %struct.cs_section_def*, i8* }

@AMD_IS_APU = common dso_local global i32 0, align 4
@CHIP_KAVERI = common dso_local global i64 0, align 8
@spectre_rlc_save_restore_register_list = common dso_local global i8* null, align 8
@kalindi_rlc_save_restore_register_list = common dso_local global i8* null, align 8
@ci_cs_data = common dso_local global %struct.cs_section_def* null, align 8
@CP_ME_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_rlc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_rlc_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs_section_def*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @AMD_IS_APU, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_KAVERI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i8*, i8** @spectre_rlc_save_restore_register_list, align 8
  %22 = bitcast i8* %21 to i8**
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i8** %22, i8*** %26, align 8
  %27 = load i8*, i8** @spectre_rlc_save_restore_register_list, align 8
  %28 = call i64 @ARRAY_SIZE(i8* %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  store i8* %29, i8** %33, align 8
  br label %48

34:                                               ; preds = %14
  %35 = load i8*, i8** @kalindi_rlc_save_restore_register_list, align 8
  %36 = bitcast i8* %35 to i8**
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8** %36, i8*** %40, align 8
  %41 = load i8*, i8** @kalindi_rlc_save_restore_register_list, align 8
  %42 = call i64 @ARRAY_SIZE(i8* %41)
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i8* %43, i8** %47, align 8
  br label %48

48:                                               ; preds = %34, %20
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.cs_section_def*, %struct.cs_section_def** @ci_cs_data, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store %struct.cs_section_def* %50, %struct.cs_section_def** %54, align 8
  %55 = load i32, i32* @CP_ME_TABLE_SIZE, align 4
  %56 = mul nsw i32 %55, 5
  %57 = mul nsw i32 %56, 4
  %58 = call i64 @ALIGN(i32 %57, i32 2048)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i64 %58, i64* %62, align 8
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 65536
  store i64 %68, i64* %66, align 8
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  store i8** %73, i8*** %4, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %5, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr i8, i8* %79, i64 240
  store i8* %80, i8** %5, align 8
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load %struct.cs_section_def*, %struct.cs_section_def** %84, align 8
  store %struct.cs_section_def* %85, %struct.cs_section_def** %6, align 8
  %86 = load i8**, i8*** %4, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %49
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @amdgpu_gfx_rlc_init_sr(%struct.amdgpu_device* %89, i8* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %124

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %49
  %98 = load %struct.cs_section_def*, %struct.cs_section_def** %6, align 8
  %99 = icmp ne %struct.cs_section_def* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = call i32 @amdgpu_gfx_rlc_init_csb(%struct.amdgpu_device* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %124

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %97
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %117 = call i32 @amdgpu_gfx_rlc_init_cpt(%struct.amdgpu_device* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %124

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %108
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %120, %105, %94
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_init_sr(%struct.amdgpu_device*, i8*) #1

declare dso_local i32 @amdgpu_gfx_rlc_init_csb(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_gfx_rlc_init_cpt(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
