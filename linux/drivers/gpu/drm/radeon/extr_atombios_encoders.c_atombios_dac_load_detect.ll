; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dac_load_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_encoders.c_atombios_dac_load_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_encoder = type { i32, i64 }
%struct.radeon_connector = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }

@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT_SUPPORT = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@DAC_LoadDetection = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_DAC1 = common dso_local global i64 0, align 8
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 = common dso_local global i64 0, align 8
@ATOM_DAC_A = common dso_local global i32 0, align 4
@ATOM_DAC_B = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@DAC_LOAD_MISC_YPrPb = common dso_local global i8* null, align 8
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @atombios_dac_load_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atombios_dac_load_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_encoder*, align 8
  %9 = alloca %struct.radeon_connector*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %15 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.radeon_device*, %struct.radeon_device** %18, align 8
  store %struct.radeon_device* %19, %struct.radeon_device** %7, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %21 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %20)
  store %struct.radeon_encoder* %21, %struct.radeon_encoder** %8, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %23 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %22)
  store %struct.radeon_connector* %23, %struct.radeon_connector** %9, align 8
  %24 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %28 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ATOM_DEVICE_CRT_SUPPORT, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %142

34:                                               ; preds = %2
  %35 = load i32, i32* @COMMAND, align 4
  %36 = load i32, i32* @DAC_LoadDetection, align 4
  %37 = call i32 @GetIndexIntoMasterTable(i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = call i32 @memset(%struct.TYPE_7__* %10, i32 0, i32 24)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @atom_parse_cmd_header(i32 %42, i32 %43, i32* %12, i32* %13)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %143

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* null, i8** %49, align 8
  %50 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %51 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_DAC1, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load %struct.radeon_encoder*, %struct.radeon_encoder** %8, align 8
  %57 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55, %47
  %62 = load i32, i32* @ATOM_DAC_A, align 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @ATOM_DAC_B, align 4
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %71 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %134

81:                                               ; preds = %69
  %82 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %83 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %133

93:                                               ; preds = %81
  %94 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %95 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %102 = call i8* @cpu_to_le16(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = icmp sge i32 %105, 3
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i8*, i8** @DAC_LOAD_MISC_YPrPb, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %100
  br label %132

112:                                              ; preds = %93
  %113 = load %struct.radeon_connector*, %struct.radeon_connector** %9, align 8
  %114 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %112
  %120 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %121 = call i8* @cpu_to_le16(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* %13, align 4
  %125 = icmp sge i32 %124, 3
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i8*, i8** @DAC_LOAD_MISC_YPrPb, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %126, %119
  br label %131

131:                                              ; preds = %130, %112
  br label %132

132:                                              ; preds = %131, %111
  br label %133

133:                                              ; preds = %132, %88
  br label %134

134:                                              ; preds = %133, %76
  %135 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %11, align 4
  %140 = bitcast %struct.TYPE_7__* %10 to i32*
  %141 = call i32 @atom_execute_table(i32 %138, i32 %139, i32* %140)
  store i32 1, i32* %3, align 4
  br label %143

142:                                              ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %134, %46
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
