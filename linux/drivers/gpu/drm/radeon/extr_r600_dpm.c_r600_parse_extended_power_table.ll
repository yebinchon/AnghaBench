; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_parse_extended_power_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_parse_extended_power_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_73__, %struct.radeon_mode_info }
%struct.TYPE_73__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i32, i32, i32, %struct.TYPE_71__, %struct.TYPE_61__*, i64, i8*, i8*, i64, i8*, i8*, i8*, %struct.TYPE_98__ }
%struct.TYPE_71__ = type { %struct.TYPE_70__*, %struct.TYPE_69__, %struct.TYPE_67__*, %struct.TYPE_66__, %struct.TYPE_63__, %struct.TYPE_60__, %struct.TYPE_56__, %struct.TYPE_107__, %struct.TYPE_104__, %struct.TYPE_101__, %struct.TYPE_101__, %struct.TYPE_101__, %struct.TYPE_101__ }
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
%struct.TYPE_107__ = type { i32, %struct.TYPE_102__* }
%struct.TYPE_102__ = type { i32, i32, i64 }
%struct.TYPE_104__ = type { i32, i32, i64, i64 }
%struct.TYPE_101__ = type { i32 }
%struct.TYPE_61__ = type { i32, i32, i32, i32 }
%struct.TYPE_98__ = type { i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.radeon_mode_info = type { %struct.TYPE_103__* }
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
%struct.TYPE_94__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_74__ = type { i32, i32* }
%struct.TYPE_82__ = type { i32, %struct.TYPE_83__* }
%struct.TYPE_83__ = type { i32, i64 }
%struct.TYPE_80__ = type { i32, %struct.TYPE_81__* }
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
%struct.TYPE_92__ = type { %struct.TYPE_79__, i64 }
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
@RADEON_MAX_VCE_LEVELS = common dso_local global i32 0, align 4
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V3 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V4 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V6 = common dso_local global i64 0, align 8
@SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V7 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_parse_extended_power_table(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
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
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  store %struct.radeon_mode_info* %45, %struct.radeon_mode_info** %4, align 8
  %46 = load i32, i32* @DATA, align 4
  %47 = load i32, i32* @PowerPlayInfo, align 4
  %48 = call i32 @GetIndexIntoMasterTable(i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_103__*, %struct.TYPE_103__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @atom_parse_data_header(%struct.TYPE_103__* %51, i32 %52, i32* null, i64* %10, i64* %11, i64* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %1
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %2004

58:                                               ; preds = %1
  %59 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %59, i32 0, i32 0
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
  %80 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %81 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %80, i32 0, i32 0
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
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %100, i32 0, i32 12
  %102 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %101, i32 0, i32 13
  store i32 %97, i32* %102, align 8
  %103 = load %union.fan_info*, %union.fan_info** %6, align 8
  %104 = bitcast %union.fan_info* %103 to %struct.TYPE_76__*
  %105 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @le16_to_cpu(i64 %106)
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %110, i32 0, i32 12
  %112 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %111, i32 0, i32 12
  store i64 %107, i64* %112, align 8
  %113 = load %union.fan_info*, %union.fan_info** %6, align 8
  %114 = bitcast %union.fan_info* %113 to %struct.TYPE_76__*
  %115 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @le16_to_cpu(i64 %116)
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %120, i32 0, i32 12
  %122 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %121, i32 0, i32 11
  store i64 %117, i64* %122, align 8
  %123 = load %union.fan_info*, %union.fan_info** %6, align 8
  %124 = bitcast %union.fan_info* %123 to %struct.TYPE_76__*
  %125 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @le16_to_cpu(i64 %126)
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %130, i32 0, i32 12
  %132 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %131, i32 0, i32 10
  store i64 %127, i64* %132, align 8
  %133 = load %union.fan_info*, %union.fan_info** %6, align 8
  %134 = bitcast %union.fan_info* %133 to %struct.TYPE_76__*
  %135 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @le16_to_cpu(i64 %136)
  %138 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %140, i32 0, i32 12
  %142 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %141, i32 0, i32 9
  store i64 %137, i64* %142, align 8
  %143 = load %union.fan_info*, %union.fan_info** %6, align 8
  %144 = bitcast %union.fan_info* %143 to %struct.TYPE_76__*
  %145 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @le16_to_cpu(i64 %146)
  %148 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %150, i32 0, i32 12
  %152 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %151, i32 0, i32 8
  store i64 %147, i64* %152, align 8
  %153 = load %union.fan_info*, %union.fan_info** %6, align 8
  %154 = bitcast %union.fan_info* %153 to %struct.TYPE_76__*
  %155 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @le16_to_cpu(i64 %156)
  %158 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %160, i32 0, i32 12
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
  %175 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %176 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %177, i32 0, i32 12
  %179 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %178, i32 0, i32 0
  store i32 %174, i32* %179, align 8
  br label %186

180:                                              ; preds = %79
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %183, i32 0, i32 12
  %185 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %184, i32 0, i32 0
  store i32 10900, i32* %185, align 8
  br label %186

186:                                              ; preds = %180, %168
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %189, i32 0, i32 12
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
  %202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %204, i32 0, i32 12
  %206 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %205, i32 0, i32 6
  store i32 %201, i32* %206, align 8
  %207 = load %union.fan_info*, %union.fan_info** %6, align 8
  %208 = bitcast %union.fan_info* %207 to %struct.TYPE_87__*
  %209 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @le16_to_cpu(i64 %210)
  %212 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %213 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %214, i32 0, i32 12
  %216 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %215, i32 0, i32 5
  store i64 %211, i64* %216, align 8
  %217 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %219, i32 0, i32 12
  %221 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %220, i32 0, i32 2
  store i32 4836, i32* %221, align 8
  %222 = load %union.fan_info*, %union.fan_info** %6, align 8
  %223 = bitcast %union.fan_info* %222 to %struct.TYPE_87__*
  %224 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @le16_to_cpu(i64 %225)
  %227 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %229, i32 0, i32 12
  %231 = getelementptr inbounds %struct.TYPE_98__, %struct.TYPE_98__* %230, i32 0, i32 4
  store i64 %226, i64* %231, align 8
  br label %232

232:                                              ; preds = %197, %186
  %233 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %234 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %235, i32 0, i32 12
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
  br i1 %245, label %246, label %659

246:                                              ; preds = %239
  %247 = load %union.power_info*, %union.power_info** %5, align 8
  %248 = bitcast %union.power_info* %247 to %struct.TYPE_106__*
  %249 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %279

252:                                              ; preds = %246
  %253 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %254 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %253, i32 0, i32 0
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
  %267 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %268 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %270, i32 0, i32 11
  %272 = load i32*, i32** %7, align 8
  %273 = call i32 @r600_parse_clk_voltage_dep_table(%struct.TYPE_101__* %271, i32* %272)
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %12, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %252
  %277 = load i32, i32* %12, align 4
  store i32 %277, i32* %2, align 4
  br label %2004

278:                                              ; preds = %252
  br label %279

279:                                              ; preds = %278, %246
  %280 = load %union.power_info*, %union.power_info** %5, align 8
  %281 = bitcast %union.power_info* %280 to %struct.TYPE_106__*
  %282 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %320

285:                                              ; preds = %279
  %286 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %287 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %286, i32 0, i32 0
  %288 = load %struct.TYPE_103__*, %struct.TYPE_103__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %9, align 8
  %292 = add nsw i64 %290, %291
  %293 = load %union.power_info*, %union.power_info** %5, align 8
  %294 = bitcast %union.power_info* %293 to %struct.TYPE_106__*
  %295 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %294, i32 0, i32 4
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @le16_to_cpu(i64 %296)
  %298 = add nsw i64 %292, %297
  %299 = inttoptr i64 %298 to i32*
  store i32* %299, i32** %7, align 8
  %300 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %301 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %303, i32 0, i32 10
  %305 = load i32*, i32** %7, align 8
  %306 = call i32 @r600_parse_clk_voltage_dep_table(%struct.TYPE_101__* %304, i32* %305)
  store i32 %306, i32* %12, align 4
  %307 = load i32, i32* %12, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %285
  %310 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %311 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %313, i32 0, i32 11
  %315 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @kfree(i32 %316)
  %318 = load i32, i32* %12, align 4
  store i32 %318, i32* %2, align 4
  br label %2004

319:                                              ; preds = %285
  br label %320

320:                                              ; preds = %319, %279
  %321 = load %union.power_info*, %union.power_info** %5, align 8
  %322 = bitcast %union.power_info* %321 to %struct.TYPE_106__*
  %323 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %369

326:                                              ; preds = %320
  %327 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %328 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %327, i32 0, i32 0
  %329 = load %struct.TYPE_103__*, %struct.TYPE_103__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* %9, align 8
  %333 = add nsw i64 %331, %332
  %334 = load %union.power_info*, %union.power_info** %5, align 8
  %335 = bitcast %union.power_info* %334 to %struct.TYPE_106__*
  %336 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = call i64 @le16_to_cpu(i64 %337)
  %339 = add nsw i64 %333, %338
  %340 = inttoptr i64 %339 to i32*
  store i32* %340, i32** %7, align 8
  %341 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %342 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %344, i32 0, i32 9
  %346 = load i32*, i32** %7, align 8
  %347 = call i32 @r600_parse_clk_voltage_dep_table(%struct.TYPE_101__* %345, i32* %346)
  store i32 %347, i32* %12, align 4
  %348 = load i32, i32* %12, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %368

350:                                              ; preds = %326
  %351 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %352 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %354, i32 0, i32 11
  %356 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @kfree(i32 %357)
  %359 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %360 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %362, i32 0, i32 10
  %364 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @kfree(i32 %365)
  %367 = load i32, i32* %12, align 4
  store i32 %367, i32* %2, align 4
  br label %2004

368:                                              ; preds = %326
  br label %369

369:                                              ; preds = %368, %320
  %370 = load %union.power_info*, %union.power_info** %5, align 8
  %371 = bitcast %union.power_info* %370 to %struct.TYPE_106__*
  %372 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %426

375:                                              ; preds = %369
  %376 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %377 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %376, i32 0, i32 0
  %378 = load %struct.TYPE_103__*, %struct.TYPE_103__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* %9, align 8
  %382 = add nsw i64 %380, %381
  %383 = load %union.power_info*, %union.power_info** %5, align 8
  %384 = bitcast %union.power_info* %383 to %struct.TYPE_106__*
  %385 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = call i64 @le16_to_cpu(i64 %386)
  %388 = add nsw i64 %382, %387
  %389 = inttoptr i64 %388 to i32*
  store i32* %389, i32** %7, align 8
  %390 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %391 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %393, i32 0, i32 12
  %395 = load i32*, i32** %7, align 8
  %396 = call i32 @r600_parse_clk_voltage_dep_table(%struct.TYPE_101__* %394, i32* %395)
  store i32 %396, i32* %12, align 4
  %397 = load i32, i32* %12, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %425

399:                                              ; preds = %375
  %400 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %401 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %403, i32 0, i32 11
  %405 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @kfree(i32 %406)
  %408 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %409 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %411, i32 0, i32 10
  %413 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @kfree(i32 %414)
  %416 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %417 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %419, i32 0, i32 9
  %421 = getelementptr inbounds %struct.TYPE_101__, %struct.TYPE_101__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @kfree(i32 %422)
  %424 = load i32, i32* %12, align 4
  store i32 %424, i32* %2, align 4
  br label %2004

425:                                              ; preds = %375
  br label %426

426:                                              ; preds = %425, %369
  %427 = load %union.power_info*, %union.power_info** %5, align 8
  %428 = bitcast %union.power_info* %427 to %struct.TYPE_106__*
  %429 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %525

432:                                              ; preds = %426
  %433 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %434 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %433, i32 0, i32 0
  %435 = load %struct.TYPE_103__*, %struct.TYPE_103__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* %9, align 8
  %439 = add nsw i64 %437, %438
  %440 = load %union.power_info*, %union.power_info** %5, align 8
  %441 = bitcast %union.power_info* %440 to %struct.TYPE_106__*
  %442 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = call i64 @le16_to_cpu(i64 %443)
  %445 = add nsw i64 %439, %444
  %446 = inttoptr i64 %445 to %struct.TYPE_95__*
  store %struct.TYPE_95__* %446, %struct.TYPE_95__** %14, align 8
  %447 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %524

451:                                              ; preds = %432
  %452 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %453 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %452, i32 0, i32 0
  %454 = load %struct.TYPE_105__*, %struct.TYPE_105__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %454, i64 0
  %456 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %455, i32 0, i32 5
  %457 = load i64, i64* %456, align 8
  %458 = call i64 @le16_to_cpu(i64 %457)
  %459 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %460 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %459, i32 0, i32 0
  %461 = load %struct.TYPE_105__*, %struct.TYPE_105__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %461, i64 0
  %463 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = shl i32 %464, 16
  %466 = sext i32 %465 to i64
  %467 = or i64 %458, %466
  %468 = trunc i64 %467 to i32
  %469 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %470 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %471, i32 0, i32 3
  %473 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %472, i32 0, i32 8
  %474 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %473, i32 0, i32 0
  store i32 %468, i32* %474, align 8
  %475 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %476 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_105__*, %struct.TYPE_105__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %477, i64 0
  %479 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %478, i32 0, i32 4
  %480 = load i64, i64* %479, align 8
  %481 = call i64 @le16_to_cpu(i64 %480)
  %482 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %483 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %482, i32 0, i32 0
  %484 = load %struct.TYPE_105__*, %struct.TYPE_105__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %484, i64 0
  %486 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = shl i32 %487, 16
  %489 = sext i32 %488 to i64
  %490 = or i64 %481, %489
  %491 = trunc i64 %490 to i32
  %492 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %493 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %494, i32 0, i32 3
  %496 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %495, i32 0, i32 8
  %497 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %496, i32 0, i32 1
  store i32 %491, i32* %497, align 4
  %498 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %499 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %498, i32 0, i32 0
  %500 = load %struct.TYPE_105__*, %struct.TYPE_105__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %500, i64 0
  %502 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %501, i32 0, i32 3
  %503 = load i64, i64* %502, align 8
  %504 = call i64 @le16_to_cpu(i64 %503)
  %505 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %506 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %507, i32 0, i32 3
  %509 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %508, i32 0, i32 8
  %510 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %509, i32 0, i32 3
  store i64 %504, i64* %510, align 8
  %511 = load %struct.TYPE_95__*, %struct.TYPE_95__** %14, align 8
  %512 = getelementptr inbounds %struct.TYPE_95__, %struct.TYPE_95__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_105__*, %struct.TYPE_105__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %513, i64 0
  %515 = getelementptr inbounds %struct.TYPE_105__, %struct.TYPE_105__* %514, i32 0, i32 2
  %516 = load i64, i64* %515, align 8
  %517 = call i64 @le16_to_cpu(i64 %516)
  %518 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %519 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %520, i32 0, i32 3
  %522 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %521, i32 0, i32 8
  %523 = getelementptr inbounds %struct.TYPE_104__, %struct.TYPE_104__* %522, i32 0, i32 2
  store i64 %517, i64* %523, align 8
  br label %524

524:                                              ; preds = %451, %432
  br label %525

525:                                              ; preds = %524, %426
  %526 = load %union.power_info*, %union.power_info** %5, align 8
  %527 = bitcast %union.power_info* %526 to %struct.TYPE_106__*
  %528 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %658

531:                                              ; preds = %525
  %532 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %533 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %532, i32 0, i32 0
  %534 = load %struct.TYPE_103__*, %struct.TYPE_103__** %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* %9, align 8
  %538 = add nsw i64 %536, %537
  %539 = load %union.power_info*, %union.power_info** %5, align 8
  %540 = bitcast %union.power_info* %539 to %struct.TYPE_106__*
  %541 = getelementptr inbounds %struct.TYPE_106__, %struct.TYPE_106__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = call i64 @le16_to_cpu(i64 %542)
  %544 = add nsw i64 %538, %543
  %545 = inttoptr i64 %544 to %struct.TYPE_89__*
  store %struct.TYPE_89__* %545, %struct.TYPE_89__** %15, align 8
  %546 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %547 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* @GFP_KERNEL, align 4
  %550 = call %struct.TYPE_102__* @kcalloc(i32 %548, i32 4, i32 %549)
  %551 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %552 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %553, i32 0, i32 3
  %555 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %554, i32 0, i32 7
  %556 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %555, i32 0, i32 1
  store %struct.TYPE_102__* %550, %struct.TYPE_102__** %556, align 8
  %557 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %558 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %559, i32 0, i32 3
  %561 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %560, i32 0, i32 7
  %562 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %561, i32 0, i32 1
  %563 = load %struct.TYPE_102__*, %struct.TYPE_102__** %562, align 8
  %564 = icmp ne %struct.TYPE_102__* %563, null
  br i1 %564, label %570, label %565

565:                                              ; preds = %531
  %566 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %567 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %566)
  %568 = load i32, i32* @ENOMEM, align 4
  %569 = sub nsw i32 0, %568
  store i32 %569, i32* %2, align 4
  br label %2004

570:                                              ; preds = %531
  %571 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %572 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %571, i32 0, i32 1
  %573 = load %struct.TYPE_90__*, %struct.TYPE_90__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %573, i64 0
  store %struct.TYPE_90__* %574, %struct.TYPE_90__** %16, align 8
  store i32 0, i32* %13, align 4
  br label %575

575:                                              ; preds = %645, %570
  %576 = load i32, i32* %13, align 4
  %577 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %578 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = icmp slt i32 %576, %579
  br i1 %580, label %581, label %648

581:                                              ; preds = %575
  %582 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %583 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %582, i32 0, i32 4
  %584 = load i64, i64* %583, align 8
  %585 = call i64 @le16_to_cpu(i64 %584)
  %586 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %587 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = shl i32 %588, 16
  %590 = sext i32 %589 to i64
  %591 = or i64 %585, %590
  %592 = trunc i64 %591 to i32
  %593 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %594 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %595, i32 0, i32 3
  %597 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %596, i32 0, i32 7
  %598 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %597, i32 0, i32 1
  %599 = load %struct.TYPE_102__*, %struct.TYPE_102__** %598, align 8
  %600 = load i32, i32* %13, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %599, i64 %601
  %603 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %602, i32 0, i32 0
  store i32 %592, i32* %603, align 8
  %604 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %605 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %604, i32 0, i32 3
  %606 = load i64, i64* %605, align 8
  %607 = call i64 @le16_to_cpu(i64 %606)
  %608 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %609 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 4
  %611 = shl i32 %610, 16
  %612 = sext i32 %611 to i64
  %613 = or i64 %607, %612
  %614 = trunc i64 %613 to i32
  %615 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %616 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %615, i32 0, i32 0
  %617 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %617, i32 0, i32 3
  %619 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %619, i32 0, i32 1
  %621 = load %struct.TYPE_102__*, %struct.TYPE_102__** %620, align 8
  %622 = load i32, i32* %13, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %621, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %624, i32 0, i32 1
  store i32 %614, i32* %625, align 4
  %626 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %627 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %626, i32 0, i32 2
  %628 = load i64, i64* %627, align 8
  %629 = call i64 @le16_to_cpu(i64 %628)
  %630 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %631 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %630, i32 0, i32 0
  %632 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %631, i32 0, i32 0
  %633 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %632, i32 0, i32 3
  %634 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %633, i32 0, i32 7
  %635 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %634, i32 0, i32 1
  %636 = load %struct.TYPE_102__*, %struct.TYPE_102__** %635, align 8
  %637 = load i32, i32* %13, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %636, i64 %638
  %640 = getelementptr inbounds %struct.TYPE_102__, %struct.TYPE_102__* %639, i32 0, i32 2
  store i64 %629, i64* %640, align 8
  %641 = load %struct.TYPE_90__*, %struct.TYPE_90__** %16, align 8
  %642 = bitcast %struct.TYPE_90__* %641 to i64*
  %643 = getelementptr inbounds i64, i64* %642, i64 32
  %644 = bitcast i64* %643 to %struct.TYPE_90__*
  store %struct.TYPE_90__* %644, %struct.TYPE_90__** %16, align 8
  br label %645

645:                                              ; preds = %581
  %646 = load i32, i32* %13, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %13, align 4
  br label %575

648:                                              ; preds = %575
  %649 = load %struct.TYPE_89__*, %struct.TYPE_89__** %15, align 8
  %650 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 8
  %652 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %653 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %652, i32 0, i32 0
  %654 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %653, i32 0, i32 0
  %655 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %654, i32 0, i32 3
  %656 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %655, i32 0, i32 7
  %657 = getelementptr inbounds %struct.TYPE_107__, %struct.TYPE_107__* %656, i32 0, i32 0
  store i32 %651, i32* %657, align 8
  br label %658

658:                                              ; preds = %648, %525
  br label %659

659:                                              ; preds = %658, %239
  %660 = load %union.power_info*, %union.power_info** %5, align 8
  %661 = bitcast %union.power_info* %660 to %struct.TYPE_57__*
  %662 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %661, i32 0, i32 0
  %663 = load i64, i64* %662, align 8
  %664 = call i64 @le16_to_cpu(i64 %663)
  %665 = icmp uge i64 %664, 4
  br i1 %665, label %666, label %917

666:                                              ; preds = %659
  %667 = load %union.power_info*, %union.power_info** %5, align 8
  %668 = bitcast %union.power_info* %667 to %struct.TYPE_108__*
  %669 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %668, i32 0, i32 6
  %670 = load i32, i32* %669, align 4
  %671 = call i8* @le32_to_cpu(i32 %670)
  %672 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %673 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %673, i32 0, i32 0
  %675 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %674, i32 0, i32 11
  store i8* %671, i8** %675, align 8
  %676 = load %union.power_info*, %union.power_info** %5, align 8
  %677 = bitcast %union.power_info* %676 to %struct.TYPE_108__*
  %678 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %677, i32 0, i32 5
  %679 = load i32, i32* %678, align 8
  %680 = call i8* @le32_to_cpu(i32 %679)
  %681 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %682 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %683, i32 0, i32 9
  store i8* %680, i8** %684, align 8
  %685 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %686 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %686, i32 0, i32 0
  %688 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %687, i32 0, i32 9
  %689 = load i8*, i8** %688, align 8
  %690 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %691 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %692, i32 0, i32 10
  store i8* %689, i8** %693, align 8
  %694 = load %union.power_info*, %union.power_info** %5, align 8
  %695 = bitcast %union.power_info* %694 to %struct.TYPE_108__*
  %696 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %695, i32 0, i32 4
  %697 = load i64, i64* %696, align 8
  %698 = call i64 @le16_to_cpu(i64 %697)
  %699 = trunc i64 %698 to i32
  %700 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %701 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %700, i32 0, i32 0
  %702 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %702, i32 0, i32 0
  store i32 %699, i32* %703, align 8
  %704 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %705 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %704, i32 0, i32 0
  %706 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %705, i32 0, i32 0
  %707 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 8
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %715

710:                                              ; preds = %666
  %711 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %712 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %711, i32 0, i32 0
  %713 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %712, i32 0, i32 0
  %714 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %713, i32 0, i32 1
  store i32 1, i32* %714, align 4
  br label %720

715:                                              ; preds = %666
  %716 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %717 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %716, i32 0, i32 0
  %718 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %717, i32 0, i32 0
  %719 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %718, i32 0, i32 1
  store i32 0, i32* %719, align 4
  br label %720

720:                                              ; preds = %715, %710
  %721 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %722 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %721, i32 0, i32 0
  %723 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %722, i32 0, i32 0
  %724 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %723, i32 0, i32 8
  store i64 0, i64* %724, align 8
  %725 = load %union.power_info*, %union.power_info** %5, align 8
  %726 = bitcast %union.power_info* %725 to %struct.TYPE_108__*
  %727 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %726, i32 0, i32 3
  %728 = load i32, i32* %727, align 4
  %729 = call i8* @le32_to_cpu(i32 %728)
  %730 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %731 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %730, i32 0, i32 0
  %732 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %731, i32 0, i32 0
  %733 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %732, i32 0, i32 7
  store i8* %729, i8** %733, align 8
  %734 = load %union.power_info*, %union.power_info** %5, align 8
  %735 = bitcast %union.power_info* %734 to %struct.TYPE_108__*
  %736 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %735, i32 0, i32 2
  %737 = load i32, i32* %736, align 8
  %738 = call i8* @le32_to_cpu(i32 %737)
  %739 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %740 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %740, i32 0, i32 0
  %742 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %741, i32 0, i32 6
  store i8* %738, i8** %742, align 8
  %743 = load %union.power_info*, %union.power_info** %5, align 8
  %744 = bitcast %union.power_info* %743 to %struct.TYPE_108__*
  %745 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %744, i32 0, i32 1
  %746 = load i64, i64* %745, align 8
  %747 = call i64 @le16_to_cpu(i64 %746)
  %748 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %749 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %748, i32 0, i32 0
  %750 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %749, i32 0, i32 0
  %751 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %750, i32 0, i32 5
  store i64 %747, i64* %751, align 8
  %752 = load %union.power_info*, %union.power_info** %5, align 8
  %753 = bitcast %union.power_info* %752 to %struct.TYPE_108__*
  %754 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %753, i32 0, i32 0
  %755 = load i64, i64* %754, align 8
  %756 = icmp ne i64 %755, 0
  br i1 %756, label %757, label %916

757:                                              ; preds = %720
  %758 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %759 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %758, i32 0, i32 0
  %760 = load %struct.TYPE_103__*, %struct.TYPE_103__** %759, align 8
  %761 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %760, i32 0, i32 0
  %762 = load i64, i64* %761, align 8
  %763 = load i64, i64* %9, align 8
  %764 = add nsw i64 %762, %763
  %765 = load %union.power_info*, %union.power_info** %5, align 8
  %766 = bitcast %union.power_info* %765 to %struct.TYPE_108__*
  %767 = getelementptr inbounds %struct.TYPE_108__, %struct.TYPE_108__* %766, i32 0, i32 0
  %768 = load i64, i64* %767, align 8
  %769 = call i64 @le16_to_cpu(i64 %768)
  %770 = add nsw i64 %764, %769
  %771 = inttoptr i64 %770 to %struct.TYPE_96__*
  store %struct.TYPE_96__* %771, %struct.TYPE_96__** %17, align 8
  %772 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %773 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 8
  %775 = sext i32 %774 to i64
  %776 = mul i64 %775, 4
  %777 = trunc i64 %776 to i32
  store i32 %777, i32* %19, align 4
  %778 = load i32, i32* %19, align 4
  %779 = load i32, i32* @GFP_KERNEL, align 4
  %780 = call i8* @kzalloc(i32 %778, i32 %779)
  %781 = bitcast i8* %780 to %struct.TYPE_55__*
  %782 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %783 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %782, i32 0, i32 0
  %784 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %783, i32 0, i32 0
  %785 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %784, i32 0, i32 3
  %786 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %785, i32 0, i32 6
  %787 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %786, i32 0, i32 1
  store %struct.TYPE_55__* %781, %struct.TYPE_55__** %787, align 8
  %788 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %789 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %788, i32 0, i32 0
  %790 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %789, i32 0, i32 0
  %791 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %790, i32 0, i32 3
  %792 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %791, i32 0, i32 6
  %793 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %792, i32 0, i32 1
  %794 = load %struct.TYPE_55__*, %struct.TYPE_55__** %793, align 8
  %795 = icmp ne %struct.TYPE_55__* %794, null
  br i1 %795, label %801, label %796

796:                                              ; preds = %757
  %797 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %798 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %797)
  %799 = load i32, i32* @ENOMEM, align 4
  %800 = sub nsw i32 0, %799
  store i32 %800, i32* %2, align 4
  br label %2004

801:                                              ; preds = %757
  %802 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %803 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %802, i32 0, i32 1
  %804 = load %struct.TYPE_97__*, %struct.TYPE_97__** %803, align 8
  %805 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %804, i64 0
  store %struct.TYPE_97__* %805, %struct.TYPE_97__** %18, align 8
  store i32 0, i32* %13, align 4
  br label %806

806:                                              ; preds = %903, %801
  %807 = load i32, i32* %13, align 4
  %808 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %809 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %808, i32 0, i32 0
  %810 = load i32, i32* %809, align 8
  %811 = icmp slt i32 %807, %810
  br i1 %811, label %812, label %906

812:                                              ; preds = %806
  %813 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %814 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %813, i32 0, i32 0
  %815 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %814, i32 0, i32 0
  %816 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %815, i32 0, i32 2
  %817 = load i32, i32* %816, align 8
  %818 = load i32, i32* @ATOM_PP_PLATFORM_CAP_EVV, align 4
  %819 = and i32 %817, %818
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %867

821:                                              ; preds = %812
  %822 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %823 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %822, i32 0, i32 4
  %824 = load i64, i64* %823, align 8
  %825 = call i64 @le16_to_cpu(i64 %824)
  %826 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %827 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %826, i32 0, i32 0
  %828 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %827, i32 0, i32 0
  %829 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %828, i32 0, i32 3
  %830 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %829, i32 0, i32 6
  %831 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %830, i32 0, i32 1
  %832 = load %struct.TYPE_55__*, %struct.TYPE_55__** %831, align 8
  %833 = load i32, i32* %13, align 4
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %832, i64 %834
  %836 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %835, i32 0, i32 4
  store i64 %825, i64* %836, align 8
  %837 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %838 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %837, i32 0, i32 3
  %839 = load i64, i64* %838, align 8
  %840 = call i64 @le16_to_cpu(i64 %839)
  %841 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %842 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %841, i32 0, i32 0
  %843 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %842, i32 0, i32 0
  %844 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %843, i32 0, i32 3
  %845 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %844, i32 0, i32 6
  %846 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %845, i32 0, i32 1
  %847 = load %struct.TYPE_55__*, %struct.TYPE_55__** %846, align 8
  %848 = load i32, i32* %13, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %847, i64 %849
  %851 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %850, i32 0, i32 3
  store i64 %840, i64* %851, align 8
  %852 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %853 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %852, i32 0, i32 2
  %854 = load i64, i64* %853, align 8
  %855 = call i64 @le16_to_cpu(i64 %854)
  %856 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %857 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %856, i32 0, i32 0
  %858 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %857, i32 0, i32 0
  %859 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %858, i32 0, i32 3
  %860 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %859, i32 0, i32 6
  %861 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %860, i32 0, i32 1
  %862 = load %struct.TYPE_55__*, %struct.TYPE_55__** %861, align 8
  %863 = load i32, i32* %13, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %862, i64 %864
  %866 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %865, i32 0, i32 2
  store i64 %855, i64* %866, align 8
  br label %898

867:                                              ; preds = %812
  %868 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %869 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %868, i32 0, i32 1
  %870 = load i64, i64* %869, align 8
  %871 = call i64 @le16_to_cpu(i64 %870)
  %872 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %873 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %872, i32 0, i32 0
  %874 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %873, i32 0, i32 0
  %875 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %874, i32 0, i32 3
  %876 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %875, i32 0, i32 6
  %877 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %876, i32 0, i32 1
  %878 = load %struct.TYPE_55__*, %struct.TYPE_55__** %877, align 8
  %879 = load i32, i32* %13, align 4
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %878, i64 %880
  %882 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %881, i32 0, i32 1
  store i64 %871, i64* %882, align 8
  %883 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %884 = getelementptr inbounds %struct.TYPE_97__, %struct.TYPE_97__* %883, i32 0, i32 0
  %885 = load i32, i32* %884, align 8
  %886 = call i8* @le32_to_cpu(i32 %885)
  %887 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %888 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %887, i32 0, i32 0
  %889 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %888, i32 0, i32 0
  %890 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %889, i32 0, i32 3
  %891 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %890, i32 0, i32 6
  %892 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %891, i32 0, i32 1
  %893 = load %struct.TYPE_55__*, %struct.TYPE_55__** %892, align 8
  %894 = load i32, i32* %13, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %893, i64 %895
  %897 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %896, i32 0, i32 0
  store i8* %886, i8** %897, align 8
  br label %898

898:                                              ; preds = %867, %821
  %899 = load %struct.TYPE_97__*, %struct.TYPE_97__** %18, align 8
  %900 = bitcast %struct.TYPE_97__* %899 to i64*
  %901 = getelementptr inbounds i64, i64* %900, i64 40
  %902 = bitcast i64* %901 to %struct.TYPE_97__*
  store %struct.TYPE_97__* %902, %struct.TYPE_97__** %18, align 8
  br label %903

903:                                              ; preds = %898
  %904 = load i32, i32* %13, align 4
  %905 = add nsw i32 %904, 1
  store i32 %905, i32* %13, align 4
  br label %806

906:                                              ; preds = %806
  %907 = load %struct.TYPE_96__*, %struct.TYPE_96__** %17, align 8
  %908 = getelementptr inbounds %struct.TYPE_96__, %struct.TYPE_96__* %907, i32 0, i32 0
  %909 = load i32, i32* %908, align 8
  %910 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %911 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %910, i32 0, i32 0
  %912 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %911, i32 0, i32 0
  %913 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %912, i32 0, i32 3
  %914 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %913, i32 0, i32 6
  %915 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %914, i32 0, i32 0
  store i32 %909, i32* %915, align 8
  br label %916

916:                                              ; preds = %906, %720
  br label %917

917:                                              ; preds = %916, %659
  %918 = load %union.power_info*, %union.power_info** %5, align 8
  %919 = bitcast %union.power_info* %918 to %struct.TYPE_57__*
  %920 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %919, i32 0, i32 0
  %921 = load i64, i64* %920, align 8
  %922 = call i64 @le16_to_cpu(i64 %921)
  %923 = icmp uge i64 %922, 4
  br i1 %923, label %924, label %2003

924:                                              ; preds = %917
  %925 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %926 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %925, i32 0, i32 0
  %927 = load %struct.TYPE_103__*, %struct.TYPE_103__** %926, align 8
  %928 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %927, i32 0, i32 0
  %929 = load i64, i64* %928, align 8
  %930 = load i64, i64* %9, align 8
  %931 = add nsw i64 %929, %930
  %932 = load %union.power_info*, %union.power_info** %5, align 8
  %933 = bitcast %union.power_info* %932 to %struct.TYPE_58__*
  %934 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %933, i32 0, i32 0
  %935 = load i64, i64* %934, align 8
  %936 = call i64 @le16_to_cpu(i64 %935)
  %937 = add nsw i64 %931, %936
  %938 = inttoptr i64 %937 to %struct.TYPE_94__*
  store %struct.TYPE_94__* %938, %struct.TYPE_94__** %20, align 8
  %939 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %940 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %939, i32 0, i32 1
  %941 = load i64, i64* %940, align 8
  %942 = call i64 @le16_to_cpu(i64 %941)
  %943 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V2, align 8
  %944 = icmp sge i64 %942, %943
  br i1 %944, label %945, label %1246

945:                                              ; preds = %924
  %946 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %947 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %946, i32 0, i32 6
  %948 = load i64, i64* %947, align 8
  %949 = icmp ne i64 %948, 0
  br i1 %949, label %950, label %1246

950:                                              ; preds = %945
  %951 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %952 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %951, i32 0, i32 0
  %953 = load %struct.TYPE_103__*, %struct.TYPE_103__** %952, align 8
  %954 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %953, i32 0, i32 0
  %955 = load i64, i64* %954, align 8
  %956 = load i64, i64* %9, align 8
  %957 = add nsw i64 %955, %956
  %958 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %959 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %958, i32 0, i32 6
  %960 = load i64, i64* %959, align 8
  %961 = call i64 @le16_to_cpu(i64 %960)
  %962 = add nsw i64 %957, %961
  %963 = add nsw i64 %962, 1
  %964 = inttoptr i64 %963 to %struct.TYPE_74__*
  store %struct.TYPE_74__* %964, %struct.TYPE_74__** %21, align 8
  %965 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %966 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %965, i32 0, i32 0
  %967 = load %struct.TYPE_103__*, %struct.TYPE_103__** %966, align 8
  %968 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %967, i32 0, i32 0
  %969 = load i64, i64* %968, align 8
  %970 = load i64, i64* %9, align 8
  %971 = add nsw i64 %969, %970
  %972 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %973 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %972, i32 0, i32 6
  %974 = load i64, i64* %973, align 8
  %975 = call i64 @le16_to_cpu(i64 %974)
  %976 = add nsw i64 %971, %975
  %977 = add nsw i64 %976, 1
  %978 = add nsw i64 %977, 1
  %979 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %980 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %979, i32 0, i32 0
  %981 = load i32, i32* %980, align 8
  %982 = sext i32 %981 to i64
  %983 = mul i64 %982, 24
  %984 = add i64 %978, %983
  %985 = inttoptr i64 %984 to %struct.TYPE_82__*
  store %struct.TYPE_82__* %985, %struct.TYPE_82__** %22, align 8
  %986 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %987 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %986, i32 0, i32 0
  %988 = load %struct.TYPE_103__*, %struct.TYPE_103__** %987, align 8
  %989 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %988, i32 0, i32 0
  %990 = load i64, i64* %989, align 8
  %991 = load i64, i64* %9, align 8
  %992 = add nsw i64 %990, %991
  %993 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %994 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %993, i32 0, i32 6
  %995 = load i64, i64* %994, align 8
  %996 = call i64 @le16_to_cpu(i64 %995)
  %997 = add nsw i64 %992, %996
  %998 = add nsw i64 %997, 1
  %999 = add nsw i64 %998, 1
  %1000 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %1001 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1000, i32 0, i32 0
  %1002 = load i32, i32* %1001, align 8
  %1003 = sext i32 %1002 to i64
  %1004 = mul i64 %1003, 24
  %1005 = add i64 %999, %1004
  %1006 = add i64 %1005, 1
  %1007 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1008 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1007, i32 0, i32 0
  %1009 = load i32, i32* %1008, align 8
  %1010 = sext i32 %1009 to i64
  %1011 = mul i64 %1010, 16
  %1012 = add i64 %1006, %1011
  %1013 = inttoptr i64 %1012 to %struct.TYPE_80__*
  store %struct.TYPE_80__* %1013, %struct.TYPE_80__** %23, align 8
  %1014 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1015 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1014, i32 0, i32 0
  %1016 = load i32, i32* %1015, align 8
  %1017 = sext i32 %1016 to i64
  %1018 = mul i64 %1017, 4
  %1019 = trunc i64 %1018 to i32
  store i32 %1019, i32* %27, align 4
  %1020 = load i32, i32* %27, align 4
  %1021 = load i32, i32* @GFP_KERNEL, align 4
  %1022 = call i8* @kzalloc(i32 %1020, i32 %1021)
  %1023 = bitcast i8* %1022 to %struct.TYPE_59__*
  %1024 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1025 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1024, i32 0, i32 0
  %1026 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1025, i32 0, i32 0
  %1027 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1026, i32 0, i32 3
  %1028 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1027, i32 0, i32 5
  %1029 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1028, i32 0, i32 1
  store %struct.TYPE_59__* %1023, %struct.TYPE_59__** %1029, align 8
  %1030 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1031 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1030, i32 0, i32 0
  %1032 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1031, i32 0, i32 0
  %1033 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1032, i32 0, i32 3
  %1034 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1033, i32 0, i32 5
  %1035 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1034, i32 0, i32 1
  %1036 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1035, align 8
  %1037 = icmp ne %struct.TYPE_59__* %1036, null
  br i1 %1037, label %1043, label %1038

1038:                                             ; preds = %950
  %1039 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1040 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %1039)
  %1041 = load i32, i32* @ENOMEM, align 4
  %1042 = sub nsw i32 0, %1041
  store i32 %1042, i32* %2, align 4
  br label %2004

1043:                                             ; preds = %950
  %1044 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1045 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1044, i32 0, i32 0
  %1046 = load i32, i32* %1045, align 8
  %1047 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1048 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1047, i32 0, i32 0
  %1049 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1048, i32 0, i32 0
  %1050 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1049, i32 0, i32 3
  %1051 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1050, i32 0, i32 5
  %1052 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1051, i32 0, i32 0
  store i32 %1046, i32* %1052, align 8
  %1053 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1054 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1053, i32 0, i32 1
  %1055 = load %struct.TYPE_83__*, %struct.TYPE_83__** %1054, align 8
  %1056 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1055, i64 0
  store %struct.TYPE_83__* %1056, %struct.TYPE_83__** %24, align 8
  %1057 = load %struct.TYPE_80__*, %struct.TYPE_80__** %23, align 8
  %1058 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %1057, i32 0, i32 1
  %1059 = load %struct.TYPE_81__*, %struct.TYPE_81__** %1058, align 8
  %1060 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1059, i64 0
  store %struct.TYPE_81__* %1060, %struct.TYPE_81__** %25, align 8
  store i32 0, i32* %13, align 4
  br label %1061

1061:                                             ; preds = %1143, %1043
  %1062 = load i32, i32* %13, align 4
  %1063 = load %struct.TYPE_82__*, %struct.TYPE_82__** %22, align 8
  %1064 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %1063, i32 0, i32 0
  %1065 = load i32, i32* %1064, align 8
  %1066 = icmp slt i32 %1062, %1065
  br i1 %1066, label %1067, label %1146

1067:                                             ; preds = %1061
  %1068 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %1069 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1068, i32 0, i32 1
  %1070 = load i32*, i32** %1069, align 8
  %1071 = getelementptr inbounds i32, i32* %1070, i64 0
  %1072 = bitcast i32* %1071 to i64*
  %1073 = load %struct.TYPE_83__*, %struct.TYPE_83__** %24, align 8
  %1074 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1073, i32 0, i32 0
  %1075 = load i32, i32* %1074, align 8
  %1076 = sext i32 %1075 to i64
  %1077 = mul i64 %1076, 24
  %1078 = getelementptr inbounds i64, i64* %1072, i64 %1077
  %1079 = bitcast i64* %1078 to %struct.TYPE_75__*
  store %struct.TYPE_75__* %1079, %struct.TYPE_75__** %26, align 8
  %1080 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1081 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1080, i32 0, i32 3
  %1082 = load i64, i64* %1081, align 8
  %1083 = call i64 @le16_to_cpu(i64 %1082)
  %1084 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1085 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1084, i32 0, i32 0
  %1086 = load i32, i32* %1085, align 8
  %1087 = shl i32 %1086, 16
  %1088 = sext i32 %1087 to i64
  %1089 = or i64 %1083, %1088
  %1090 = trunc i64 %1089 to i32
  %1091 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1092 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1091, i32 0, i32 0
  %1093 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1092, i32 0, i32 0
  %1094 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1093, i32 0, i32 3
  %1095 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1094, i32 0, i32 5
  %1096 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1095, i32 0, i32 1
  %1097 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1096, align 8
  %1098 = load i32, i32* %13, align 4
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1097, i64 %1099
  %1101 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1100, i32 0, i32 0
  store i32 %1090, i32* %1101, align 8
  %1102 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1103 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1102, i32 0, i32 2
  %1104 = load i64, i64* %1103, align 8
  %1105 = call i64 @le16_to_cpu(i64 %1104)
  %1106 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1107 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1106, i32 0, i32 1
  %1108 = load i32, i32* %1107, align 4
  %1109 = shl i32 %1108, 16
  %1110 = sext i32 %1109 to i64
  %1111 = or i64 %1105, %1110
  %1112 = trunc i64 %1111 to i32
  %1113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1113, i32 0, i32 0
  %1115 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1114, i32 0, i32 0
  %1116 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1115, i32 0, i32 3
  %1117 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1116, i32 0, i32 5
  %1118 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1117, i32 0, i32 1
  %1119 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1118, align 8
  %1120 = load i32, i32* %13, align 4
  %1121 = sext i32 %1120 to i64
  %1122 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1119, i64 %1121
  %1123 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1122, i32 0, i32 1
  store i32 %1112, i32* %1123, align 4
  %1124 = load %struct.TYPE_83__*, %struct.TYPE_83__** %24, align 8
  %1125 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %1124, i32 0, i32 1
  %1126 = load i64, i64* %1125, align 8
  %1127 = call i64 @le16_to_cpu(i64 %1126)
  %1128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1128, i32 0, i32 0
  %1130 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1129, i32 0, i32 0
  %1131 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1130, i32 0, i32 3
  %1132 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1131, i32 0, i32 5
  %1133 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1132, i32 0, i32 1
  %1134 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1133, align 8
  %1135 = load i32, i32* %13, align 4
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1134, i64 %1136
  %1138 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1137, i32 0, i32 2
  store i64 %1127, i64* %1138, align 8
  %1139 = load %struct.TYPE_83__*, %struct.TYPE_83__** %24, align 8
  %1140 = bitcast %struct.TYPE_83__* %1139 to i64*
  %1141 = getelementptr inbounds i64, i64* %1140, i64 16
  %1142 = bitcast i64* %1141 to %struct.TYPE_83__*
  store %struct.TYPE_83__* %1142, %struct.TYPE_83__** %24, align 8
  br label %1143

1143:                                             ; preds = %1067
  %1144 = load i32, i32* %13, align 4
  %1145 = add nsw i32 %1144, 1
  store i32 %1145, i32* %13, align 4
  br label %1061

1146:                                             ; preds = %1061
  store i32 0, i32* %13, align 4
  br label %1147

1147:                                             ; preds = %1242, %1146
  %1148 = load i32, i32* %13, align 4
  %1149 = load %struct.TYPE_80__*, %struct.TYPE_80__** %23, align 8
  %1150 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %1149, i32 0, i32 0
  %1151 = load i32, i32* %1150, align 8
  %1152 = icmp slt i32 %1148, %1151
  br i1 %1152, label %1153, label %1245

1153:                                             ; preds = %1147
  %1154 = load i32, i32* %13, align 4
  %1155 = load i32, i32* @RADEON_MAX_VCE_LEVELS, align 4
  %1156 = icmp sge i32 %1154, %1155
  br i1 %1156, label %1157, label %1158

1157:                                             ; preds = %1153
  br label %1245

1158:                                             ; preds = %1153
  %1159 = load %struct.TYPE_74__*, %struct.TYPE_74__** %21, align 8
  %1160 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %1159, i32 0, i32 1
  %1161 = load i32*, i32** %1160, align 8
  %1162 = getelementptr inbounds i32, i32* %1161, i64 0
  %1163 = bitcast i32* %1162 to i64*
  %1164 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1165 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1164, i32 0, i32 0
  %1166 = load i32, i32* %1165, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = mul i64 %1167, 24
  %1169 = getelementptr inbounds i64, i64* %1163, i64 %1168
  %1170 = bitcast i64* %1169 to %struct.TYPE_75__*
  store %struct.TYPE_75__* %1170, %struct.TYPE_75__** %26, align 8
  %1171 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1172 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1171, i32 0, i32 3
  %1173 = load i64, i64* %1172, align 8
  %1174 = call i64 @le16_to_cpu(i64 %1173)
  %1175 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1176 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1175, i32 0, i32 0
  %1177 = load i32, i32* %1176, align 8
  %1178 = shl i32 %1177, 16
  %1179 = sext i32 %1178 to i64
  %1180 = or i64 %1174, %1179
  %1181 = trunc i64 %1180 to i32
  %1182 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1182, i32 0, i32 0
  %1184 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1183, i32 0, i32 0
  %1185 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1184, i32 0, i32 4
  %1186 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1185, align 8
  %1187 = load i32, i32* %13, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1186, i64 %1188
  %1190 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1189, i32 0, i32 0
  store i32 %1181, i32* %1190, align 4
  %1191 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1192 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1191, i32 0, i32 2
  %1193 = load i64, i64* %1192, align 8
  %1194 = call i64 @le16_to_cpu(i64 %1193)
  %1195 = load %struct.TYPE_75__*, %struct.TYPE_75__** %26, align 8
  %1196 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %1195, i32 0, i32 1
  %1197 = load i32, i32* %1196, align 4
  %1198 = shl i32 %1197, 16
  %1199 = sext i32 %1198 to i64
  %1200 = or i64 %1194, %1199
  %1201 = trunc i64 %1200 to i32
  %1202 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1203 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1202, i32 0, i32 0
  %1204 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1203, i32 0, i32 0
  %1205 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1204, i32 0, i32 4
  %1206 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1205, align 8
  %1207 = load i32, i32* %13, align 4
  %1208 = sext i32 %1207 to i64
  %1209 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1206, i64 %1208
  %1210 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1209, i32 0, i32 1
  store i32 %1201, i32* %1210, align 4
  %1211 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1212 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1211, i32 0, i32 1
  %1213 = load i32, i32* %1212, align 4
  %1214 = and i32 %1213, 63
  %1215 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1216 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1215, i32 0, i32 0
  %1217 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1216, i32 0, i32 0
  %1218 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1217, i32 0, i32 4
  %1219 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1218, align 8
  %1220 = load i32, i32* %13, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1219, i64 %1221
  %1223 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1222, i32 0, i32 2
  store i32 %1214, i32* %1223, align 4
  %1224 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1225 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %1224, i32 0, i32 1
  %1226 = load i32, i32* %1225, align 4
  %1227 = and i32 %1226, 192
  %1228 = ashr i32 %1227, 6
  %1229 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1230 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1229, i32 0, i32 0
  %1231 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1230, i32 0, i32 0
  %1232 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1231, i32 0, i32 4
  %1233 = load %struct.TYPE_61__*, %struct.TYPE_61__** %1232, align 8
  %1234 = load i32, i32* %13, align 4
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1233, i64 %1235
  %1237 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1236, i32 0, i32 3
  store i32 %1228, i32* %1237, align 4
  %1238 = load %struct.TYPE_81__*, %struct.TYPE_81__** %25, align 8
  %1239 = bitcast %struct.TYPE_81__* %1238 to i64*
  %1240 = getelementptr inbounds i64, i64* %1239, i64 8
  %1241 = bitcast i64* %1240 to %struct.TYPE_81__*
  store %struct.TYPE_81__* %1241, %struct.TYPE_81__** %25, align 8
  br label %1242

1242:                                             ; preds = %1158
  %1243 = load i32, i32* %13, align 4
  %1244 = add nsw i32 %1243, 1
  store i32 %1244, i32* %13, align 4
  br label %1147

1245:                                             ; preds = %1157, %1147
  br label %1246

1246:                                             ; preds = %1245, %945, %924
  %1247 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1248 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1247, i32 0, i32 1
  %1249 = load i64, i64* %1248, align 8
  %1250 = call i64 @le16_to_cpu(i64 %1249)
  %1251 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V3, align 8
  %1252 = icmp sge i64 %1250, %1251
  br i1 %1252, label %1253, label %1423

1253:                                             ; preds = %1246
  %1254 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1255 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1254, i32 0, i32 5
  %1256 = load i64, i64* %1255, align 8
  %1257 = icmp ne i64 %1256, 0
  br i1 %1257, label %1258, label %1423

1258:                                             ; preds = %1253
  %1259 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1260 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1259, i32 0, i32 0
  %1261 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1260, align 8
  %1262 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1261, i32 0, i32 0
  %1263 = load i64, i64* %1262, align 8
  %1264 = load i64, i64* %9, align 8
  %1265 = add nsw i64 %1263, %1264
  %1266 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1267 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1266, i32 0, i32 5
  %1268 = load i64, i64* %1267, align 8
  %1269 = call i64 @le16_to_cpu(i64 %1268)
  %1270 = add nsw i64 %1265, %1269
  %1271 = add nsw i64 %1270, 1
  %1272 = inttoptr i64 %1271 to %struct.TYPE_77__*
  store %struct.TYPE_77__* %1272, %struct.TYPE_77__** %28, align 8
  %1273 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1274 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1273, i32 0, i32 0
  %1275 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1274, align 8
  %1276 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1275, i32 0, i32 0
  %1277 = load i64, i64* %1276, align 8
  %1278 = load i64, i64* %9, align 8
  %1279 = add nsw i64 %1277, %1278
  %1280 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1281 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1280, i32 0, i32 5
  %1282 = load i64, i64* %1281, align 8
  %1283 = call i64 @le16_to_cpu(i64 %1282)
  %1284 = add nsw i64 %1279, %1283
  %1285 = add nsw i64 %1284, 1
  %1286 = add nsw i64 %1285, 1
  %1287 = load %struct.TYPE_77__*, %struct.TYPE_77__** %28, align 8
  %1288 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1287, i32 0, i32 0
  %1289 = load i32, i32* %1288, align 8
  %1290 = sext i32 %1289 to i64
  %1291 = mul i64 %1290, 24
  %1292 = add i64 %1286, %1291
  %1293 = inttoptr i64 %1292 to %struct.TYPE_84__*
  store %struct.TYPE_84__* %1293, %struct.TYPE_84__** %29, align 8
  %1294 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1295 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1294, i32 0, i32 0
  %1296 = load i32, i32* %1295, align 8
  %1297 = sext i32 %1296 to i64
  %1298 = mul i64 %1297, 4
  %1299 = trunc i64 %1298 to i32
  store i32 %1299, i32* %31, align 4
  %1300 = load i32, i32* %31, align 4
  %1301 = load i32, i32* @GFP_KERNEL, align 4
  %1302 = call i8* @kzalloc(i32 %1300, i32 %1301)
  %1303 = bitcast i8* %1302 to %struct.TYPE_62__*
  %1304 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1305 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1304, i32 0, i32 0
  %1306 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1305, i32 0, i32 0
  %1307 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1306, i32 0, i32 3
  %1308 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1307, i32 0, i32 4
  %1309 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1308, i32 0, i32 1
  store %struct.TYPE_62__* %1303, %struct.TYPE_62__** %1309, align 8
  %1310 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1311 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1310, i32 0, i32 0
  %1312 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1311, i32 0, i32 0
  %1313 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1312, i32 0, i32 3
  %1314 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1313, i32 0, i32 4
  %1315 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1314, i32 0, i32 1
  %1316 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1315, align 8
  %1317 = icmp ne %struct.TYPE_62__* %1316, null
  br i1 %1317, label %1323, label %1318

1318:                                             ; preds = %1258
  %1319 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1320 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %1319)
  %1321 = load i32, i32* @ENOMEM, align 4
  %1322 = sub nsw i32 0, %1321
  store i32 %1322, i32* %2, align 4
  br label %2004

1323:                                             ; preds = %1258
  %1324 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1325 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1324, i32 0, i32 0
  %1326 = load i32, i32* %1325, align 8
  %1327 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1328 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1327, i32 0, i32 0
  %1329 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1328, i32 0, i32 0
  %1330 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1329, i32 0, i32 3
  %1331 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1330, i32 0, i32 4
  %1332 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1331, i32 0, i32 0
  store i32 %1326, i32* %1332, align 8
  %1333 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1334 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1333, i32 0, i32 1
  %1335 = load %struct.TYPE_85__*, %struct.TYPE_85__** %1334, align 8
  %1336 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %1335, i64 0
  store %struct.TYPE_85__* %1336, %struct.TYPE_85__** %30, align 8
  store i32 0, i32* %13, align 4
  br label %1337

1337:                                             ; preds = %1419, %1323
  %1338 = load i32, i32* %13, align 4
  %1339 = load %struct.TYPE_84__*, %struct.TYPE_84__** %29, align 8
  %1340 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %1339, i32 0, i32 0
  %1341 = load i32, i32* %1340, align 8
  %1342 = icmp slt i32 %1338, %1341
  br i1 %1342, label %1343, label %1422

1343:                                             ; preds = %1337
  %1344 = load %struct.TYPE_77__*, %struct.TYPE_77__** %28, align 8
  %1345 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %1344, i32 0, i32 1
  %1346 = load i32*, i32** %1345, align 8
  %1347 = getelementptr inbounds i32, i32* %1346, i64 0
  %1348 = bitcast i32* %1347 to i64*
  %1349 = load %struct.TYPE_85__*, %struct.TYPE_85__** %30, align 8
  %1350 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %1349, i32 0, i32 0
  %1351 = load i32, i32* %1350, align 8
  %1352 = sext i32 %1351 to i64
  %1353 = mul i64 %1352, 24
  %1354 = getelementptr inbounds i64, i64* %1348, i64 %1353
  %1355 = bitcast i64* %1354 to %struct.TYPE_78__*
  store %struct.TYPE_78__* %1355, %struct.TYPE_78__** %32, align 8
  %1356 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1357 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1356, i32 0, i32 3
  %1358 = load i64, i64* %1357, align 8
  %1359 = call i64 @le16_to_cpu(i64 %1358)
  %1360 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1361 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1360, i32 0, i32 0
  %1362 = load i32, i32* %1361, align 8
  %1363 = shl i32 %1362, 16
  %1364 = sext i32 %1363 to i64
  %1365 = or i64 %1359, %1364
  %1366 = trunc i64 %1365 to i32
  %1367 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1368 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1367, i32 0, i32 0
  %1369 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1368, i32 0, i32 0
  %1370 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1369, i32 0, i32 3
  %1371 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1370, i32 0, i32 4
  %1372 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1371, i32 0, i32 1
  %1373 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1372, align 8
  %1374 = load i32, i32* %13, align 4
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1373, i64 %1375
  %1377 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1376, i32 0, i32 0
  store i32 %1366, i32* %1377, align 8
  %1378 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1379 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1378, i32 0, i32 2
  %1380 = load i64, i64* %1379, align 8
  %1381 = call i64 @le16_to_cpu(i64 %1380)
  %1382 = load %struct.TYPE_78__*, %struct.TYPE_78__** %32, align 8
  %1383 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %1382, i32 0, i32 1
  %1384 = load i32, i32* %1383, align 4
  %1385 = shl i32 %1384, 16
  %1386 = sext i32 %1385 to i64
  %1387 = or i64 %1381, %1386
  %1388 = trunc i64 %1387 to i32
  %1389 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1390 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1389, i32 0, i32 0
  %1391 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1390, i32 0, i32 0
  %1392 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1391, i32 0, i32 3
  %1393 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1392, i32 0, i32 4
  %1394 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1393, i32 0, i32 1
  %1395 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1394, align 8
  %1396 = load i32, i32* %13, align 4
  %1397 = sext i32 %1396 to i64
  %1398 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1395, i64 %1397
  %1399 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1398, i32 0, i32 1
  store i32 %1388, i32* %1399, align 4
  %1400 = load %struct.TYPE_85__*, %struct.TYPE_85__** %30, align 8
  %1401 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %1400, i32 0, i32 1
  %1402 = load i64, i64* %1401, align 8
  %1403 = call i64 @le16_to_cpu(i64 %1402)
  %1404 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1405 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1404, i32 0, i32 0
  %1406 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1405, i32 0, i32 0
  %1407 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1406, i32 0, i32 3
  %1408 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1407, i32 0, i32 4
  %1409 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %1408, i32 0, i32 1
  %1410 = load %struct.TYPE_62__*, %struct.TYPE_62__** %1409, align 8
  %1411 = load i32, i32* %13, align 4
  %1412 = sext i32 %1411 to i64
  %1413 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1410, i64 %1412
  %1414 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1413, i32 0, i32 2
  store i64 %1403, i64* %1414, align 8
  %1415 = load %struct.TYPE_85__*, %struct.TYPE_85__** %30, align 8
  %1416 = bitcast %struct.TYPE_85__* %1415 to i64*
  %1417 = getelementptr inbounds i64, i64* %1416, i64 16
  %1418 = bitcast i64* %1417 to %struct.TYPE_85__*
  store %struct.TYPE_85__* %1418, %struct.TYPE_85__** %30, align 8
  br label %1419

1419:                                             ; preds = %1343
  %1420 = load i32, i32* %13, align 4
  %1421 = add nsw i32 %1420, 1
  store i32 %1421, i32* %13, align 4
  br label %1337

1422:                                             ; preds = %1337
  br label %1423

1423:                                             ; preds = %1422, %1253, %1246
  %1424 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1425 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1424, i32 0, i32 1
  %1426 = load i64, i64* %1425, align 8
  %1427 = call i64 @le16_to_cpu(i64 %1426)
  %1428 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V4, align 8
  %1429 = icmp sge i64 %1427, %1428
  br i1 %1429, label %1430, label %1545

1430:                                             ; preds = %1423
  %1431 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1432 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1431, i32 0, i32 4
  %1433 = load i64, i64* %1432, align 8
  %1434 = icmp ne i64 %1433, 0
  br i1 %1434, label %1435, label %1545

1435:                                             ; preds = %1430
  %1436 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1437 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1436, i32 0, i32 0
  %1438 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1437, align 8
  %1439 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1438, i32 0, i32 0
  %1440 = load i64, i64* %1439, align 8
  %1441 = load i64, i64* %9, align 8
  %1442 = add nsw i64 %1440, %1441
  %1443 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1444 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1443, i32 0, i32 4
  %1445 = load i64, i64* %1444, align 8
  %1446 = call i64 @le16_to_cpu(i64 %1445)
  %1447 = add nsw i64 %1442, %1446
  %1448 = add nsw i64 %1447, 1
  %1449 = inttoptr i64 %1448 to %struct.TYPE_86__*
  store %struct.TYPE_86__* %1449, %struct.TYPE_86__** %33, align 8
  %1450 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1451 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1450, i32 0, i32 0
  %1452 = load i32, i32* %1451, align 8
  %1453 = sext i32 %1452 to i64
  %1454 = mul i64 %1453, 4
  %1455 = trunc i64 %1454 to i32
  store i32 %1455, i32* %35, align 4
  %1456 = load i32, i32* %35, align 4
  %1457 = load i32, i32* @GFP_KERNEL, align 4
  %1458 = call i8* @kzalloc(i32 %1456, i32 %1457)
  %1459 = bitcast i8* %1458 to %struct.TYPE_64__*
  %1460 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1461 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1460, i32 0, i32 0
  %1462 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1461, i32 0, i32 0
  %1463 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1462, i32 0, i32 3
  %1464 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1463, i32 0, i32 3
  %1465 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1464, i32 0, i32 1
  store %struct.TYPE_64__* %1459, %struct.TYPE_64__** %1465, align 8
  %1466 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1467 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1466, i32 0, i32 0
  %1468 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1467, i32 0, i32 0
  %1469 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1468, i32 0, i32 3
  %1470 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1469, i32 0, i32 3
  %1471 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1470, i32 0, i32 1
  %1472 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1471, align 8
  %1473 = icmp ne %struct.TYPE_64__* %1472, null
  br i1 %1473, label %1479, label %1474

1474:                                             ; preds = %1435
  %1475 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1476 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %1475)
  %1477 = load i32, i32* @ENOMEM, align 4
  %1478 = sub nsw i32 0, %1477
  store i32 %1478, i32* %2, align 4
  br label %2004

1479:                                             ; preds = %1435
  %1480 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1481 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1480, i32 0, i32 0
  %1482 = load i32, i32* %1481, align 8
  %1483 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1484 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1483, i32 0, i32 0
  %1485 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1484, i32 0, i32 0
  %1486 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1485, i32 0, i32 3
  %1487 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1486, i32 0, i32 3
  %1488 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1487, i32 0, i32 0
  store i32 %1482, i32* %1488, align 8
  %1489 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1490 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1489, i32 0, i32 1
  %1491 = load %struct.TYPE_88__*, %struct.TYPE_88__** %1490, align 8
  %1492 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1491, i64 0
  store %struct.TYPE_88__* %1492, %struct.TYPE_88__** %34, align 8
  store i32 0, i32* %13, align 4
  br label %1493

1493:                                             ; preds = %1541, %1479
  %1494 = load i32, i32* %13, align 4
  %1495 = load %struct.TYPE_86__*, %struct.TYPE_86__** %33, align 8
  %1496 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %1495, i32 0, i32 0
  %1497 = load i32, i32* %1496, align 8
  %1498 = icmp slt i32 %1494, %1497
  br i1 %1498, label %1499, label %1544

1499:                                             ; preds = %1493
  %1500 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1501 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1500, i32 0, i32 2
  %1502 = load i64, i64* %1501, align 8
  %1503 = call i64 @le16_to_cpu(i64 %1502)
  %1504 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1505 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1504, i32 0, i32 0
  %1506 = load i32, i32* %1505, align 8
  %1507 = shl i32 %1506, 16
  %1508 = sext i32 %1507 to i64
  %1509 = or i64 %1503, %1508
  %1510 = trunc i64 %1509 to i32
  %1511 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1512 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1511, i32 0, i32 0
  %1513 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1512, i32 0, i32 0
  %1514 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1513, i32 0, i32 3
  %1515 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1514, i32 0, i32 3
  %1516 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1515, i32 0, i32 1
  %1517 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1516, align 8
  %1518 = load i32, i32* %13, align 4
  %1519 = sext i32 %1518 to i64
  %1520 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1517, i64 %1519
  %1521 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1520, i32 0, i32 0
  store i32 %1510, i32* %1521, align 8
  %1522 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1523 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %1522, i32 0, i32 1
  %1524 = load i64, i64* %1523, align 8
  %1525 = call i64 @le16_to_cpu(i64 %1524)
  %1526 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1527 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1526, i32 0, i32 0
  %1528 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1527, i32 0, i32 0
  %1529 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1528, i32 0, i32 3
  %1530 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1529, i32 0, i32 3
  %1531 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1530, i32 0, i32 1
  %1532 = load %struct.TYPE_64__*, %struct.TYPE_64__** %1531, align 8
  %1533 = load i32, i32* %13, align 4
  %1534 = sext i32 %1533 to i64
  %1535 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1532, i64 %1534
  %1536 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1535, i32 0, i32 1
  store i64 %1525, i64* %1536, align 8
  %1537 = load %struct.TYPE_88__*, %struct.TYPE_88__** %34, align 8
  %1538 = bitcast %struct.TYPE_88__* %1537 to i64*
  %1539 = getelementptr inbounds i64, i64* %1538, i64 24
  %1540 = bitcast i64* %1539 to %struct.TYPE_88__*
  store %struct.TYPE_88__* %1540, %struct.TYPE_88__** %34, align 8
  br label %1541

1541:                                             ; preds = %1499
  %1542 = load i32, i32* %13, align 4
  %1543 = add nsw i32 %1542, 1
  store i32 %1543, i32* %13, align 4
  br label %1493

1544:                                             ; preds = %1493
  br label %1545

1545:                                             ; preds = %1544, %1430, %1423
  %1546 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1547 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1546, i32 0, i32 1
  %1548 = load i64, i64* %1547, align 8
  %1549 = call i64 @le16_to_cpu(i64 %1548)
  %1550 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V5, align 8
  %1551 = icmp sge i64 %1549, %1550
  br i1 %1551, label %1552, label %1701

1552:                                             ; preds = %1545
  %1553 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1554 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1553, i32 0, i32 3
  %1555 = load i64, i64* %1554, align 8
  %1556 = icmp ne i64 %1555, 0
  br i1 %1556, label %1557, label %1701

1557:                                             ; preds = %1552
  %1558 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1559 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1558, i32 0, i32 0
  %1560 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1559, align 8
  %1561 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1560, i32 0, i32 0
  %1562 = load i64, i64* %1561, align 8
  %1563 = load i64, i64* %9, align 8
  %1564 = add nsw i64 %1562, %1563
  %1565 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1566 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1565, i32 0, i32 3
  %1567 = load i64, i64* %1566, align 8
  %1568 = call i64 @le16_to_cpu(i64 %1567)
  %1569 = add nsw i64 %1564, %1568
  %1570 = inttoptr i64 %1569 to %struct.TYPE_91__*
  store %struct.TYPE_91__* %1570, %struct.TYPE_91__** %36, align 8
  %1571 = load i32, i32* @GFP_KERNEL, align 4
  %1572 = call i8* @kzalloc(i32 4, i32 %1571)
  %1573 = bitcast i8* %1572 to %struct.TYPE_67__*
  %1574 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1575 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1574, i32 0, i32 0
  %1576 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1575, i32 0, i32 0
  %1577 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1576, i32 0, i32 3
  %1578 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1577, i32 0, i32 2
  store %struct.TYPE_67__* %1573, %struct.TYPE_67__** %1578, align 8
  %1579 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1580 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1579, i32 0, i32 0
  %1581 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1580, i32 0, i32 0
  %1582 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1581, i32 0, i32 3
  %1583 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1582, i32 0, i32 2
  %1584 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1583, align 8
  %1585 = icmp ne %struct.TYPE_67__* %1584, null
  br i1 %1585, label %1591, label %1586

1586:                                             ; preds = %1557
  %1587 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1588 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %1587)
  %1589 = load i32, i32* @ENOMEM, align 4
  %1590 = sub nsw i32 0, %1589
  store i32 %1590, i32* %2, align 4
  br label %2004

1591:                                             ; preds = %1557
  %1592 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1593 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1592, i32 0, i32 9
  %1594 = load i32, i32* %1593, align 8
  %1595 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1596 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1595, i32 0, i32 0
  %1597 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1596, i32 0, i32 0
  %1598 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1597, i32 0, i32 3
  %1599 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1598, i32 0, i32 2
  %1600 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1599, align 8
  %1601 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1600, i32 0, i32 9
  store i32 %1594, i32* %1601, align 8
  %1602 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1603 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1602, i32 0, i32 8
  %1604 = load i64, i64* %1603, align 8
  %1605 = call i64 @le16_to_cpu(i64 %1604)
  %1606 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1607 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1606, i32 0, i32 0
  %1608 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1607, i32 0, i32 0
  %1609 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1608, i32 0, i32 3
  %1610 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1609, i32 0, i32 2
  %1611 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1610, align 8
  %1612 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1611, i32 0, i32 8
  store i64 %1605, i64* %1612, align 8
  %1613 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1614 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1613, i32 0, i32 7
  %1615 = load i32, i32* %1614, align 4
  %1616 = call i8* @le32_to_cpu(i32 %1615)
  %1617 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1618 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1617, i32 0, i32 0
  %1619 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1618, i32 0, i32 0
  %1620 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1619, i32 0, i32 3
  %1621 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1620, i32 0, i32 2
  %1622 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1621, align 8
  %1623 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1622, i32 0, i32 7
  store i8* %1616, i8** %1623, align 8
  %1624 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1625 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1624, i32 0, i32 6
  %1626 = load i32, i32* %1625, align 8
  %1627 = call i8* @le32_to_cpu(i32 %1626)
  %1628 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1629 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1628, i32 0, i32 0
  %1630 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1629, i32 0, i32 0
  %1631 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1630, i32 0, i32 3
  %1632 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1631, i32 0, i32 2
  %1633 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1632, align 8
  %1634 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1633, i32 0, i32 6
  store i8* %1627, i8** %1634, align 8
  %1635 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1636 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1635, i32 0, i32 5
  %1637 = load i32, i32* %1636, align 4
  %1638 = call i8* @le32_to_cpu(i32 %1637)
  %1639 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1640 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1639, i32 0, i32 0
  %1641 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1640, i32 0, i32 0
  %1642 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1641, i32 0, i32 3
  %1643 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1642, i32 0, i32 2
  %1644 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1643, align 8
  %1645 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1644, i32 0, i32 5
  store i8* %1638, i8** %1645, align 8
  %1646 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1647 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1646, i32 0, i32 4
  %1648 = load i32, i32* %1647, align 8
  %1649 = call i8* @le32_to_cpu(i32 %1648)
  %1650 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1651 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1650, i32 0, i32 0
  %1652 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1651, i32 0, i32 0
  %1653 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1652, i32 0, i32 3
  %1654 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1653, i32 0, i32 2
  %1655 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1654, align 8
  %1656 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1655, i32 0, i32 4
  store i8* %1649, i8** %1656, align 8
  %1657 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1658 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1657, i32 0, i32 3
  %1659 = load i32, i32* %1658, align 4
  %1660 = call i8* @le32_to_cpu(i32 %1659)
  %1661 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1662 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1661, i32 0, i32 0
  %1663 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1662, i32 0, i32 0
  %1664 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1663, i32 0, i32 3
  %1665 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1664, i32 0, i32 2
  %1666 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1665, align 8
  %1667 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1666, i32 0, i32 3
  store i8* %1660, i8** %1667, align 8
  %1668 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1669 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1668, i32 0, i32 2
  %1670 = load i32, i32* %1669, align 8
  %1671 = call i8* @le32_to_cpu(i32 %1670)
  %1672 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1673 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1672, i32 0, i32 0
  %1674 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1673, i32 0, i32 0
  %1675 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1674, i32 0, i32 3
  %1676 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1675, i32 0, i32 2
  %1677 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1676, align 8
  %1678 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1677, i32 0, i32 2
  store i8* %1671, i8** %1678, align 8
  %1679 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1680 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1679, i32 0, i32 1
  %1681 = load i32, i32* %1680, align 4
  %1682 = call i8* @le32_to_cpu(i32 %1681)
  %1683 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1684 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1683, i32 0, i32 0
  %1685 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1684, i32 0, i32 0
  %1686 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1685, i32 0, i32 3
  %1687 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1686, i32 0, i32 2
  %1688 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1687, align 8
  %1689 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1688, i32 0, i32 1
  store i8* %1682, i8** %1689, align 8
  %1690 = load %struct.TYPE_91__*, %struct.TYPE_91__** %36, align 8
  %1691 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %1690, i32 0, i32 0
  %1692 = load i32, i32* %1691, align 8
  %1693 = call i8* @le32_to_cpu(i32 %1692)
  %1694 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1695 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1694, i32 0, i32 0
  %1696 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1695, i32 0, i32 0
  %1697 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1696, i32 0, i32 3
  %1698 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1697, i32 0, i32 2
  %1699 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1698, align 8
  %1700 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1699, i32 0, i32 0
  store i8* %1693, i8** %1700, align 8
  br label %1701

1701:                                             ; preds = %1591, %1552, %1545
  %1702 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1703 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1702, i32 0, i32 1
  %1704 = load i64, i64* %1703, align 8
  %1705 = call i64 @le16_to_cpu(i64 %1704)
  %1706 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V6, align 8
  %1707 = icmp sge i64 %1705, %1706
  br i1 %1707, label %1708, label %1823

1708:                                             ; preds = %1701
  %1709 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1710 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1709, i32 0, i32 2
  %1711 = load i64, i64* %1710, align 8
  %1712 = icmp ne i64 %1711, 0
  br i1 %1712, label %1713, label %1823

1713:                                             ; preds = %1708
  %1714 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1715 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1714, i32 0, i32 0
  %1716 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1715, align 8
  %1717 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1716, i32 0, i32 0
  %1718 = load i64, i64* %1717, align 8
  %1719 = load i64, i64* %9, align 8
  %1720 = add nsw i64 %1718, %1719
  %1721 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1722 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1721, i32 0, i32 2
  %1723 = load i64, i64* %1722, align 8
  %1724 = call i64 @le16_to_cpu(i64 %1723)
  %1725 = add nsw i64 %1720, %1724
  %1726 = add nsw i64 %1725, 1
  %1727 = inttoptr i64 %1726 to %struct.TYPE_99__*
  store %struct.TYPE_99__* %1727, %struct.TYPE_99__** %37, align 8
  %1728 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1729 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1728, i32 0, i32 0
  %1730 = load i32, i32* %1729, align 8
  %1731 = sext i32 %1730 to i64
  %1732 = mul i64 %1731, 4
  %1733 = trunc i64 %1732 to i32
  store i32 %1733, i32* %39, align 4
  %1734 = load i32, i32* %39, align 4
  %1735 = load i32, i32* @GFP_KERNEL, align 4
  %1736 = call i8* @kzalloc(i32 %1734, i32 %1735)
  %1737 = bitcast i8* %1736 to %struct.TYPE_68__*
  %1738 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1739 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1738, i32 0, i32 0
  %1740 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1739, i32 0, i32 0
  %1741 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1740, i32 0, i32 3
  %1742 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1741, i32 0, i32 1
  %1743 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1742, i32 0, i32 1
  store %struct.TYPE_68__* %1737, %struct.TYPE_68__** %1743, align 8
  %1744 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1745 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1744, i32 0, i32 0
  %1746 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1745, i32 0, i32 0
  %1747 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1746, i32 0, i32 3
  %1748 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1747, i32 0, i32 1
  %1749 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1748, i32 0, i32 1
  %1750 = load %struct.TYPE_68__*, %struct.TYPE_68__** %1749, align 8
  %1751 = icmp ne %struct.TYPE_68__* %1750, null
  br i1 %1751, label %1757, label %1752

1752:                                             ; preds = %1713
  %1753 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1754 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %1753)
  %1755 = load i32, i32* @ENOMEM, align 4
  %1756 = sub nsw i32 0, %1755
  store i32 %1756, i32* %2, align 4
  br label %2004

1757:                                             ; preds = %1713
  %1758 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1759 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1758, i32 0, i32 0
  %1760 = load i32, i32* %1759, align 8
  %1761 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1762 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1761, i32 0, i32 0
  %1763 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1762, i32 0, i32 0
  %1764 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1763, i32 0, i32 3
  %1765 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1764, i32 0, i32 1
  %1766 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1765, i32 0, i32 0
  store i32 %1760, i32* %1766, align 8
  %1767 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1768 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1767, i32 0, i32 1
  %1769 = load %struct.TYPE_100__*, %struct.TYPE_100__** %1768, align 8
  %1770 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1769, i64 0
  store %struct.TYPE_100__* %1770, %struct.TYPE_100__** %38, align 8
  store i32 0, i32* %13, align 4
  br label %1771

1771:                                             ; preds = %1819, %1757
  %1772 = load i32, i32* %13, align 4
  %1773 = load %struct.TYPE_99__*, %struct.TYPE_99__** %37, align 8
  %1774 = getelementptr inbounds %struct.TYPE_99__, %struct.TYPE_99__* %1773, i32 0, i32 0
  %1775 = load i32, i32* %1774, align 8
  %1776 = icmp slt i32 %1772, %1775
  br i1 %1776, label %1777, label %1822

1777:                                             ; preds = %1771
  %1778 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1779 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1778, i32 0, i32 2
  %1780 = load i64, i64* %1779, align 8
  %1781 = call i64 @le16_to_cpu(i64 %1780)
  %1782 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1783 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1782, i32 0, i32 0
  %1784 = load i32, i32* %1783, align 8
  %1785 = shl i32 %1784, 16
  %1786 = sext i32 %1785 to i64
  %1787 = or i64 %1781, %1786
  %1788 = trunc i64 %1787 to i32
  %1789 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1790 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1789, i32 0, i32 0
  %1791 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1790, i32 0, i32 0
  %1792 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1791, i32 0, i32 3
  %1793 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1792, i32 0, i32 1
  %1794 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1793, i32 0, i32 1
  %1795 = load %struct.TYPE_68__*, %struct.TYPE_68__** %1794, align 8
  %1796 = load i32, i32* %13, align 4
  %1797 = sext i32 %1796 to i64
  %1798 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1795, i64 %1797
  %1799 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1798, i32 0, i32 0
  store i32 %1788, i32* %1799, align 8
  %1800 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1801 = getelementptr inbounds %struct.TYPE_100__, %struct.TYPE_100__* %1800, i32 0, i32 1
  %1802 = load i64, i64* %1801, align 8
  %1803 = call i64 @le16_to_cpu(i64 %1802)
  %1804 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1805 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1804, i32 0, i32 0
  %1806 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1805, i32 0, i32 0
  %1807 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1806, i32 0, i32 3
  %1808 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1807, i32 0, i32 1
  %1809 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1808, i32 0, i32 1
  %1810 = load %struct.TYPE_68__*, %struct.TYPE_68__** %1809, align 8
  %1811 = load i32, i32* %13, align 4
  %1812 = sext i32 %1811 to i64
  %1813 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1810, i64 %1812
  %1814 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1813, i32 0, i32 1
  store i64 %1803, i64* %1814, align 8
  %1815 = load %struct.TYPE_100__*, %struct.TYPE_100__** %38, align 8
  %1816 = bitcast %struct.TYPE_100__* %1815 to i64*
  %1817 = getelementptr inbounds i64, i64* %1816, i64 24
  %1818 = bitcast i64* %1817 to %struct.TYPE_100__*
  store %struct.TYPE_100__* %1818, %struct.TYPE_100__** %38, align 8
  br label %1819

1819:                                             ; preds = %1777
  %1820 = load i32, i32* %13, align 4
  %1821 = add nsw i32 %1820, 1
  store i32 %1821, i32* %13, align 4
  br label %1771

1822:                                             ; preds = %1771
  br label %1823

1823:                                             ; preds = %1822, %1708, %1701
  %1824 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1825 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1824, i32 0, i32 1
  %1826 = load i64, i64* %1825, align 8
  %1827 = call i64 @le16_to_cpu(i64 %1826)
  %1828 = load i64, i64* @SIZE_OF_ATOM_PPLIB_EXTENDEDHEADER_V7, align 8
  %1829 = icmp sge i64 %1827, %1828
  br i1 %1829, label %1830, label %2002

1830:                                             ; preds = %1823
  %1831 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1832 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1831, i32 0, i32 0
  %1833 = load i64, i64* %1832, align 8
  %1834 = icmp ne i64 %1833, 0
  br i1 %1834, label %1835, label %2002

1835:                                             ; preds = %1830
  %1836 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1837 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1836, i32 0, i32 0
  %1838 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1837, align 8
  %1839 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1838, i32 0, i32 0
  %1840 = load i64, i64* %1839, align 8
  %1841 = load i64, i64* %9, align 8
  %1842 = add nsw i64 %1840, %1841
  %1843 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1844 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1843, i32 0, i32 0
  %1845 = load i64, i64* %1844, align 8
  %1846 = call i64 @le16_to_cpu(i64 %1845)
  %1847 = add nsw i64 %1842, %1846
  %1848 = inttoptr i64 %1847 to i64*
  %1849 = load i64, i64* %1848, align 8
  store i64 %1849, i64* %40, align 8
  %1850 = load i32, i32* @GFP_KERNEL, align 4
  %1851 = call i8* @kzalloc(i32 4, i32 %1850)
  %1852 = bitcast i8* %1851 to %struct.TYPE_70__*
  %1853 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1854 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1853, i32 0, i32 0
  %1855 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1854, i32 0, i32 0
  %1856 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1855, i32 0, i32 3
  %1857 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1856, i32 0, i32 0
  store %struct.TYPE_70__* %1852, %struct.TYPE_70__** %1857, align 8
  %1858 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1859 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1858, i32 0, i32 0
  %1860 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1859, i32 0, i32 0
  %1861 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1860, i32 0, i32 3
  %1862 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1861, i32 0, i32 0
  %1863 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1862, align 8
  %1864 = icmp ne %struct.TYPE_70__* %1863, null
  br i1 %1864, label %1870, label %1865

1865:                                             ; preds = %1835
  %1866 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1867 = call i32 @r600_free_extended_power_table(%struct.radeon_device* %1866)
  %1868 = load i32, i32* @ENOMEM, align 4
  %1869 = sub nsw i32 0, %1868
  store i32 %1869, i32* %2, align 4
  br label %2004

1870:                                             ; preds = %1835
  %1871 = load i64, i64* %40, align 8
  %1872 = icmp sgt i64 %1871, 0
  br i1 %1872, label %1873, label %1901

1873:                                             ; preds = %1870
  %1874 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1875 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1874, i32 0, i32 0
  %1876 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1875, align 8
  %1877 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1876, i32 0, i32 0
  %1878 = load i64, i64* %1877, align 8
  %1879 = load i64, i64* %9, align 8
  %1880 = add nsw i64 %1878, %1879
  %1881 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1882 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1881, i32 0, i32 0
  %1883 = load i64, i64* %1882, align 8
  %1884 = call i64 @le16_to_cpu(i64 %1883)
  %1885 = add nsw i64 %1880, %1884
  %1886 = inttoptr i64 %1885 to %struct.TYPE_92__*
  store %struct.TYPE_92__* %1886, %struct.TYPE_92__** %42, align 8
  %1887 = load %struct.TYPE_92__*, %struct.TYPE_92__** %42, align 8
  %1888 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %1887, i32 0, i32 1
  %1889 = load i64, i64* %1888, align 8
  %1890 = call i64 @le16_to_cpu(i64 %1889)
  %1891 = trunc i64 %1890 to i32
  %1892 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1893 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1892, i32 0, i32 0
  %1894 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1893, i32 0, i32 0
  %1895 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1894, i32 0, i32 3
  %1896 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1895, i32 0, i32 0
  %1897 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1896, align 8
  %1898 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1897, i32 0, i32 0
  store i32 %1891, i32* %1898, align 8
  %1899 = load %struct.TYPE_92__*, %struct.TYPE_92__** %42, align 8
  %1900 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %1899, i32 0, i32 0
  store %struct.TYPE_79__* %1900, %struct.TYPE_79__** %41, align 8
  br label %1924

1901:                                             ; preds = %1870
  %1902 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %1903 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %1902, i32 0, i32 0
  %1904 = load %struct.TYPE_103__*, %struct.TYPE_103__** %1903, align 8
  %1905 = getelementptr inbounds %struct.TYPE_103__, %struct.TYPE_103__* %1904, i32 0, i32 0
  %1906 = load i64, i64* %1905, align 8
  %1907 = load i64, i64* %9, align 8
  %1908 = add nsw i64 %1906, %1907
  %1909 = load %struct.TYPE_94__*, %struct.TYPE_94__** %20, align 8
  %1910 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %1909, i32 0, i32 0
  %1911 = load i64, i64* %1910, align 8
  %1912 = call i64 @le16_to_cpu(i64 %1911)
  %1913 = add nsw i64 %1908, %1912
  %1914 = inttoptr i64 %1913 to %struct.TYPE_93__*
  store %struct.TYPE_93__* %1914, %struct.TYPE_93__** %43, align 8
  %1915 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1916 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1915, i32 0, i32 0
  %1917 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1916, i32 0, i32 0
  %1918 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1917, i32 0, i32 3
  %1919 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1918, i32 0, i32 0
  %1920 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1919, align 8
  %1921 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1920, i32 0, i32 0
  store i32 255, i32* %1921, align 8
  %1922 = load %struct.TYPE_93__*, %struct.TYPE_93__** %43, align 8
  %1923 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %1922, i32 0, i32 0
  store %struct.TYPE_79__* %1923, %struct.TYPE_79__** %41, align 8
  br label %1924

1924:                                             ; preds = %1901, %1873
  %1925 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1926 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1925, i32 0, i32 6
  %1927 = load i64, i64* %1926, align 8
  %1928 = call i64 @le16_to_cpu(i64 %1927)
  %1929 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1930 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1929, i32 0, i32 0
  %1931 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1930, i32 0, i32 0
  %1932 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1931, i32 0, i32 3
  %1933 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1932, i32 0, i32 0
  %1934 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1933, align 8
  %1935 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1934, i32 0, i32 7
  store i64 %1928, i64* %1935, align 8
  %1936 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1937 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1936, i32 0, i32 5
  %1938 = load i64, i64* %1937, align 8
  %1939 = call i64 @le16_to_cpu(i64 %1938)
  %1940 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1941 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1940, i32 0, i32 0
  %1942 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1941, i32 0, i32 0
  %1943 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1942, i32 0, i32 3
  %1944 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1943, i32 0, i32 0
  %1945 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1944, align 8
  %1946 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1945, i32 0, i32 6
  store i64 %1939, i64* %1946, align 8
  %1947 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1948 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1947, i32 0, i32 4
  %1949 = load i64, i64* %1948, align 8
  %1950 = call i64 @le16_to_cpu(i64 %1949)
  %1951 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1952 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1951, i32 0, i32 0
  %1953 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1952, i32 0, i32 0
  %1954 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1953, i32 0, i32 3
  %1955 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1954, i32 0, i32 0
  %1956 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1955, align 8
  %1957 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1956, i32 0, i32 5
  store i64 %1950, i64* %1957, align 8
  %1958 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1959 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1958, i32 0, i32 3
  %1960 = load i64, i64* %1959, align 8
  %1961 = call i64 @le16_to_cpu(i64 %1960)
  %1962 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1963 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1962, i32 0, i32 0
  %1964 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1963, i32 0, i32 0
  %1965 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1964, i32 0, i32 3
  %1966 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1965, i32 0, i32 0
  %1967 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1966, align 8
  %1968 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1967, i32 0, i32 4
  store i64 %1961, i64* %1968, align 8
  %1969 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1970 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1969, i32 0, i32 2
  %1971 = load i64, i64* %1970, align 8
  %1972 = call i64 @le16_to_cpu(i64 %1971)
  %1973 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1974 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1973, i32 0, i32 0
  %1975 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1974, i32 0, i32 0
  %1976 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1975, i32 0, i32 3
  %1977 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1976, i32 0, i32 0
  %1978 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1977, align 8
  %1979 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1978, i32 0, i32 3
  store i64 %1972, i64* %1979, align 8
  %1980 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1981 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1980, i32 0, i32 1
  %1982 = load i64, i64* %1981, align 8
  %1983 = call i64 @le16_to_cpu(i64 %1982)
  %1984 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1985 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1984, i32 0, i32 0
  %1986 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1985, i32 0, i32 0
  %1987 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1986, i32 0, i32 3
  %1988 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1987, i32 0, i32 0
  %1989 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1988, align 8
  %1990 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1989, i32 0, i32 2
  store i64 %1983, i64* %1990, align 8
  %1991 = load %struct.TYPE_79__*, %struct.TYPE_79__** %41, align 8
  %1992 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %1991, i32 0, i32 0
  %1993 = load i64, i64* %1992, align 8
  %1994 = call i64 @le16_to_cpu(i64 %1993)
  %1995 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %1996 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1995, i32 0, i32 0
  %1997 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %1996, i32 0, i32 0
  %1998 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %1997, i32 0, i32 3
  %1999 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1998, i32 0, i32 0
  %2000 = load %struct.TYPE_70__*, %struct.TYPE_70__** %1999, align 8
  %2001 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %2000, i32 0, i32 1
  store i64 %1994, i64* %2001, align 8
  br label %2002

2002:                                             ; preds = %1924, %1830, %1823
  br label %2003

2003:                                             ; preds = %2002, %917
  store i32 0, i32* %2, align 4
  br label %2004

2004:                                             ; preds = %2003, %1865, %1752, %1586, %1474, %1318, %1038, %796, %565, %399, %350, %309, %276, %55
  %2005 = load i32, i32* %2, align 4
  ret i32 %2005
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_data_header(%struct.TYPE_103__*, i32, i32*, i64*, i64*, i64*) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @r600_parse_clk_voltage_dep_table(%struct.TYPE_101__*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local %struct.TYPE_102__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @r600_free_extended_power_table(%struct.radeon_device*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
