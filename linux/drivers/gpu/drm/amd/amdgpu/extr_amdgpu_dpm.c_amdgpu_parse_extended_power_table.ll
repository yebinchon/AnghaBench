; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_parse_extended_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_dpm.c_amdgpu_parse_extended_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_73__, %struct.amdgpu_mode_info }
%struct.TYPE_73__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i32, i32, i32, i32, %struct.TYPE_71__, %struct.TYPE_61__*, i64, i8*, i8*, i64, i8*, i8*, i8*, %struct.TYPE_98__ }
%struct.TYPE_71__ = type { %struct.TYPE_102__, %struct.TYPE_70__*, %struct.TYPE_69__, %struct.TYPE_67__*, %struct.TYPE_66__, %struct.TYPE_63__, %struct.TYPE_60__, %struct.TYPE_56__, %struct.TYPE_107__, %struct.TYPE_104__, %struct.TYPE_102__, %struct.TYPE_102__, %struct.TYPE_102__, %struct.TYPE_102__ }
%struct.TYPE_70__ = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_69__ = type { i32, %struct.TYPE_68__* }
%struct.TYPE_68__ = type { i32, i64 }
%struct.TYPE_67__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32 }
%struct.TYPE_66__ = type { i32, %struct.TYPE_64__* }
%struct.TYPE_64__ = type { i32, i64 }
%struct.TYPE_63__ = type { i32, %struct.TYPE_62__* }
%struct.TYPE_62__ = type { i32, i32, i64 }
%struct.TYPE_60__ = type { i32, %struct.TYPE_59__* }
%struct.TYPE_59__ = type { i32, i32, i64 }
%struct.TYPE_56__ = type { i32, %struct.TYPE_55__* }
%struct.TYPE_55__ = type { i8*, i64, i64, i64, i64 }
%struct.TYPE_107__ = type { i32, %struct.TYPE_101__* }
%struct.TYPE_101__ = type { i32, i32, i64 }
%struct.TYPE_104__ = type { i32, i32, i64, i64 }
%struct.TYPE_102__ = type { i32 }
%struct.TYPE_61__ = type { i32, i32, i32, i32 }
%struct.TYPE_98__ = type { i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { %struct.TYPE_103__* }
%struct.TYPE_103__ = type { i64 }
%union.power_info = type { %struct.TYPE_106__ }
%struct.TYPE_106__ = type { i64, i64, i64, i64, i64, i64 }
%union.fan_info = type { %struct.TYPE_76__ }
%struct.TYPE_76__ = type { i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_95__ = type { %struct.TYPE_105__*, i64 }
%struct.TYPE_105__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_89__ = type { i32, %struct.TYPE_90__* }
%struct.TYPE_90__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_96__ = type { i32, %struct.TYPE_97__* }
%struct.TYPE_97__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_94__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_74__ = type { i32, i32* }
%struct.TYPE_82__ = type { i32, %struct.TYPE_83__* }
%struct.TYPE_83__ = type { i32, i64 }
%struct.TYPE_80__ = type { i64, %struct.TYPE_81__* }
%struct.TYPE_81__ = type { i32, i32 }
%struct.TYPE_75__ = type { i32, i32, i64, i64 }
%struct.TYPE_77__ = type { i32, i32* }
%struct.TYPE_84__ = type { i32, %struct.TYPE_85__* }
%struct.TYPE_85__ = type { i32, i64 }
%struct.TYPE_78__ = type { i32, i32, i64, i64 }
%struct.TYPE_86__ = type { i32, %struct.TYPE_88__* }
%struct.TYPE_88__ = type { i32, i64, i64 }
%struct.TYPE_91__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_99__ = type { i32, %struct.TYPE_100__* }
%struct.TYPE_100__ = type { i32, i64, i64 }
%struct.TYPE_79__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_92__ = type { i32, %struct.TYPE_79__ }
%struct.TYPE_93__ = type { %struct.TYPE_79__ }
%struct.TYPE_57__ = type { i64 }
%struct.TYPE_58__ = type { i64, i64 }
%struct.TYPE_65__ = type { i64 }
%struct.TYPE_87__ = type { i64, i64, i32 }
%struct.TYPE_108__ = type { i64, i64, i32, i32, i64, i32, i32 }

@DATA = common dso_local global i32 0, align 4
@PowerPlayInfo = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATOM_PP_PLATFORM_CAP_EVV = common dso_local global i32 0, align 4
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V2 = common dso_local global i64 0, align 8
@AMD_MAX_VCE_LEVELS = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V3 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V4 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V6 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V7 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_parse_extended_power_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_mode_info*, align 8
  %5 = alloca %union.power_info*, align 8
  %6 = alloca %union.fan_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_95__*, align 8
  %15 = alloca %struct.TYPE_89__*, align 8
  %16 = alloca %struct.TYPE_90__*, align 8
  %17 = alloca %struct.TYPE_96__*, align 8
  %18 = alloca %struct.TYPE_97__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_94__*, align 8
  %21 = alloca %struct.TYPE_74__*, align 8
  %22 = alloca %struct.TYPE_82__*, align 8
  %23 = alloca %struct.TYPE_80__*, align 8
  %24 = alloca %struct.TYPE_83__*, align 8
  %25 = alloca %struct.TYPE_81__*, align 8
  %26 = alloca %struct.TYPE_75__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_77__*, align 8
  %29 = alloca %struct.TYPE_84__*, align 8
  %30 = alloca %struct.TYPE_85__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_78__*, align 8
  %33 = alloca %struct.TYPE_86__*, align 8
  %34 = alloca %struct.TYPE_88__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_91__*, align 8
  %37 = alloca %struct.TYPE_99__*, align 8
  %38 = alloca %struct.TYPE_100__*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca %struct.TYPE_79__*, align 8
  %42 = alloca %struct.TYPE_92__*, align 8
  %43 = alloca %struct.TYPE_93__*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  store %struct.amdgpu_mode_info* %45, %struct.amdgpu_mode_info** %4, align 8
  %46 = load i32, i32* @DATA, align 4
  %47 = load i32, i32* @PowerPlayInfo, align 4
  %48 = call i32 @GetIndexIntoMasterTable(i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_103__*, %struct.TYPE_103__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @amdgpu_atom_parse_data_header(%struct.TYPE_103__* %51, i32 %52, i32* null, i64* %10, i64* %11, i64* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %1
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %2023

58:                                               ; preds = %1
  %59 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_103__*, %struct.TYPE_103__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %63, %64
  %66 = inttoptr i64 %65 to %union.power_info*
  store %union.power_info* %66, %union.power_info** %5, align 8
  %67 = load %union.power_info*, %union.power_info** %5, align 8
  %68 = bitcast %union.power_info* %67 to %struct.TYPE_57__*
  %69 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @le16_to_cpu(i64 %70)
  %72 = icmp uge i64 %71, 4
  br i1 %72, label %73, label %239

73:                                               ; preds = %58
  %74 = load %union.power_info*, %union.power_info** %5, align 8
  %75 = bitcast %union.power_info* %74 to %struct.TYPE_58__*
  %76 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %238

79:                                               ; preds = %73
  %80 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %81 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %80, i32 0, i32 0
  %82 = load %struct.TYPE_103__*, %struct.TYPE_103__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %union.power_info*, %union.power_info** %5, align 8
  %88 = bitcast %union.power_info* %87 to %struct.TYPE_58__*
  %89 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @le16_to_cpu(i64 %90)
  %92 = add nsw i64 %86, %91
  %93 = inttoptr i64 %92 to %union.fan_info*
  store %union.fan_info* %93, %union.fan_info** %6, align 8
  %94 = load %union.fan_info*, %union.fan_info** %6, align 8
  %95 = bitcast %union.fan_info* %94 to %struct.TYPE_76__*
  %96 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %100, i32 0, i32 13
  %102 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %101, i32 0, i32 13
  store i32 %97, i32* %102, align 8
  %103 = load %union.fan_info*, %union.fan_info** %6, align 8
  %104 = bitcast %union.fan_info* %103 to %struct.TYPE_76__*
  %105 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @le16_to_cpu(i64 %106)
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %110, i32 0, i32 13
  %112 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %111, i32 0, i32 12
  store i64 %107, i64* %112, align 8
  %113 = load %union.fan_info*, %union.fan_info** %6, align 8
  %114 = bitcast %union.fan_info* %113 to %struct.TYPE_76__*
  %115 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @le16_to_cpu(i64 %116)
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %120, i32 0, i32 13
  %122 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %121, i32 0, i32 11
  store i64 %117, i64* %122, align 8
  %123 = load %union.fan_info*, %union.fan_info** %6, align 8
  %124 = bitcast %union.fan_info* %123 to %struct.TYPE_76__*
  %125 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @le16_to_cpu(i64 %126)
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %130, i32 0, i32 13
  %132 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %131, i32 0, i32 10
  store i64 %127, i64* %132, align 8
  %133 = load %union.fan_info*, %union.fan_info** %6, align 8
  %134 = bitcast %union.fan_info* %133 to %struct.TYPE_76__*
  %135 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @le16_to_cpu(i64 %136)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %140, i32 0, i32 13
  %142 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %141, i32 0, i32 9
  store i64 %137, i64* %142, align 8
  %143 = load %union.fan_info*, %union.fan_info** %6, align 8
  %144 = bitcast %union.fan_info* %143 to %struct.TYPE_76__*
  %145 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @le16_to_cpu(i64 %146)
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %150, i32 0, i32 13
  %152 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %151, i32 0, i32 8
  store i64 %147, i64* %152, align 8
  %153 = load %union.fan_info*, %union.fan_info** %6, align 8
  %154 = bitcast %union.fan_info* %153 to %struct.TYPE_76__*
  %155 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @le16_to_cpu(i64 %156)
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %160, i32 0, i32 13
  %162 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %161, i32 0, i32 7
  store i64 %157, i64* %162, align 8
  %163 = load %union.fan_info*, %union.fan_info** %6, align 8
  %164 = bitcast %union.fan_info* %163 to %struct.TYPE_76__*
  %165 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %166, 2
  br i1 %167, label %168, label %180

168:                                              ; preds = %79
  %169 = load %union.fan_info*, %union.fan_info** %6, align 8
  %170 = bitcast %union.fan_info* %169 to %struct.TYPE_65__*
  %171 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @le16_to_cpu(i64 %172)
  %174 = trunc i64 %173 to i32
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %177, i32 0, i32 13
  %179 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %178, i32 0, i32 0
  store i32 %174, i32* %179, align 8
  br label %186

180:                                              ; preds = %79
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %183, i32 0, i32 13
  %185 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %184, i32 0, i32 0
  store i32 10900, i32* %185, align 8
  br label %186

186:                                              ; preds = %180, %168
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %188 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %189, i32 0, i32 13
  %191 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %190, i32 0, i32 1
  store i32 100000, i32* %191, align 4
  %192 = load %union.fan_info*, %union.fan_info** %6, align 8
  %193 = bitcast %union.fan_info* %192 to %struct.TYPE_76__*
  %194 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sge i32 %195, 3
  br i1 %196, label %197, label %232

197:                                              ; preds = %186
  %198 = load %union.fan_info*, %union.fan_info** %6, align 8
  %199 = bitcast %union.fan_info* %198 to %struct.TYPE_87__*
  %200 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %204, i32 0, i32 13
  %206 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %205, i32 0, i32 6
  store i32 %201, i32* %206, align 8
  %207 = load %union.fan_info*, %union.fan_info** %6, align 8
  %208 = bitcast %union.fan_info* %207 to %struct.TYPE_87__*
  %209 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @le16_to_cpu(i64 %210)
  %212 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %213 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %214, i32 0, i32 13
  %216 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %215, i32 0, i32 5
  store i64 %211, i64* %216, align 8
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %219, i32 0, i32 13
  %221 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %220, i32 0, i32 2
  store i32 4836, i32* %221, align 8
  %222 = load %union.fan_info*, %union.fan_info** %6, align 8
  %223 = bitcast %union.fan_info* %222 to %struct.TYPE_87__*
  %224 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @le16_to_cpu(i64 %225)
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %228 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %229, i32 0, i32 13
  %231 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %230, i32 0, i32 4
  store i64 %226, i64* %231, align 8
  br label %232

232:                                              ; preds = %197, %186
  %233 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %234 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %235, i32 0, i32 13
  %237 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %236, i32 0, i32 3
  store i32 1, i32* %237, align 4
  br label %238

238:                                              ; preds = %232, %73
  br label %239

239:                                              ; preds = %238, %58
  %240 = load %union.power_info*, %union.power_info** %5, align 8
  %241 = bitcast %union.power_info* %240 to %struct.TYPE_57__*
  %242 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i64 @le16_to_cpu(i64 %243)
  %245 = icmp uge i64 %244, 4
  br i1 %245, label %246, label %619

246:                                              ; preds = %239
  %247 = load %union.power_info*, %union.power_info** %5, align 8
  %248 = bitcast %union.power_info* %247 to %struct.TYPE_106__*
  %249 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %281

252:                                              ; preds = %246
  %253 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %254 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %253, i32 0, i32 0
  %255 = load %struct.TYPE_103__*, %struct.TYPE_103__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %9, align 8
  %259 = add nsw i64 %257, %258
  %260 = load %union.power_info*, %union.power_info** %5, align 8
  %261 = bitcast %union.power_info* %260 to %struct.TYPE_106__*
  %262 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @le16_to_cpu(i64 %263)
  %265 = add nsw i64 %259, %264
  %266 = inttoptr i64 %265 to i32*
  store i32* %266, i32** %7, align 8
  %267 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %268 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %270, i32 0, i32 13
  %272 = load i32*, i32** %7, align 8
  %273 = call i32 @amdgpu_parse_clk_voltage_dep_table(%struct.TYPE_102__* %271, i32* %272)
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %12, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %252
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %278 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %277)
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %2, align 4
  br label %2023

280:                                              ; preds = %252
  br label %281

281:                                              ; preds = %280, %246
  %282 = load %union.power_info*, %union.power_info** %5, align 8
  %283 = bitcast %union.power_info* %282 to %struct.TYPE_106__*
  %284 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %316

287:                                              ; preds = %281
  %288 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %289 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %288, i32 0, i32 0
  %290 = load %struct.TYPE_103__*, %struct.TYPE_103__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* %9, align 8
  %294 = add nsw i64 %292, %293
  %295 = load %union.power_info*, %union.power_info** %5, align 8
  %296 = bitcast %union.power_info* %295 to %struct.TYPE_106__*
  %297 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = call i64 @le16_to_cpu(i64 %298)
  %300 = add nsw i64 %294, %299
  %301 = inttoptr i64 %300 to i32*
  store i32* %301, i32** %7, align 8
  %302 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %303 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %305, i32 0, i32 12
  %307 = load i32*, i32** %7, align 8
  %308 = call i32 @amdgpu_parse_clk_voltage_dep_table(%struct.TYPE_102__* %306, i32* %307)
  store i32 %308, i32* %12, align 4
  %309 = load i32, i32* %12, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %287
  %312 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %313 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %312)
  %314 = load i32, i32* %12, align 4
  store i32 %314, i32* %2, align 4
  br label %2023

315:                                              ; preds = %287
  br label %316

316:                                              ; preds = %315, %281
  %317 = load %union.power_info*, %union.power_info** %5, align 8
  %318 = bitcast %union.power_info* %317 to %struct.TYPE_106__*
  %319 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %351

322:                                              ; preds = %316
  %323 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %324 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %323, i32 0, i32 0
  %325 = load %struct.TYPE_103__*, %struct.TYPE_103__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* %9, align 8
  %329 = add nsw i64 %327, %328
  %330 = load %union.power_info*, %union.power_info** %5, align 8
  %331 = bitcast %union.power_info* %330 to %struct.TYPE_106__*
  %332 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = call i64 @le16_to_cpu(i64 %333)
  %335 = add nsw i64 %329, %334
  %336 = inttoptr i64 %335 to i32*
  store i32* %336, i32** %7, align 8
  %337 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %338 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %340, i32 0, i32 11
  %342 = load i32*, i32** %7, align 8
  %343 = call i32 @amdgpu_parse_clk_voltage_dep_table(%struct.TYPE_102__* %341, i32* %342)
  store i32 %343, i32* %12, align 4
  %344 = load i32, i32* %12, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %322
  %347 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %348 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %347)
  %349 = load i32, i32* %12, align 4
  store i32 %349, i32* %2, align 4
  br label %2023

350:                                              ; preds = %322
  br label %351

351:                                              ; preds = %350, %316
  %352 = load %union.power_info*, %union.power_info** %5, align 8
  %353 = bitcast %union.power_info* %352 to %struct.TYPE_106__*
  %354 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %386

357:                                              ; preds = %351
  %358 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %359 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %358, i32 0, i32 0
  %360 = load %struct.TYPE_103__*, %struct.TYPE_103__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* %9, align 8
  %364 = add nsw i64 %362, %363
  %365 = load %union.power_info*, %union.power_info** %5, align 8
  %366 = bitcast %union.power_info* %365 to %struct.TYPE_106__*
  %367 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = call i64 @le16_to_cpu(i64 %368)
  %370 = add nsw i64 %364, %369
  %371 = inttoptr i64 %370 to i32*
  store i32* %371, i32** %7, align 8
  %372 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %373 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %374, i32 0, i32 4
  %376 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %375, i32 0, i32 10
  %377 = load i32*, i32** %7, align 8
  %378 = call i32 @amdgpu_parse_clk_voltage_dep_table(%struct.TYPE_102__* %376, i32* %377)
  store i32 %378, i32* %12, align 4
  %379 = load i32, i32* %12, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %357
  %382 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %383 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %382)
  %384 = load i32, i32* %12, align 4
  store i32 %384, i32* %2, align 4
  br label %2023

385:                                              ; preds = %357
  br label %386

386:                                              ; preds = %385, %351
  %387 = load %union.power_info*, %union.power_info** %5, align 8
  %388 = bitcast %union.power_info* %387 to %struct.TYPE_106__*
  %389 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %485

392:                                              ; preds = %386
  %393 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %394 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %393, i32 0, i32 0
  %395 = load %struct.TYPE_103__*, %struct.TYPE_103__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* %9, align 8
  %399 = add nsw i64 %397, %398
  %400 = load %union.power_info*, %union.power_info** %5, align 8
  %401 = bitcast %union.power_info* %400 to %struct.TYPE_106__*
  %402 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = call i64 @le16_to_cpu(i64 %403)
  %405 = add nsw i64 %399, %404
  %406 = inttoptr i64 %405 to %struct.TYPE_95__*
  store %struct.TYPE_95__* %406, %struct.TYPE_95__** %14, align 8
  %407 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %408 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %484

411:                                              ; preds = %392
  %412 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %413 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %412, i32 0, i32 0
  %414 = load %struct.TYPE_105__*, %struct.TYPE_105__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %414, i64 0
  %416 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %415, i32 0, i32 5
  %417 = load i64, i64* %416, align 8
  %418 = call i64 @le16_to_cpu(i64 %417)
  %419 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %420 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_105__*, %struct.TYPE_105__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %421, i64 0
  %423 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = shl i32 %424, 16
  %426 = sext i32 %425 to i64
  %427 = or i64 %418, %426
  %428 = trunc i64 %427 to i32
  %429 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %430 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %431, i32 0, i32 4
  %433 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %432, i32 0, i32 9
  %434 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %433, i32 0, i32 0
  store i32 %428, i32* %434, align 8
  %435 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %436 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_105__*, %struct.TYPE_105__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %437, i64 0
  %439 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %438, i32 0, i32 4
  %440 = load i64, i64* %439, align 8
  %441 = call i64 @le16_to_cpu(i64 %440)
  %442 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %443 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_105__*, %struct.TYPE_105__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %444, i64 0
  %446 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = shl i32 %447, 16
  %449 = sext i32 %448 to i64
  %450 = or i64 %441, %449
  %451 = trunc i64 %450 to i32
  %452 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %453 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %454, i32 0, i32 4
  %456 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %455, i32 0, i32 9
  %457 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %456, i32 0, i32 1
  store i32 %451, i32* %457, align 4
  %458 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %459 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_105__*, %struct.TYPE_105__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %460, i64 0
  %462 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %461, i32 0, i32 3
  %463 = load i64, i64* %462, align 8
  %464 = call i64 @le16_to_cpu(i64 %463)
  %465 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %466 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %467, i32 0, i32 4
  %469 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %468, i32 0, i32 9
  %470 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %469, i32 0, i32 3
  store i64 %464, i64* %470, align 8
  %471 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %472 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_105__*, %struct.TYPE_105__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %473, i64 0
  %475 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = call i64 @le16_to_cpu(i64 %476)
  %478 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %479 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %480, i32 0, i32 4
  %482 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %481, i32 0, i32 9
  %483 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %482, i32 0, i32 2
  store i64 %477, i64* %483, align 8
  br label %484

484:                                              ; preds = %411, %392
  br label %485

485:                                              ; preds = %484, %386
  %486 = load %union.power_info*, %union.power_info** %5, align 8
  %487 = bitcast %union.power_info* %486 to %struct.TYPE_106__*
  %488 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %618

491:                                              ; preds = %485
  %492 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %493 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %492, i32 0, i32 0
  %494 = load %struct.TYPE_103__*, %struct.TYPE_103__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* %9, align 8
  %498 = add nsw i64 %496, %497
  %499 = load %union.power_info*, %union.power_info** %5, align 8
  %500 = bitcast %union.power_info* %499 to %struct.TYPE_106__*
  %501 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = call i64 @le16_to_cpu(i64 %502)
  %504 = add nsw i64 %498, %503
  %505 = inttoptr i64 %504 to %struct.TYPE_89__*
  store %struct.TYPE_89__* %505, %struct.TYPE_89__** %15, align 8
  %506 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %507 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @GFP_KERNEL, align 4
  %510 = call %struct.TYPE_101__* @kcalloc(i32 %508, i32 4, i32 %509)
  %511 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %512 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %513, i32 0, i32 4
  %515 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %514, i32 0, i32 8
  %516 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %515, i32 0, i32 1
  store %struct.TYPE_101__* %510, %struct.TYPE_101__** %516, align 8
  %517 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %518 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %519, i32 0, i32 4
  %521 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %520, i32 0, i32 8
  %522 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %521, i32 0, i32 1
  %523 = load %struct.TYPE_101__*, %struct.TYPE_101__** %522, align 8
  %524 = icmp ne %struct.TYPE_101__* %523, null
  br i1 %524, label %530, label %525

525:                                              ; preds = %491
  %526 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %527 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %526)
  %528 = load i32, i32* @ENOMEM, align 4
  %529 = sub nsw i32 0, %528
  store i32 %529, i32* %2, align 4
  br label %2023

530:                                              ; preds = %491
  %531 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %532 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %531, i32 0, i32 1
  %533 = load %struct.TYPE_90__*, %struct.TYPE_90__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %533, i64 0
  store %struct.TYPE_90__* %534, %struct.TYPE_90__** %16, align 8
  store i32 0, i32* %13, align 4
  br label %535

535:                                              ; preds = %605, %530
  %536 = load i32, i32* %13, align 4
  %537 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %538 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = icmp slt i32 %536, %539
  br i1 %540, label %541, label %608

541:                                              ; preds = %535
  %542 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %543 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %542, i32 0, i32 4
  %544 = load i64, i64* %543, align 8
  %545 = call i64 @le16_to_cpu(i64 %544)
  %546 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %547 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = shl i32 %548, 16
  %550 = sext i32 %549 to i64
  %551 = or i64 %545, %550
  %552 = trunc i64 %551 to i32
  %553 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %554 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %555, i32 0, i32 4
  %557 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %556, i32 0, i32 8
  %558 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %557, i32 0, i32 1
  %559 = load %struct.TYPE_101__*, %struct.TYPE_101__** %558, align 8
  %560 = load i32, i32* %13, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %559, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %562, i32 0, i32 0
  store i32 %552, i32* %563, align 8
  %564 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %565 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %564, i32 0, i32 3
  %566 = load i64, i64* %565, align 8
  %567 = call i64 @le16_to_cpu(i64 %566)
  %568 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %569 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = shl i32 %570, 16
  %572 = sext i32 %571 to i64
  %573 = or i64 %567, %572
  %574 = trunc i64 %573 to i32
  %575 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %576 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %577, i32 0, i32 4
  %579 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %578, i32 0, i32 8
  %580 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %579, i32 0, i32 1
  %581 = load %struct.TYPE_101__*, %struct.TYPE_101__** %580, align 8
  %582 = load i32, i32* %13, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %581, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %584, i32 0, i32 1
  store i32 %574, i32* %585, align 4
  %586 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %587 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %586, i32 0, i32 2
  %588 = load i64, i64* %587, align 8
  %589 = call i64 @le16_to_cpu(i64 %588)
  %590 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %591 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %592, i32 0, i32 4
  %594 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %593, i32 0, i32 8
  %595 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %594, i32 0, i32 1
  %596 = load %struct.TYPE_101__*, %struct.TYPE_101__** %595, align 8
  %597 = load i32, i32* %13, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %596, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %599, i32 0, i32 2
  store i64 %589, i64* %600, align 8
  %601 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %602 = bitcast %struct.TYPE_90__* %601 to i64*
  %603 = getelementptr inbounds i64, i64* %602, i64 32
  %604 = bitcast i64* %603 to %struct.TYPE_90__*
  store %struct.TYPE_90__* %604, %struct.TYPE_90__** %16, align 8
  br label %605

605:                                              ; preds = %541
  %606 = load i32, i32* %13, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %13, align 4
  br label %535

608:                                              ; preds = %535
  %609 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %610 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 8
  %612 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %613 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %614, i32 0, i32 4
  %616 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %615, i32 0, i32 8
  %617 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %616, i32 0, i32 0
  store i32 %611, i32* %617, align 8
  br label %618

618:                                              ; preds = %608, %485
  br label %619

619:                                              ; preds = %618, %239
  %620 = load %union.power_info*, %union.power_info** %5, align 8
  %621 = bitcast %union.power_info* %620 to %struct.TYPE_57__*
  %622 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %621, i32 0, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = call i64 @le16_to_cpu(i64 %623)
  %625 = icmp uge i64 %624, 4
  br i1 %625, label %626, label %877

626:                                              ; preds = %619
  %627 = load %union.power_info*, %union.power_info** %5, align 8
  %628 = bitcast %union.power_info* %627 to %struct.TYPE_108__*
  %629 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %628, i32 0, i32 6
  %630 = load i32, i32* %629, align 4
  %631 = call i8* @le32_to_cpu(i32 %630)
  %632 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %633 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %634, i32 0, i32 12
  store i8* %631, i8** %635, align 8
  %636 = load %union.power_info*, %union.power_info** %5, align 8
  %637 = bitcast %union.power_info* %636 to %struct.TYPE_108__*
  %638 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %637, i32 0, i32 5
  %639 = load i32, i32* %638, align 8
  %640 = call i8* @le32_to_cpu(i32 %639)
  %641 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %642 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %643, i32 0, i32 10
  store i8* %640, i8** %644, align 8
  %645 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %646 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %647, i32 0, i32 10
  %649 = load i8*, i8** %648, align 8
  %650 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %651 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %651, i32 0, i32 0
  %653 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %652, i32 0, i32 11
  store i8* %649, i8** %653, align 8
  %654 = load %union.power_info*, %union.power_info** %5, align 8
  %655 = bitcast %union.power_info* %654 to %struct.TYPE_108__*
  %656 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %655, i32 0, i32 4
  %657 = load i64, i64* %656, align 8
  %658 = call i64 @le16_to_cpu(i64 %657)
  %659 = trunc i64 %658 to i32
  %660 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %661 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %660, i32 0, i32 0
  %662 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %661, i32 0, i32 0
  %663 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %662, i32 0, i32 0
  store i32 %659, i32* %663, align 8
  %664 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %665 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %665, i32 0, i32 0
  %667 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %675

670:                                              ; preds = %626
  %671 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %672 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %671, i32 0, i32 0
  %673 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %673, i32 0, i32 1
  store i32 1, i32* %674, align 4
  br label %680

675:                                              ; preds = %626
  %676 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %677 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %676, i32 0, i32 0
  %678 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %677, i32 0, i32 0
  %679 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %678, i32 0, i32 1
  store i32 0, i32* %679, align 4
  br label %680

680:                                              ; preds = %675, %670
  %681 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %682 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %683, i32 0, i32 9
  store i64 0, i64* %684, align 8
  %685 = load %union.power_info*, %union.power_info** %5, align 8
  %686 = bitcast %union.power_info* %685 to %struct.TYPE_108__*
  %687 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %686, i32 0, i32 3
  %688 = load i32, i32* %687, align 4
  %689 = call i8* @le32_to_cpu(i32 %688)
  %690 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %691 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %692, i32 0, i32 8
  store i8* %689, i8** %693, align 8
  %694 = load %union.power_info*, %union.power_info** %5, align 8
  %695 = bitcast %union.power_info* %694 to %struct.TYPE_108__*
  %696 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %695, i32 0, i32 2
  %697 = load i32, i32* %696, align 8
  %698 = call i8* @le32_to_cpu(i32 %697)
  %699 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %700 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %699, i32 0, i32 0
  %701 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %700, i32 0, i32 0
  %702 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %701, i32 0, i32 7
  store i8* %698, i8** %702, align 8
  %703 = load %union.power_info*, %union.power_info** %5, align 8
  %704 = bitcast %union.power_info* %703 to %struct.TYPE_108__*
  %705 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %704, i32 0, i32 1
  %706 = load i64, i64* %705, align 8
  %707 = call i64 @le16_to_cpu(i64 %706)
  %708 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %709 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %708, i32 0, i32 0
  %710 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %709, i32 0, i32 0
  %711 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %710, i32 0, i32 6
  store i64 %707, i64* %711, align 8
  %712 = load %union.power_info*, %union.power_info** %5, align 8
  %713 = bitcast %union.power_info* %712 to %struct.TYPE_108__*
  %714 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %713, i32 0, i32 0
  %715 = load i64, i64* %714, align 8
  %716 = icmp ne i64 %715, 0
  br i1 %716, label %717, label %876

717:                                              ; preds = %680
  %718 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %719 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %718, i32 0, i32 0
  %720 = load %struct.TYPE_103__*, %struct.TYPE_103__** %719, align 8
  %721 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %720, i32 0, i32 0
  %722 = load i64, i64* %721, align 8
  %723 = load i64, i64* %9, align 8
  %724 = add nsw i64 %722, %723
  %725 = load %union.power_info*, %union.power_info** %5, align 8
  %726 = bitcast %union.power_info* %725 to %struct.TYPE_108__*
  %727 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %726, i32 0, i32 0
  %728 = load i64, i64* %727, align 8
  %729 = call i64 @le16_to_cpu(i64 %728)
  %730 = add nsw i64 %724, %729
  %731 = inttoptr i64 %730 to %struct.TYPE_96__*
  store %struct.TYPE_96__* %731, %struct.TYPE_96__** %17, align 8
  %732 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %733 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 8
  %735 = sext i32 %734 to i64
  %736 = mul i64 %735, 4
  %737 = trunc i64 %736 to i32
  store i32 %737, i32* %19, align 4
  %738 = load i32, i32* %19, align 4
  %739 = load i32, i32* @GFP_KERNEL, align 4
  %740 = call i8* @kzalloc(i32 %738, i32 %739)
  %741 = bitcast i8* %740 to %struct.TYPE_55__*
  %742 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %743 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %742, i32 0, i32 0
  %744 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %743, i32 0, i32 0
  %745 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %744, i32 0, i32 4
  %746 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %745, i32 0, i32 7
  %747 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %746, i32 0, i32 1
  store %struct.TYPE_55__* %741, %struct.TYPE_55__** %747, align 8
  %748 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %749 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %748, i32 0, i32 0
  %750 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %749, i32 0, i32 0
  %751 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %750, i32 0, i32 4
  %752 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %751, i32 0, i32 7
  %753 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %752, i32 0, i32 1
  %754 = load %struct.TYPE_55__*, %struct.TYPE_55__** %753, align 8
  %755 = icmp ne %struct.TYPE_55__* %754, null
  br i1 %755, label %761, label %756

756:                                              ; preds = %717
  %757 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %758 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %757)
  %759 = load i32, i32* @ENOMEM, align 4
  %760 = sub nsw i32 0, %759
  store i32 %760, i32* %2, align 4
  br label %2023

761:                                              ; preds = %717
  %762 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %763 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %762, i32 0, i32 1
  %764 = load %struct.TYPE_97__*, %struct.TYPE_97__** %763, align 8
  %765 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %764, i64 0
  store %struct.TYPE_97__* %765, %struct.TYPE_97__** %18, align 8
  store i32 0, i32* %13, align 4
  br label %766

766:                                              ; preds = %863, %761
  %767 = load i32, i32* %13, align 4
  %768 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %769 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %768, i32 0, i32 0
  %770 = load i32, i32* %769, align 8
  %771 = icmp slt i32 %767, %770
  br i1 %771, label %772, label %866

772:                                              ; preds = %766
  %773 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %774 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %773, i32 0, i32 0
  %775 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %774, i32 0, i32 0
  %776 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %775, i32 0, i32 2
  %777 = load i32, i32* %776, align 8
  %778 = load i32, i32* @ATOM_PP_PLATFORM_CAP_EVV, align 4
  %779 = and i32 %777, %778
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %827

781:                                              ; preds = %772
  %782 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %783 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %782, i32 0, i32 4
  %784 = load i64, i64* %783, align 8
  %785 = call i64 @le16_to_cpu(i64 %784)
  %786 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %787 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %786, i32 0, i32 0
  %788 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %787, i32 0, i32 0
  %789 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %788, i32 0, i32 4
  %790 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %789, i32 0, i32 7
  %791 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %790, i32 0, i32 1
  %792 = load %struct.TYPE_55__*, %struct.TYPE_55__** %791, align 8
  %793 = load i32, i32* %13, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %792, i64 %794
  %796 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %795, i32 0, i32 4
  store i64 %785, i64* %796, align 8
  %797 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %798 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %797, i32 0, i32 3
  %799 = load i64, i64* %798, align 8
  %800 = call i64 @le16_to_cpu(i64 %799)
  %801 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %802 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %801, i32 0, i32 0
  %803 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %802, i32 0, i32 0
  %804 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %803, i32 0, i32 4
  %805 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %804, i32 0, i32 7
  %806 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %805, i32 0, i32 1
  %807 = load %struct.TYPE_55__*, %struct.TYPE_55__** %806, align 8
  %808 = load i32, i32* %13, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %807, i64 %809
  %811 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %810, i32 0, i32 3
  store i64 %800, i64* %811, align 8
  %812 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %813 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %812, i32 0, i32 2
  %814 = load i64, i64* %813, align 8
  %815 = call i64 @le16_to_cpu(i64 %814)
  %816 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %817 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %816, i32 0, i32 0
  %818 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %817, i32 0, i32 0
  %819 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %818, i32 0, i32 4
  %820 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %819, i32 0, i32 7
  %821 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %820, i32 0, i32 1
  %822 = load %struct.TYPE_55__*, %struct.TYPE_55__** %821, align 8
  %823 = load i32, i32* %13, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %822, i64 %824
  %826 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %825, i32 0, i32 2
  store i64 %815, i64* %826, align 8
  br label %858

827:                                              ; preds = %772
  %828 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %829 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %828, i32 0, i32 1
  %830 = load i64, i64* %829, align 8
  %831 = call i64 @le16_to_cpu(i64 %830)
  %832 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %833 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %832, i32 0, i32 0
  %834 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %833, i32 0, i32 0
  %835 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %834, i32 0, i32 4
  %836 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %835, i32 0, i32 7
  %837 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %836, i32 0, i32 1
  %838 = load %struct.TYPE_55__*, %struct.TYPE_55__** %837, align 8
  %839 = load i32, i32* %13, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %838, i64 %840
  %842 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %841, i32 0, i32 1
  store i64 %831, i64* %842, align 8
  %843 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %844 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %843, i32 0, i32 0
  %845 = load i32, i32* %844, align 8
  %846 = call i8* @le32_to_cpu(i32 %845)
  %847 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %848 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %847, i32 0, i32 0
  %849 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %848, i32 0, i32 0
  %850 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %849, i32 0, i32 4
  %851 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %850, i32 0, i32 7
  %852 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %851, i32 0, i32 1
  %853 = load %struct.TYPE_55__*, %struct.TYPE_55__** %852, align 8
  %854 = load i32, i32* %13, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %853, i64 %855
  %857 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %856, i32 0, i32 0
  store i8* %846, i8** %857, align 8
  br label %858

858:                                              ; preds = %827, %781
  %859 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %860 = bitcast %struct.TYPE_97__* %859 to i64*
  %861 = getelementptr inbounds i64, i64* %860, i64 40
  %862 = bitcast i64* %861 to %struct.TYPE_97__*
  store %struct.TYPE_97__* %862, %struct.TYPE_97__** %18, align 8
  br label %863

863:                                              ; preds = %858
  %864 = load i32, i32* %13, align 4
  %865 = add nsw i32 %864, 1
  store i32 %865, i32* %13, align 4
  br label %766

866:                                              ; preds = %766
  %867 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %868 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 8
  %870 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %871 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %870, i32 0, i32 0
  %872 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %871, i32 0, i32 0
  %873 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %872, i32 0, i32 4
  %874 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %873, i32 0, i32 7
  %875 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %874, i32 0, i32 0
  store i32 %869, i32* %875, align 8
  br label %876

876:                                              ; preds = %866, %680
  br label %877

877:                                              ; preds = %876, %619
  %878 = load %union.power_info*, %union.power_info** %5, align 8
  %879 = bitcast %union.power_info* %878 to %struct.TYPE_57__*
  %880 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %879, i32 0, i32 0
  %881 = load i64, i64* %880, align 8
  %882 = call i64 @le16_to_cpu(i64 %881)
  %883 = icmp uge i64 %882, 4
  br i1 %883, label %884, label %2022

884:                                              ; preds = %877
  %885 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %886 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %885, i32 0, i32 0
  %887 = load %struct.TYPE_103__*, %struct.TYPE_103__** %886, align 8
  %888 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %887, i32 0, i32 0
  %889 = load i64, i64* %888, align 8
  %890 = load i64, i64* %9, align 8
  %891 = add nsw i64 %889, %890
  %892 = load %union.power_info*, %union.power_info** %5, align 8
  %893 = bitcast %union.power_info* %892 to %struct.TYPE_58__*
  %894 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %893, i32 0, i32 0
  %895 = load i64, i64* %894, align 8
  %896 = call i64 @le16_to_cpu(i64 %895)
  %897 = add nsw i64 %891, %896
  %898 = inttoptr i64 %897 to %struct.TYPE_94__*
  store %struct.TYPE_94__* %898, %struct.TYPE_94__** %20, align 8
  %899 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %900 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %899, i32 0, i32 1
  %901 = load i64, i64* %900, align 8
  %902 = call i64 @le16_to_cpu(i64 %901)
  %903 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V2, align 8
  %904 = icmp sge i64 %902, %903
  br i1 %904, label %905, label %1221

905:                                              ; preds = %884
  %906 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %907 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %906, i32 0, i32 7
  %908 = load i64, i64* %907, align 8
  %909 = icmp ne i64 %908, 0
  br i1 %909, label %910, label %1221

910:                                              ; preds = %905
  %911 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %912 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %911, i32 0, i32 0
  %913 = load %struct.TYPE_103__*, %struct.TYPE_103__** %912, align 8
  %914 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %913, i32 0, i32 0
  %915 = load i64, i64* %914, align 8
  %916 = load i64, i64* %9, align 8
  %917 = add nsw i64 %915, %916
  %918 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %919 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %918, i32 0, i32 7
  %920 = load i64, i64* %919, align 8
  %921 = call i64 @le16_to_cpu(i64 %920)
  %922 = add nsw i64 %917, %921
  %923 = add nsw i64 %922, 1
  %924 = inttoptr i64 %923 to %struct.TYPE_74__*
  store %struct.TYPE_74__* %924, %struct.TYPE_74__** %21, align 8
  %925 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %926 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %925, i32 0, i32 0
  %927 = load %struct.TYPE_103__*, %struct.TYPE_103__** %926, align 8
  %928 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %927, i32 0, i32 0
  %929 = load i64, i64* %928, align 8
  %930 = load i64, i64* %9, align 8
  %931 = add nsw i64 %929, %930
  %932 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %933 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %932, i32 0, i32 7
  %934 = load i64, i64* %933, align 8
  %935 = call i64 @le16_to_cpu(i64 %934)
  %936 = add nsw i64 %931, %935
  %937 = add nsw i64 %936, 1
  %938 = add nsw i64 %937, 1
  %939 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %940 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %939, i32 0, i32 0
  %941 = load i32, i32* %940, align 8
  %942 = sext i32 %941 to i64
  %943 = mul i64 %942, 24
  %944 = add i64 %938, %943
  %945 = inttoptr i64 %944 to %struct.TYPE_82__*
  store %struct.TYPE_82__* %945, %struct.TYPE_82__** %22, align 8
  %946 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %947 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %946, i32 0, i32 0
  %948 = load %struct.TYPE_103__*, %struct.TYPE_103__** %947, align 8
  %949 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %948, i32 0, i32 0
  %950 = load i64, i64* %949, align 8
  %951 = load i64, i64* %9, align 8
  %952 = add nsw i64 %950, %951
  %953 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %954 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %953, i32 0, i32 7
  %955 = load i64, i64* %954, align 8
  %956 = call i64 @le16_to_cpu(i64 %955)
  %957 = add nsw i64 %952, %956
  %958 = add nsw i64 %957, 1
  %959 = add nsw i64 %958, 1
  %960 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %961 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %960, i32 0, i32 0
  %962 = load i32, i32* %961, align 8
  %963 = sext i32 %962 to i64
  %964 = mul i64 %963, 24
  %965 = add i64 %959, %964
  %966 = add i64 %965, 1
  %967 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %968 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %967, i32 0, i32 0
  %969 = load i32, i32* %968, align 8
  %970 = sext i32 %969 to i64
  %971 = mul i64 %970, 16
  %972 = add i64 %966, %971
  %973 = inttoptr i64 %972 to %struct.TYPE_80__*
  store %struct.TYPE_80__* %973, %struct.TYPE_80__** %23, align 8
  %974 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %975 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %974, i32 0, i32 0
  %976 = load i32, i32* %975, align 8
  %977 = sext i32 %976 to i64
  %978 = mul i64 %977, 4
  %979 = trunc i64 %978 to i32
  store i32 %979, i32* %27, align 4
  %980 = load i32, i32* %27, align 4
  %981 = load i32, i32* @GFP_KERNEL, align 4
  %982 = call i8* @kzalloc(i32 %980, i32 %981)
  %983 = bitcast i8* %982 to %struct.TYPE_59__*
  %984 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %985 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %984, i32 0, i32 0
  %986 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %985, i32 0, i32 0
  %987 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %986, i32 0, i32 4
  %988 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %987, i32 0, i32 6
  %989 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %988, i32 0, i32 1
  store %struct.TYPE_59__* %983, %struct.TYPE_59__** %989, align 8
  %990 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %991 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %990, i32 0, i32 0
  %992 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %991, i32 0, i32 0
  %993 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %992, i32 0, i32 4
  %994 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %993, i32 0, i32 6
  %995 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %994, i32 0, i32 1
  %996 = load %struct.TYPE_59__*, %struct.TYPE_59__** %995, align 8
  %997 = icmp ne %struct.TYPE_59__* %996, null
  br i1 %997, label %1003, label %998

998:                                              ; preds = %910
  %999 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1000 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %999)
  %1001 = load i32, i32* @ENOMEM, align 4
  %1002 = sub nsw i32 0, %1001
  store i32 %1002, i32* %2, align 4
  br label %2023

1003:                                             ; preds = %910
  %1004 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1005 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1004, i32 0, i32 0
  %1006 = load i32, i32* %1005, align 8
  %1007 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1008 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1007, i32 0, i32 0
  %1009 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1008, i32 0, i32 0
  %1010 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1009, i32 0, i32 4
  %1011 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1010, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1011, i32 0, i32 0
  store i32 %1006, i32* %1012, align 8
  %1013 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1014 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1013, i32 0, i32 1
  %1015 = load %struct.TYPE_83__*, %struct.TYPE_83__** %1014, align 8
  %1016 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1015, i64 0
  store %struct.TYPE_83__* %1016, %struct.TYPE_83__** %24, align 8
  %1017 = load %struct.TYPE_80__*, %struct.TYPE_80__** %23, align 8
  %1018 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %1017, i32 0, i32 1
  %1019 = load %struct.TYPE_81__*, %struct.TYPE_81__** %1018, align 8
  %1020 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1019, i64 0
  store %struct.TYPE_81__* %1020, %struct.TYPE_81__** %25, align 8
  store i32 0, i32* %13, align 4
  br label %1021

1021:                                             ; preds = %1103, %1003
  %1022 = load i32, i32* %13, align 4
  %1023 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1024 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1023, i32 0, i32 0
  %1025 = load i32, i32* %1024, align 8
  %1026 = icmp slt i32 %1022, %1025
  br i1 %1026, label %1027, label %1106

1027:                                             ; preds = %1021
  %1028 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %1029 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1028, i32 0, i32 1
  %1030 = load i32*, i32** %1029, align 8
  %1031 = getelementptr inbounds i32, i32* %1030, i64 0
  %1032 = bitcast i32* %1031 to i64*
  %1033 = load %struct.TYPE_83__*, %struct.TYPE_83__** %24, align 8
  %1034 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1033, i32 0, i32 0
  %1035 = load i32, i32* %1034, align 8
  %1036 = sext i32 %1035 to i64
  %1037 = mul i64 %1036, 24
  %1038 = getelementptr inbounds i64, i64* %1032, i64 %1037
  %1039 = bitcast i64* %1038 to %struct.TYPE_75__*
  store %struct.TYPE_75__* %1039, %struct.TYPE_75__** %26, align 8
  %1040 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1041 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1040, i32 0, i32 3
  %1042 = load i64, i64* %1041, align 8
  %1043 = call i64 @le16_to_cpu(i64 %1042)
  %1044 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1045 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1044, i32 0, i32 0
  %1046 = load i32, i32* %1045, align 8
  %1047 = shl i32 %1046, 16
  %1048 = sext i32 %1047 to i64
  %1049 = or i64 %1043, %1048
  %1050 = trunc i64 %1049 to i32
  %1051 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1052 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1051, i32 0, i32 0
  %1053 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1052, i32 0, i32 0
  %1054 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1053, i32 0, i32 4
  %1055 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1054, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1055, i32 0, i32 1
  %1057 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1056, align 8
  %1058 = load i32, i32* %13, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1057, i64 %1059
  %1061 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1060, i32 0, i32 0
  store i32 %1050, i32* %1061, align 8
  %1062 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1063 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1062, i32 0, i32 2
  %1064 = load i64, i64* %1063, align 8
  %1065 = call i64 @le16_to_cpu(i64 %1064)
  %1066 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1067 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1066, i32 0, i32 1
  %1068 = load i32, i32* %1067, align 4
  %1069 = shl i32 %1068, 16
  %1070 = sext i32 %1069 to i64
  %1071 = or i64 %1065, %1070
  %1072 = trunc i64 %1071 to i32
  %1073 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1074 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1073, i32 0, i32 0
  %1075 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1074, i32 0, i32 0
  %1076 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1075, i32 0, i32 4
  %1077 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1076, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1077, i32 0, i32 1
  %1079 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1078, align 8
  %1080 = load i32, i32* %13, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1079, i64 %1081
  %1083 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1082, i32 0, i32 1
  store i32 %1072, i32* %1083, align 4
  %1084 = load %struct.TYPE_83__*, %struct.TYPE_83__** %24, align 8
  %1085 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1084, i32 0, i32 1
  %1086 = load i64, i64* %1085, align 8
  %1087 = call i64 @le16_to_cpu(i64 %1086)
  %1088 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1089 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1088, i32 0, i32 0
  %1090 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1089, i32 0, i32 0
  %1091 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1090, i32 0, i32 4
  %1092 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1091, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1092, i32 0, i32 1
  %1094 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1093, align 8
  %1095 = load i32, i32* %13, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1094, i64 %1096
  %1098 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1097, i32 0, i32 2
  store i64 %1087, i64* %1098, align 8
  %1099 = load %struct.TYPE_83__*, %struct.TYPE_83__** %24, align 8
  %1100 = bitcast %struct.TYPE_83__* %1099 to i64*
  %1101 = getelementptr inbounds i64, i64* %1100, i64 16
  %1102 = bitcast i64* %1101 to %struct.TYPE_83__*
  store %struct.TYPE_83__* %1102, %struct.TYPE_83__** %24, align 8
  br label %1103

1103:                                             ; preds = %1027
  %1104 = load i32, i32* %13, align 4
  %1105 = add nsw i32 %1104, 1
  store i32 %1105, i32* %13, align 4
  br label %1021

1106:                                             ; preds = %1021
  %1107 = load %struct.TYPE_80__*, %struct.TYPE_80__** %23, align 8
  %1108 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %1107, i32 0, i32 0
  %1109 = load i64, i64* %1108, align 8
  %1110 = load i64, i64* @AMD_MAX_VCE_LEVELS, align 8
  %1111 = icmp sgt i64 %1109, %1110
  br i1 %1111, label %1112, label %1114

1112:                                             ; preds = %1106
  %1113 = load i64, i64* @AMD_MAX_VCE_LEVELS, align 8
  br label %1118

1114:                                             ; preds = %1106
  %1115 = load %struct.TYPE_80__*, %struct.TYPE_80__** %23, align 8
  %1116 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %1115, i32 0, i32 0
  %1117 = load i64, i64* %1116, align 8
  br label %1118

1118:                                             ; preds = %1114, %1112
  %1119 = phi i64 [ %1113, %1112 ], [ %1117, %1114 ]
  %1120 = trunc i64 %1119 to i32
  %1121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1121, i32 0, i32 0
  %1123 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1122, i32 0, i32 0
  %1124 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1123, i32 0, i32 3
  store i32 %1120, i32* %1124, align 4
  store i32 0, i32* %13, align 4
  br label %1125

1125:                                             ; preds = %1217, %1118
  %1126 = load i32, i32* %13, align 4
  %1127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1127, i32 0, i32 0
  %1129 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1128, i32 0, i32 0
  %1130 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1129, i32 0, i32 3
  %1131 = load i32, i32* %1130, align 4
  %1132 = icmp slt i32 %1126, %1131
  br i1 %1132, label %1133, label %1220

1133:                                             ; preds = %1125
  %1134 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %1135 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1134, i32 0, i32 1
  %1136 = load i32*, i32** %1135, align 8
  %1137 = getelementptr inbounds i32, i32* %1136, i64 0
  %1138 = bitcast i32* %1137 to i64*
  %1139 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1140 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1139, i32 0, i32 0
  %1141 = load i32, i32* %1140, align 4
  %1142 = sext i32 %1141 to i64
  %1143 = mul i64 %1142, 24
  %1144 = getelementptr inbounds i64, i64* %1138, i64 %1143
  %1145 = bitcast i64* %1144 to %struct.TYPE_75__*
  store %struct.TYPE_75__* %1145, %struct.TYPE_75__** %26, align 8
  %1146 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1147 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1146, i32 0, i32 3
  %1148 = load i64, i64* %1147, align 8
  %1149 = call i64 @le16_to_cpu(i64 %1148)
  %1150 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1151 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1150, i32 0, i32 0
  %1152 = load i32, i32* %1151, align 8
  %1153 = shl i32 %1152, 16
  %1154 = sext i32 %1153 to i64
  %1155 = or i64 %1149, %1154
  %1156 = trunc i64 %1155 to i32
  %1157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1158 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1157, i32 0, i32 0
  %1159 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1158, i32 0, i32 0
  %1160 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1159, i32 0, i32 5
  %1161 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1160, align 8
  %1162 = load i32, i32* %13, align 4
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1161, i64 %1163
  %1165 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1164, i32 0, i32 0
  store i32 %1156, i32* %1165, align 4
  %1166 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1167 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1166, i32 0, i32 2
  %1168 = load i64, i64* %1167, align 8
  %1169 = call i64 @le16_to_cpu(i64 %1168)
  %1170 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1171 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1170, i32 0, i32 1
  %1172 = load i32, i32* %1171, align 4
  %1173 = shl i32 %1172, 16
  %1174 = sext i32 %1173 to i64
  %1175 = or i64 %1169, %1174
  %1176 = trunc i64 %1175 to i32
  %1177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1178 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1177, i32 0, i32 0
  %1179 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1178, i32 0, i32 0
  %1180 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1179, i32 0, i32 5
  %1181 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1180, align 8
  %1182 = load i32, i32* %13, align 4
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1181, i64 %1183
  %1185 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1184, i32 0, i32 1
  store i32 %1176, i32* %1185, align 4
  %1186 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1187 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1186, i32 0, i32 1
  %1188 = load i32, i32* %1187, align 4
  %1189 = and i32 %1188, 63
  %1190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1190, i32 0, i32 0
  %1192 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1191, i32 0, i32 0
  %1193 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1192, i32 0, i32 5
  %1194 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1193, align 8
  %1195 = load i32, i32* %13, align 4
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1194, i64 %1196
  %1198 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1197, i32 0, i32 2
  store i32 %1189, i32* %1198, align 4
  %1199 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1200 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1199, i32 0, i32 1
  %1201 = load i32, i32* %1200, align 4
  %1202 = and i32 %1201, 192
  %1203 = ashr i32 %1202, 6
  %1204 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1205 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1204, i32 0, i32 0
  %1206 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1205, i32 0, i32 0
  %1207 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1206, i32 0, i32 5
  %1208 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1207, align 8
  %1209 = load i32, i32* %13, align 4
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1208, i64 %1210
  %1212 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1211, i32 0, i32 3
  store i32 %1203, i32* %1212, align 4
  %1213 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1214 = bitcast %struct.TYPE_81__* %1213 to i64*
  %1215 = getelementptr inbounds i64, i64* %1214, i64 8
  %1216 = bitcast i64* %1215 to %struct.TYPE_81__*
  store %struct.TYPE_81__* %1216, %struct.TYPE_81__** %25, align 8
  br label %1217

1217:                                             ; preds = %1133
  %1218 = load i32, i32* %13, align 4
  %1219 = add nsw i32 %1218, 1
  store i32 %1219, i32* %13, align 4
  br label %1125

1220:                                             ; preds = %1125
  br label %1221

1221:                                             ; preds = %1220, %905, %884
  %1222 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1223 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1222, i32 0, i32 1
  %1224 = load i64, i64* %1223, align 8
  %1225 = call i64 @le16_to_cpu(i64 %1224)
  %1226 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V3, align 8
  %1227 = icmp sge i64 %1225, %1226
  br i1 %1227, label %1228, label %1398

1228:                                             ; preds = %1221
  %1229 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1230 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1229, i32 0, i32 6
  %1231 = load i64, i64* %1230, align 8
  %1232 = icmp ne i64 %1231, 0
  br i1 %1232, label %1233, label %1398

1233:                                             ; preds = %1228
  %1234 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1235 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1234, i32 0, i32 0
  %1236 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1235, align 8
  %1237 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1236, i32 0, i32 0
  %1238 = load i64, i64* %1237, align 8
  %1239 = load i64, i64* %9, align 8
  %1240 = add nsw i64 %1238, %1239
  %1241 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1242 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1241, i32 0, i32 6
  %1243 = load i64, i64* %1242, align 8
  %1244 = call i64 @le16_to_cpu(i64 %1243)
  %1245 = add nsw i64 %1240, %1244
  %1246 = add nsw i64 %1245, 1
  %1247 = inttoptr i64 %1246 to %struct.TYPE_77__*
  store %struct.TYPE_77__* %1247, %struct.TYPE_77__** %28, align 8
  %1248 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1249 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1248, i32 0, i32 0
  %1250 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1249, align 8
  %1251 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1250, i32 0, i32 0
  %1252 = load i64, i64* %1251, align 8
  %1253 = load i64, i64* %9, align 8
  %1254 = add nsw i64 %1252, %1253
  %1255 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1256 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1255, i32 0, i32 6
  %1257 = load i64, i64* %1256, align 8
  %1258 = call i64 @le16_to_cpu(i64 %1257)
  %1259 = add nsw i64 %1254, %1258
  %1260 = add nsw i64 %1259, 1
  %1261 = add nsw i64 %1260, 1
  %1262 = load %struct.TYPE_77__*, %struct.TYPE_77__** %28, align 8
  %1263 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1262, i32 0, i32 0
  %1264 = load i32, i32* %1263, align 8
  %1265 = sext i32 %1264 to i64
  %1266 = mul i64 %1265, 24
  %1267 = add i64 %1261, %1266
  %1268 = inttoptr i64 %1267 to %struct.TYPE_84__*
  store %struct.TYPE_84__* %1268, %struct.TYPE_84__** %29, align 8
  %1269 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1270 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1269, i32 0, i32 0
  %1271 = load i32, i32* %1270, align 8
  %1272 = sext i32 %1271 to i64
  %1273 = mul i64 %1272, 4
  %1274 = trunc i64 %1273 to i32
  store i32 %1274, i32* %31, align 4
  %1275 = load i32, i32* %31, align 4
  %1276 = load i32, i32* @GFP_KERNEL, align 4
  %1277 = call i8* @kzalloc(i32 %1275, i32 %1276)
  %1278 = bitcast i8* %1277 to %struct.TYPE_62__*
  %1279 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1280 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1279, i32 0, i32 0
  %1281 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1280, i32 0, i32 0
  %1282 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1281, i32 0, i32 4
  %1283 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1282, i32 0, i32 5
  %1284 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1283, i32 0, i32 1
  store %struct.TYPE_62__* %1278, %struct.TYPE_62__** %1284, align 8
  %1285 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1286 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1285, i32 0, i32 0
  %1287 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1286, i32 0, i32 0
  %1288 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1287, i32 0, i32 4
  %1289 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1288, i32 0, i32 5
  %1290 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1289, i32 0, i32 1
  %1291 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1290, align 8
  %1292 = icmp ne %struct.TYPE_62__* %1291, null
  br i1 %1292, label %1298, label %1293

1293:                                             ; preds = %1233
  %1294 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1295 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %1294)
  %1296 = load i32, i32* @ENOMEM, align 4
  %1297 = sub nsw i32 0, %1296
  store i32 %1297, i32* %2, align 4
  br label %2023

1298:                                             ; preds = %1233
  %1299 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1300 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1299, i32 0, i32 0
  %1301 = load i32, i32* %1300, align 8
  %1302 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1303 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1302, i32 0, i32 0
  %1304 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1303, i32 0, i32 0
  %1305 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1304, i32 0, i32 4
  %1306 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1305, i32 0, i32 5
  %1307 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1306, i32 0, i32 0
  store i32 %1301, i32* %1307, align 8
  %1308 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1309 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1308, i32 0, i32 1
  %1310 = load %struct.TYPE_85__*, %struct.TYPE_85__** %1309, align 8
  %1311 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %1310, i64 0
  store %struct.TYPE_85__* %1311, %struct.TYPE_85__** %30, align 8
  store i32 0, i32* %13, align 4
  br label %1312

1312:                                             ; preds = %1394, %1298
  %1313 = load i32, i32* %13, align 4
  %1314 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1315 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1314, i32 0, i32 0
  %1316 = load i32, i32* %1315, align 8
  %1317 = icmp slt i32 %1313, %1316
  br i1 %1317, label %1318, label %1397

1318:                                             ; preds = %1312
  %1319 = load %struct.TYPE_77__*, %struct.TYPE_77__** %28, align 8
  %1320 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1319, i32 0, i32 1
  %1321 = load i32*, i32** %1320, align 8
  %1322 = getelementptr inbounds i32, i32* %1321, i64 0
  %1323 = bitcast i32* %1322 to i64*
  %1324 = load %struct.TYPE_85__*, %struct.TYPE_85__** %30, align 8
  %1325 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %1324, i32 0, i32 0
  %1326 = load i32, i32* %1325, align 8
  %1327 = sext i32 %1326 to i64
  %1328 = mul i64 %1327, 24
  %1329 = getelementptr inbounds i64, i64* %1323, i64 %1328
  %1330 = bitcast i64* %1329 to %struct.TYPE_78__*
  store %struct.TYPE_78__* %1330, %struct.TYPE_78__** %32, align 8
  %1331 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1332 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1331, i32 0, i32 3
  %1333 = load i64, i64* %1332, align 8
  %1334 = call i64 @le16_to_cpu(i64 %1333)
  %1335 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1336 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1335, i32 0, i32 0
  %1337 = load i32, i32* %1336, align 8
  %1338 = shl i32 %1337, 16
  %1339 = sext i32 %1338 to i64
  %1340 = or i64 %1334, %1339
  %1341 = trunc i64 %1340 to i32
  %1342 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1343 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1342, i32 0, i32 0
  %1344 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1343, i32 0, i32 0
  %1345 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1344, i32 0, i32 4
  %1346 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1345, i32 0, i32 5
  %1347 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1346, i32 0, i32 1
  %1348 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1347, align 8
  %1349 = load i32, i32* %13, align 4
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1348, i64 %1350
  %1352 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1351, i32 0, i32 0
  store i32 %1341, i32* %1352, align 8
  %1353 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1354 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1353, i32 0, i32 2
  %1355 = load i64, i64* %1354, align 8
  %1356 = call i64 @le16_to_cpu(i64 %1355)
  %1357 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1358 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1357, i32 0, i32 1
  %1359 = load i32, i32* %1358, align 4
  %1360 = shl i32 %1359, 16
  %1361 = sext i32 %1360 to i64
  %1362 = or i64 %1356, %1361
  %1363 = trunc i64 %1362 to i32
  %1364 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1365 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1364, i32 0, i32 0
  %1366 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1365, i32 0, i32 0
  %1367 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1366, i32 0, i32 4
  %1368 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1367, i32 0, i32 5
  %1369 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1368, i32 0, i32 1
  %1370 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1369, align 8
  %1371 = load i32, i32* %13, align 4
  %1372 = sext i32 %1371 to i64
  %1373 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1370, i64 %1372
  %1374 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1373, i32 0, i32 1
  store i32 %1363, i32* %1374, align 4
  %1375 = load %struct.TYPE_85__*, %struct.TYPE_85__** %30, align 8
  %1376 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %1375, i32 0, i32 1
  %1377 = load i64, i64* %1376, align 8
  %1378 = call i64 @le16_to_cpu(i64 %1377)
  %1379 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1380 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1379, i32 0, i32 0
  %1381 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1380, i32 0, i32 0
  %1382 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1381, i32 0, i32 4
  %1383 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1382, i32 0, i32 5
  %1384 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1383, i32 0, i32 1
  %1385 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1384, align 8
  %1386 = load i32, i32* %13, align 4
  %1387 = sext i32 %1386 to i64
  %1388 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1385, i64 %1387
  %1389 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1388, i32 0, i32 2
  store i64 %1378, i64* %1389, align 8
  %1390 = load %struct.TYPE_85__*, %struct.TYPE_85__** %30, align 8
  %1391 = bitcast %struct.TYPE_85__* %1390 to i64*
  %1392 = getelementptr inbounds i64, i64* %1391, i64 16
  %1393 = bitcast i64* %1392 to %struct.TYPE_85__*
  store %struct.TYPE_85__* %1393, %struct.TYPE_85__** %30, align 8
  br label %1394

1394:                                             ; preds = %1318
  %1395 = load i32, i32* %13, align 4
  %1396 = add nsw i32 %1395, 1
  store i32 %1396, i32* %13, align 4
  br label %1312

1397:                                             ; preds = %1312
  br label %1398

1398:                                             ; preds = %1397, %1228, %1221
  %1399 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1400 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1399, i32 0, i32 1
  %1401 = load i64, i64* %1400, align 8
  %1402 = call i64 @le16_to_cpu(i64 %1401)
  %1403 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V4, align 8
  %1404 = icmp sge i64 %1402, %1403
  br i1 %1404, label %1405, label %1520

1405:                                             ; preds = %1398
  %1406 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1407 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1406, i32 0, i32 5
  %1408 = load i64, i64* %1407, align 8
  %1409 = icmp ne i64 %1408, 0
  br i1 %1409, label %1410, label %1520

1410:                                             ; preds = %1405
  %1411 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1412 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1411, i32 0, i32 0
  %1413 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1412, align 8
  %1414 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1413, i32 0, i32 0
  %1415 = load i64, i64* %1414, align 8
  %1416 = load i64, i64* %9, align 8
  %1417 = add nsw i64 %1415, %1416
  %1418 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1419 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1418, i32 0, i32 5
  %1420 = load i64, i64* %1419, align 8
  %1421 = call i64 @le16_to_cpu(i64 %1420)
  %1422 = add nsw i64 %1417, %1421
  %1423 = add nsw i64 %1422, 1
  %1424 = inttoptr i64 %1423 to %struct.TYPE_86__*
  store %struct.TYPE_86__* %1424, %struct.TYPE_86__** %33, align 8
  %1425 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1426 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1425, i32 0, i32 0
  %1427 = load i32, i32* %1426, align 8
  %1428 = sext i32 %1427 to i64
  %1429 = mul i64 %1428, 4
  %1430 = trunc i64 %1429 to i32
  store i32 %1430, i32* %35, align 4
  %1431 = load i32, i32* %35, align 4
  %1432 = load i32, i32* @GFP_KERNEL, align 4
  %1433 = call i8* @kzalloc(i32 %1431, i32 %1432)
  %1434 = bitcast i8* %1433 to %struct.TYPE_64__*
  %1435 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1436 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1435, i32 0, i32 0
  %1437 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1436, i32 0, i32 0
  %1438 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1437, i32 0, i32 4
  %1439 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1438, i32 0, i32 4
  %1440 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1439, i32 0, i32 1
  store %struct.TYPE_64__* %1434, %struct.TYPE_64__** %1440, align 8
  %1441 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1442 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1441, i32 0, i32 0
  %1443 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1442, i32 0, i32 0
  %1444 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1443, i32 0, i32 4
  %1445 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1444, i32 0, i32 4
  %1446 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1445, i32 0, i32 1
  %1447 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1446, align 8
  %1448 = icmp ne %struct.TYPE_64__* %1447, null
  br i1 %1448, label %1454, label %1449

1449:                                             ; preds = %1410
  %1450 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1451 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %1450)
  %1452 = load i32, i32* @ENOMEM, align 4
  %1453 = sub nsw i32 0, %1452
  store i32 %1453, i32* %2, align 4
  br label %2023

1454:                                             ; preds = %1410
  %1455 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1456 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1455, i32 0, i32 0
  %1457 = load i32, i32* %1456, align 8
  %1458 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1459 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1458, i32 0, i32 0
  %1460 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1459, i32 0, i32 0
  %1461 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1460, i32 0, i32 4
  %1462 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1461, i32 0, i32 4
  %1463 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1462, i32 0, i32 0
  store i32 %1457, i32* %1463, align 8
  %1464 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1465 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1464, i32 0, i32 1
  %1466 = load %struct.TYPE_88__*, %struct.TYPE_88__** %1465, align 8
  %1467 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1466, i64 0
  store %struct.TYPE_88__* %1467, %struct.TYPE_88__** %34, align 8
  store i32 0, i32* %13, align 4
  br label %1468

1468:                                             ; preds = %1516, %1454
  %1469 = load i32, i32* %13, align 4
  %1470 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1471 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1470, i32 0, i32 0
  %1472 = load i32, i32* %1471, align 8
  %1473 = icmp slt i32 %1469, %1472
  br i1 %1473, label %1474, label %1519

1474:                                             ; preds = %1468
  %1475 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1476 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1475, i32 0, i32 2
  %1477 = load i64, i64* %1476, align 8
  %1478 = call i64 @le16_to_cpu(i64 %1477)
  %1479 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1480 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1479, i32 0, i32 0
  %1481 = load i32, i32* %1480, align 8
  %1482 = shl i32 %1481, 16
  %1483 = sext i32 %1482 to i64
  %1484 = or i64 %1478, %1483
  %1485 = trunc i64 %1484 to i32
  %1486 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1487 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1486, i32 0, i32 0
  %1488 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1487, i32 0, i32 0
  %1489 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1488, i32 0, i32 4
  %1490 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1489, i32 0, i32 4
  %1491 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1490, i32 0, i32 1
  %1492 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1491, align 8
  %1493 = load i32, i32* %13, align 4
  %1494 = sext i32 %1493 to i64
  %1495 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1492, i64 %1494
  %1496 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1495, i32 0, i32 0
  store i32 %1485, i32* %1496, align 8
  %1497 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1498 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1497, i32 0, i32 1
  %1499 = load i64, i64* %1498, align 8
  %1500 = call i64 @le16_to_cpu(i64 %1499)
  %1501 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1502 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1501, i32 0, i32 0
  %1503 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1502, i32 0, i32 0
  %1504 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1503, i32 0, i32 4
  %1505 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1504, i32 0, i32 4
  %1506 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1505, i32 0, i32 1
  %1507 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1506, align 8
  %1508 = load i32, i32* %13, align 4
  %1509 = sext i32 %1508 to i64
  %1510 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1507, i64 %1509
  %1511 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1510, i32 0, i32 1
  store i64 %1500, i64* %1511, align 8
  %1512 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1513 = bitcast %struct.TYPE_88__* %1512 to i64*
  %1514 = getelementptr inbounds i64, i64* %1513, i64 24
  %1515 = bitcast i64* %1514 to %struct.TYPE_88__*
  store %struct.TYPE_88__* %1515, %struct.TYPE_88__** %34, align 8
  br label %1516

1516:                                             ; preds = %1474
  %1517 = load i32, i32* %13, align 4
  %1518 = add nsw i32 %1517, 1
  store i32 %1518, i32* %13, align 4
  br label %1468

1519:                                             ; preds = %1468
  br label %1520

1520:                                             ; preds = %1519, %1405, %1398
  %1521 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1522 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1521, i32 0, i32 1
  %1523 = load i64, i64* %1522, align 8
  %1524 = call i64 @le16_to_cpu(i64 %1523)
  %1525 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5, align 8
  %1526 = icmp sge i64 %1524, %1525
  br i1 %1526, label %1527, label %1676

1527:                                             ; preds = %1520
  %1528 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1529 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1528, i32 0, i32 4
  %1530 = load i64, i64* %1529, align 8
  %1531 = icmp ne i64 %1530, 0
  br i1 %1531, label %1532, label %1676

1532:                                             ; preds = %1527
  %1533 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1534 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1533, i32 0, i32 0
  %1535 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1534, align 8
  %1536 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1535, i32 0, i32 0
  %1537 = load i64, i64* %1536, align 8
  %1538 = load i64, i64* %9, align 8
  %1539 = add nsw i64 %1537, %1538
  %1540 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1541 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1540, i32 0, i32 4
  %1542 = load i64, i64* %1541, align 8
  %1543 = call i64 @le16_to_cpu(i64 %1542)
  %1544 = add nsw i64 %1539, %1543
  %1545 = inttoptr i64 %1544 to %struct.TYPE_91__*
  store %struct.TYPE_91__* %1545, %struct.TYPE_91__** %36, align 8
  %1546 = load i32, i32* @GFP_KERNEL, align 4
  %1547 = call i8* @kzalloc(i32 4, i32 %1546)
  %1548 = bitcast i8* %1547 to %struct.TYPE_67__*
  %1549 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1550 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1549, i32 0, i32 0
  %1551 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1550, i32 0, i32 0
  %1552 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1551, i32 0, i32 4
  %1553 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1552, i32 0, i32 3
  store %struct.TYPE_67__* %1548, %struct.TYPE_67__** %1553, align 8
  %1554 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1555 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1554, i32 0, i32 0
  %1556 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1555, i32 0, i32 0
  %1557 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1556, i32 0, i32 4
  %1558 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1557, i32 0, i32 3
  %1559 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1558, align 8
  %1560 = icmp ne %struct.TYPE_67__* %1559, null
  br i1 %1560, label %1566, label %1561

1561:                                             ; preds = %1532
  %1562 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1563 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %1562)
  %1564 = load i32, i32* @ENOMEM, align 4
  %1565 = sub nsw i32 0, %1564
  store i32 %1565, i32* %2, align 4
  br label %2023

1566:                                             ; preds = %1532
  %1567 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1568 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1567, i32 0, i32 9
  %1569 = load i32, i32* %1568, align 8
  %1570 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1571 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1570, i32 0, i32 0
  %1572 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1571, i32 0, i32 0
  %1573 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1572, i32 0, i32 4
  %1574 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1573, i32 0, i32 3
  %1575 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1574, align 8
  %1576 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1575, i32 0, i32 9
  store i32 %1569, i32* %1576, align 8
  %1577 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1578 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1577, i32 0, i32 8
  %1579 = load i64, i64* %1578, align 8
  %1580 = call i64 @le16_to_cpu(i64 %1579)
  %1581 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1582 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1581, i32 0, i32 0
  %1583 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1582, i32 0, i32 0
  %1584 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1583, i32 0, i32 4
  %1585 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1584, i32 0, i32 3
  %1586 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1585, align 8
  %1587 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1586, i32 0, i32 8
  store i64 %1580, i64* %1587, align 8
  %1588 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1589 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1588, i32 0, i32 7
  %1590 = load i32, i32* %1589, align 4
  %1591 = call i8* @le32_to_cpu(i32 %1590)
  %1592 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1593 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1592, i32 0, i32 0
  %1594 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1593, i32 0, i32 0
  %1595 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1594, i32 0, i32 4
  %1596 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1595, i32 0, i32 3
  %1597 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1596, align 8
  %1598 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1597, i32 0, i32 7
  store i8* %1591, i8** %1598, align 8
  %1599 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1600 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1599, i32 0, i32 6
  %1601 = load i32, i32* %1600, align 8
  %1602 = call i8* @le32_to_cpu(i32 %1601)
  %1603 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1604 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1603, i32 0, i32 0
  %1605 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1604, i32 0, i32 0
  %1606 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1605, i32 0, i32 4
  %1607 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1606, i32 0, i32 3
  %1608 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1607, align 8
  %1609 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1608, i32 0, i32 6
  store i8* %1602, i8** %1609, align 8
  %1610 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1611 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1610, i32 0, i32 5
  %1612 = load i32, i32* %1611, align 4
  %1613 = call i8* @le32_to_cpu(i32 %1612)
  %1614 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1615 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1614, i32 0, i32 0
  %1616 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1615, i32 0, i32 0
  %1617 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1616, i32 0, i32 4
  %1618 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1617, i32 0, i32 3
  %1619 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1618, align 8
  %1620 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1619, i32 0, i32 5
  store i8* %1613, i8** %1620, align 8
  %1621 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1622 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1621, i32 0, i32 4
  %1623 = load i32, i32* %1622, align 8
  %1624 = call i8* @le32_to_cpu(i32 %1623)
  %1625 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1626 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1625, i32 0, i32 0
  %1627 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1626, i32 0, i32 0
  %1628 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1627, i32 0, i32 4
  %1629 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1628, i32 0, i32 3
  %1630 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1629, align 8
  %1631 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1630, i32 0, i32 4
  store i8* %1624, i8** %1631, align 8
  %1632 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1633 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1632, i32 0, i32 3
  %1634 = load i32, i32* %1633, align 4
  %1635 = call i8* @le32_to_cpu(i32 %1634)
  %1636 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1637 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1636, i32 0, i32 0
  %1638 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1637, i32 0, i32 0
  %1639 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1638, i32 0, i32 4
  %1640 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1639, i32 0, i32 3
  %1641 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1640, align 8
  %1642 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1641, i32 0, i32 3
  store i8* %1635, i8** %1642, align 8
  %1643 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1644 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1643, i32 0, i32 2
  %1645 = load i32, i32* %1644, align 8
  %1646 = call i8* @le32_to_cpu(i32 %1645)
  %1647 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1648 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1647, i32 0, i32 0
  %1649 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1648, i32 0, i32 0
  %1650 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1649, i32 0, i32 4
  %1651 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1650, i32 0, i32 3
  %1652 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1651, align 8
  %1653 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1652, i32 0, i32 2
  store i8* %1646, i8** %1653, align 8
  %1654 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1655 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1654, i32 0, i32 1
  %1656 = load i32, i32* %1655, align 4
  %1657 = call i8* @le32_to_cpu(i32 %1656)
  %1658 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1659 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1658, i32 0, i32 0
  %1660 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1659, i32 0, i32 0
  %1661 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1660, i32 0, i32 4
  %1662 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1661, i32 0, i32 3
  %1663 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1662, align 8
  %1664 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1663, i32 0, i32 1
  store i8* %1657, i8** %1664, align 8
  %1665 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1666 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1665, i32 0, i32 0
  %1667 = load i32, i32* %1666, align 8
  %1668 = call i8* @le32_to_cpu(i32 %1667)
  %1669 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1670 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1669, i32 0, i32 0
  %1671 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1670, i32 0, i32 0
  %1672 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1671, i32 0, i32 4
  %1673 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1672, i32 0, i32 3
  %1674 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1673, align 8
  %1675 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1674, i32 0, i32 0
  store i8* %1668, i8** %1675, align 8
  br label %1676

1676:                                             ; preds = %1566, %1527, %1520
  %1677 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1678 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1677, i32 0, i32 1
  %1679 = load i64, i64* %1678, align 8
  %1680 = call i64 @le16_to_cpu(i64 %1679)
  %1681 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V6, align 8
  %1682 = icmp sge i64 %1680, %1681
  br i1 %1682, label %1683, label %1798

1683:                                             ; preds = %1676
  %1684 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1685 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1684, i32 0, i32 3
  %1686 = load i64, i64* %1685, align 8
  %1687 = icmp ne i64 %1686, 0
  br i1 %1687, label %1688, label %1798

1688:                                             ; preds = %1683
  %1689 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1690 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1689, i32 0, i32 0
  %1691 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1690, align 8
  %1692 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1691, i32 0, i32 0
  %1693 = load i64, i64* %1692, align 8
  %1694 = load i64, i64* %9, align 8
  %1695 = add nsw i64 %1693, %1694
  %1696 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1697 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1696, i32 0, i32 3
  %1698 = load i64, i64* %1697, align 8
  %1699 = call i64 @le16_to_cpu(i64 %1698)
  %1700 = add nsw i64 %1695, %1699
  %1701 = add nsw i64 %1700, 1
  %1702 = inttoptr i64 %1701 to %struct.TYPE_99__*
  store %struct.TYPE_99__* %1702, %struct.TYPE_99__** %37, align 8
  %1703 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1704 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1703, i32 0, i32 0
  %1705 = load i32, i32* %1704, align 8
  %1706 = sext i32 %1705 to i64
  %1707 = mul i64 %1706, 4
  %1708 = trunc i64 %1707 to i32
  store i32 %1708, i32* %39, align 4
  %1709 = load i32, i32* %39, align 4
  %1710 = load i32, i32* @GFP_KERNEL, align 4
  %1711 = call i8* @kzalloc(i32 %1709, i32 %1710)
  %1712 = bitcast i8* %1711 to %struct.TYPE_68__*
  %1713 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1714 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1713, i32 0, i32 0
  %1715 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1714, i32 0, i32 0
  %1716 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1715, i32 0, i32 4
  %1717 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1716, i32 0, i32 2
  %1718 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1717, i32 0, i32 1
  store %struct.TYPE_68__* %1712, %struct.TYPE_68__** %1718, align 8
  %1719 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1720 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1719, i32 0, i32 0
  %1721 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1720, i32 0, i32 0
  %1722 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1721, i32 0, i32 4
  %1723 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1722, i32 0, i32 2
  %1724 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1723, i32 0, i32 1
  %1725 = load %struct.TYPE_68__*, %struct.TYPE_68__** %1724, align 8
  %1726 = icmp ne %struct.TYPE_68__* %1725, null
  br i1 %1726, label %1732, label %1727

1727:                                             ; preds = %1688
  %1728 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1729 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %1728)
  %1730 = load i32, i32* @ENOMEM, align 4
  %1731 = sub nsw i32 0, %1730
  store i32 %1731, i32* %2, align 4
  br label %2023

1732:                                             ; preds = %1688
  %1733 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1734 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1733, i32 0, i32 0
  %1735 = load i32, i32* %1734, align 8
  %1736 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1737 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1736, i32 0, i32 0
  %1738 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1737, i32 0, i32 0
  %1739 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1738, i32 0, i32 4
  %1740 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1739, i32 0, i32 2
  %1741 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1740, i32 0, i32 0
  store i32 %1735, i32* %1741, align 8
  %1742 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1743 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1742, i32 0, i32 1
  %1744 = load %struct.TYPE_100__*, %struct.TYPE_100__** %1743, align 8
  %1745 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1744, i64 0
  store %struct.TYPE_100__* %1745, %struct.TYPE_100__** %38, align 8
  store i32 0, i32* %13, align 4
  br label %1746

1746:                                             ; preds = %1794, %1732
  %1747 = load i32, i32* %13, align 4
  %1748 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1749 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1748, i32 0, i32 0
  %1750 = load i32, i32* %1749, align 8
  %1751 = icmp slt i32 %1747, %1750
  br i1 %1751, label %1752, label %1797

1752:                                             ; preds = %1746
  %1753 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1754 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1753, i32 0, i32 2
  %1755 = load i64, i64* %1754, align 8
  %1756 = call i64 @le16_to_cpu(i64 %1755)
  %1757 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1758 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1757, i32 0, i32 0
  %1759 = load i32, i32* %1758, align 8
  %1760 = shl i32 %1759, 16
  %1761 = sext i32 %1760 to i64
  %1762 = or i64 %1756, %1761
  %1763 = trunc i64 %1762 to i32
  %1764 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1765 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1764, i32 0, i32 0
  %1766 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1765, i32 0, i32 0
  %1767 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1766, i32 0, i32 4
  %1768 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1767, i32 0, i32 2
  %1769 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1768, i32 0, i32 1
  %1770 = load %struct.TYPE_68__*, %struct.TYPE_68__** %1769, align 8
  %1771 = load i32, i32* %13, align 4
  %1772 = sext i32 %1771 to i64
  %1773 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1770, i64 %1772
  %1774 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1773, i32 0, i32 0
  store i32 %1763, i32* %1774, align 8
  %1775 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1776 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1775, i32 0, i32 1
  %1777 = load i64, i64* %1776, align 8
  %1778 = call i64 @le16_to_cpu(i64 %1777)
  %1779 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1780 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1779, i32 0, i32 0
  %1781 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1780, i32 0, i32 0
  %1782 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1781, i32 0, i32 4
  %1783 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1782, i32 0, i32 2
  %1784 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1783, i32 0, i32 1
  %1785 = load %struct.TYPE_68__*, %struct.TYPE_68__** %1784, align 8
  %1786 = load i32, i32* %13, align 4
  %1787 = sext i32 %1786 to i64
  %1788 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1785, i64 %1787
  %1789 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1788, i32 0, i32 1
  store i64 %1778, i64* %1789, align 8
  %1790 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1791 = bitcast %struct.TYPE_100__* %1790 to i64*
  %1792 = getelementptr inbounds i64, i64* %1791, i64 24
  %1793 = bitcast i64* %1792 to %struct.TYPE_100__*
  store %struct.TYPE_100__* %1793, %struct.TYPE_100__** %38, align 8
  br label %1794

1794:                                             ; preds = %1752
  %1795 = load i32, i32* %13, align 4
  %1796 = add nsw i32 %1795, 1
  store i32 %1796, i32* %13, align 4
  br label %1746

1797:                                             ; preds = %1746
  br label %1798

1798:                                             ; preds = %1797, %1683, %1676
  %1799 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1800 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1799, i32 0, i32 1
  %1801 = load i64, i64* %1800, align 8
  %1802 = call i64 @le16_to_cpu(i64 %1801)
  %1803 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V7, align 8
  %1804 = icmp sge i64 %1802, %1803
  br i1 %1804, label %1805, label %1975

1805:                                             ; preds = %1798
  %1806 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1807 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1806, i32 0, i32 2
  %1808 = load i64, i64* %1807, align 8
  %1809 = icmp ne i64 %1808, 0
  br i1 %1809, label %1810, label %1975

1810:                                             ; preds = %1805
  %1811 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1812 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1811, i32 0, i32 0
  %1813 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1812, align 8
  %1814 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1813, i32 0, i32 0
  %1815 = load i64, i64* %1814, align 8
  %1816 = load i64, i64* %9, align 8
  %1817 = add nsw i64 %1815, %1816
  %1818 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1819 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1818, i32 0, i32 2
  %1820 = load i64, i64* %1819, align 8
  %1821 = call i64 @le16_to_cpu(i64 %1820)
  %1822 = add nsw i64 %1817, %1821
  %1823 = inttoptr i64 %1822 to i64*
  %1824 = load i64, i64* %1823, align 8
  store i64 %1824, i64* %40, align 8
  %1825 = load i32, i32* @GFP_KERNEL, align 4
  %1826 = call i8* @kzalloc(i32 4, i32 %1825)
  %1827 = bitcast i8* %1826 to %struct.TYPE_70__*
  %1828 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1829 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1828, i32 0, i32 0
  %1830 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1829, i32 0, i32 0
  %1831 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1830, i32 0, i32 4
  %1832 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1831, i32 0, i32 1
  store %struct.TYPE_70__* %1827, %struct.TYPE_70__** %1832, align 8
  %1833 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1834 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1833, i32 0, i32 0
  %1835 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1834, i32 0, i32 0
  %1836 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1835, i32 0, i32 4
  %1837 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1836, i32 0, i32 1
  %1838 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1837, align 8
  %1839 = icmp ne %struct.TYPE_70__* %1838, null
  br i1 %1839, label %1845, label %1840

1840:                                             ; preds = %1810
  %1841 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1842 = call i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device* %1841)
  %1843 = load i32, i32* @ENOMEM, align 4
  %1844 = sub nsw i32 0, %1843
  store i32 %1844, i32* %2, align 4
  br label %2023

1845:                                             ; preds = %1810
  %1846 = load i64, i64* %40, align 8
  %1847 = icmp sgt i64 %1846, 0
  br i1 %1847, label %1848, label %1874

1848:                                             ; preds = %1845
  %1849 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1850 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1849, i32 0, i32 0
  %1851 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1850, align 8
  %1852 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1851, i32 0, i32 0
  %1853 = load i64, i64* %1852, align 8
  %1854 = load i64, i64* %9, align 8
  %1855 = add nsw i64 %1853, %1854
  %1856 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1857 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1856, i32 0, i32 2
  %1858 = load i64, i64* %1857, align 8
  %1859 = call i64 @le16_to_cpu(i64 %1858)
  %1860 = add nsw i64 %1855, %1859
  %1861 = inttoptr i64 %1860 to %struct.TYPE_92__*
  store %struct.TYPE_92__* %1861, %struct.TYPE_92__** %42, align 8
  %1862 = load %struct.TYPE_92__*, %struct.TYPE_92__** %42, align 8
  %1863 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %1862, i32 0, i32 0
  %1864 = load i32, i32* %1863, align 8
  %1865 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1866 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1865, i32 0, i32 0
  %1867 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1866, i32 0, i32 0
  %1868 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1867, i32 0, i32 4
  %1869 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1868, i32 0, i32 1
  %1870 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1869, align 8
  %1871 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1870, i32 0, i32 0
  store i32 %1864, i32* %1871, align 8
  %1872 = load %struct.TYPE_92__*, %struct.TYPE_92__** %42, align 8
  %1873 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %1872, i32 0, i32 1
  store %struct.TYPE_79__* %1873, %struct.TYPE_79__** %41, align 8
  br label %1897

1874:                                             ; preds = %1845
  %1875 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1876 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1875, i32 0, i32 0
  %1877 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1876, align 8
  %1878 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1877, i32 0, i32 0
  %1879 = load i64, i64* %1878, align 8
  %1880 = load i64, i64* %9, align 8
  %1881 = add nsw i64 %1879, %1880
  %1882 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1883 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1882, i32 0, i32 2
  %1884 = load i64, i64* %1883, align 8
  %1885 = call i64 @le16_to_cpu(i64 %1884)
  %1886 = add nsw i64 %1881, %1885
  %1887 = inttoptr i64 %1886 to %struct.TYPE_93__*
  store %struct.TYPE_93__* %1887, %struct.TYPE_93__** %43, align 8
  %1888 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1889 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1888, i32 0, i32 0
  %1890 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1889, i32 0, i32 0
  %1891 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1890, i32 0, i32 4
  %1892 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1891, i32 0, i32 1
  %1893 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1892, align 8
  %1894 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1893, i32 0, i32 0
  store i32 255, i32* %1894, align 8
  %1895 = load %struct.TYPE_93__*, %struct.TYPE_93__** %43, align 8
  %1896 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %1895, i32 0, i32 0
  store %struct.TYPE_79__* %1896, %struct.TYPE_79__** %41, align 8
  br label %1897

1897:                                             ; preds = %1874, %1848
  %1898 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1899 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1898, i32 0, i32 6
  %1900 = load i64, i64* %1899, align 8
  %1901 = call i64 @le16_to_cpu(i64 %1900)
  %1902 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1903 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1902, i32 0, i32 0
  %1904 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1903, i32 0, i32 0
  %1905 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1904, i32 0, i32 4
  %1906 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1905, i32 0, i32 1
  %1907 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1906, align 8
  %1908 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1907, i32 0, i32 7
  store i64 %1901, i64* %1908, align 8
  %1909 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1910 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1909, i32 0, i32 5
  %1911 = load i64, i64* %1910, align 8
  %1912 = call i64 @le16_to_cpu(i64 %1911)
  %1913 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1914 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1913, i32 0, i32 0
  %1915 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1914, i32 0, i32 0
  %1916 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1915, i32 0, i32 4
  %1917 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1916, i32 0, i32 1
  %1918 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1917, align 8
  %1919 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1918, i32 0, i32 6
  store i64 %1912, i64* %1919, align 8
  %1920 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1921 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1920, i32 0, i32 4
  %1922 = load i64, i64* %1921, align 8
  %1923 = call i64 @le16_to_cpu(i64 %1922)
  %1924 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1925 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1924, i32 0, i32 0
  %1926 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1925, i32 0, i32 0
  %1927 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1926, i32 0, i32 4
  %1928 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1927, i32 0, i32 1
  %1929 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1928, align 8
  %1930 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1929, i32 0, i32 5
  store i64 %1923, i64* %1930, align 8
  %1931 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1932 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1931, i32 0, i32 3
  %1933 = load i64, i64* %1932, align 8
  %1934 = call i64 @le16_to_cpu(i64 %1933)
  %1935 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1936 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1935, i32 0, i32 0
  %1937 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1936, i32 0, i32 0
  %1938 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1937, i32 0, i32 4
  %1939 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1938, i32 0, i32 1
  %1940 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1939, align 8
  %1941 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1940, i32 0, i32 4
  store i64 %1934, i64* %1941, align 8
  %1942 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1943 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1942, i32 0, i32 2
  %1944 = load i64, i64* %1943, align 8
  %1945 = call i64 @le16_to_cpu(i64 %1944)
  %1946 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1947 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1946, i32 0, i32 0
  %1948 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1947, i32 0, i32 0
  %1949 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1948, i32 0, i32 4
  %1950 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1949, i32 0, i32 1
  %1951 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1950, align 8
  %1952 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1951, i32 0, i32 3
  store i64 %1945, i64* %1952, align 8
  %1953 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1954 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1953, i32 0, i32 1
  %1955 = load i64, i64* %1954, align 8
  %1956 = call i64 @le16_to_cpu(i64 %1955)
  %1957 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1958 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1957, i32 0, i32 0
  %1959 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1958, i32 0, i32 0
  %1960 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1959, i32 0, i32 4
  %1961 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1960, i32 0, i32 1
  %1962 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1961, align 8
  %1963 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1962, i32 0, i32 2
  store i64 %1956, i64* %1963, align 8
  %1964 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1965 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1964, i32 0, i32 0
  %1966 = load i64, i64* %1965, align 8
  %1967 = call i64 @le16_to_cpu(i64 %1966)
  %1968 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %1969 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %1968, i32 0, i32 0
  %1970 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1969, i32 0, i32 0
  %1971 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1970, i32 0, i32 4
  %1972 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1971, i32 0, i32 1
  %1973 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1972, align 8
  %1974 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1973, i32 0, i32 1
  store i64 %1967, i64* %1974, align 8
  br label %1975

1975:                                             ; preds = %1897, %1805, %1798
  %1976 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1977 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1976, i32 0, i32 1
  %1978 = load i64, i64* %1977, align 8
  %1979 = call i64 @le16_to_cpu(i64 %1978)
  %1980 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V8, align 8
  %1981 = icmp sge i64 %1979, %1980
  br i1 %1981, label %1982, label %2021

1982:                                             ; preds = %1975
  %1983 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1984 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1983, i32 0, i32 0
  %1985 = load i64, i64* %1984, align 8
  %1986 = icmp ne i64 %1985, 0
  br i1 %1986, label %1987, label %2021

1987:                                             ; preds = %1982
  %1988 = load %struct.amdgpu_mode_info*, %struct.amdgpu_mode_info** %4, align 8
  %1989 = getelementptr inbounds %struct.amdgpu_mode_info, %struct.amdgpu_mode_info* %1988, i32 0, i32 0
  %1990 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1989, align 8
  %1991 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1990, i32 0, i32 0
  %1992 = load i64, i64* %1991, align 8
  %1993 = load i64, i64* %9, align 8
  %1994 = add nsw i64 %1992, %1993
  %1995 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1996 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1995, i32 0, i32 0
  %1997 = load i64, i64* %1996, align 8
  %1998 = call i64 @le16_to_cpu(i64 %1997)
  %1999 = add nsw i64 %1994, %1998
  %2000 = inttoptr i64 %1999 to i32*
  store i32* %2000, i32** %7, align 8
  %2001 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %2002 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %2001, i32 0, i32 0
  %2003 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %2002, i32 0, i32 0
  %2004 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %2003, i32 0, i32 4
  %2005 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %2004, i32 0, i32 0
  %2006 = load i32*, i32** %7, align 8
  %2007 = call i32 @amdgpu_parse_clk_voltage_dep_table(%struct.TYPE_102__* %2005, i32* %2006)
  store i32 %2007, i32* %12, align 4
  %2008 = load i32, i32* %12, align 4
  %2009 = icmp ne i32 %2008, 0
  br i1 %2009, label %2010, label %2020

2010:                                             ; preds = %1987
  %2011 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %2012 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %2011, i32 0, i32 0
  %2013 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %2012, i32 0, i32 0
  %2014 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %2013, i32 0, i32 4
  %2015 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %2014, i32 0, i32 0
  %2016 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %2015, i32 0, i32 0
  %2017 = load i32, i32* %2016, align 8
  %2018 = call i32 @kfree(i32 %2017)
  %2019 = load i32, i32* %12, align 4
  store i32 %2019, i32* %2, align 4
  br label %2023

2020:                                             ; preds = %1987
  br label %2021

2021:                                             ; preds = %2020, %1982, %1975
  br label %2022

2022:                                             ; preds = %2021, %877
  store i32 0, i32* %2, align 4
  br label %2023

2023:                                             ; preds = %2022, %2010, %1840, %1727, %1561, %1449, %1293, %998, %756, %525, %381, %346, %311, %276, %55
  %2024 = load i32, i32* %2, align 4
  ret i32 %2024
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_data_header(%struct.TYPE_103__*, i32, i32*, i64*, i64*, i64*) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @amdgpu_parse_clk_voltage_dep_table(%struct.TYPE_102__*, i32*) #1

declare dso_local i32 @amdgpu_free_extended_power_table(%struct.amdgpu_device*) #1

declare dso_local %struct.TYPE_101__* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
