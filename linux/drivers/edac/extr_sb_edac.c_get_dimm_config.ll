; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_dimm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_dimm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i32, i32, i32, %struct.TYPE_4__, i32, i8*, i32, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32 (%struct.sbridge_pvt.0*)* }
%struct.sbridge_pvt.0 = type opaque
%struct.TYPE_3__ = type { i32, i32, i32 }

@KNL_MAX_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mc#%d: Node ID: %d, source ID: %d\0A\00", align 1
@KNIGHTS_LANDING = common dso_local global i64 0, align 8
@EDAC_S4ECD4ED = common dso_local global i32 0, align 4
@NON_MIRRORING = common dso_local global i8* null, align 8
@KNL_MCMTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to read KNL_MCMTR register\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HASWELL = common dso_local global i64 0, align 8
@BROADWELL = common dso_local global i64 0, align 8
@HASWELL_HASYSDEFEATURE2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to read HASWELL_HASYSDEFEATURE2 register\0A\00", align 1
@ADDR_RANGE_MIRRORING = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"Address range partial memory mirroring is enabled\0A\00", align 1
@RASENABLES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to read RASENABLES register\0A\00", align 1
@FULL_MIRRORING = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Full memory mirroring is enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Memory mirroring is disabled\0A\00", align 1
@MCMTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to read MCMTR register\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Lockstep is enabled\0A\00", align 1
@EDAC_S8ECD8ED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Lockstep is disabled\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"address map is on closed page mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"address map is on open page mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @get_dimm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dimm_config(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.sbridge_pvt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %11, align 8
  store %struct.sbridge_pvt* %12, %struct.sbridge_pvt** %4, align 8
  %13 = load i32, i32* @KNL_MAX_CHANNELS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %18 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32 (%struct.sbridge_pvt.0*)*, i32 (%struct.sbridge_pvt.0*)** %19, align 8
  %21 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %22 = bitcast %struct.sbridge_pvt* %21 to %struct.sbridge_pvt.0*
  %23 = call i32 %20(%struct.sbridge_pvt.0* %22)
  %24 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %25 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %24, i32 0, i32 9
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %29 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %28, i32 0, i32 9
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %34 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %33, i32 0, i32 9
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %39 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %38, i32 0, i32 9
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37, i32 %42)
  %44 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %45 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @KNIGHTS_LANDING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %1
  %51 = load i32, i32* @EDAC_S4ECD4ED, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i8*, i8** @NON_MIRRORING, align 8
  %53 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %54 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %56 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %58 = call i64 @knl_get_dimm_capacity(%struct.sbridge_pvt* %57, i32* %16)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %192

61:                                               ; preds = %50
  %62 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %63 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @KNL_MCMTR, align 4
  %66 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %67 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = call i64 @pci_read_config_dword(i32 %64, i32 %65, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %192

75:                                               ; preds = %61
  br label %188

76:                                               ; preds = %1
  %77 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %78 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HASWELL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %85 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BROADWELL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %83, %76
  %91 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %92 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HASWELL_HASYSDEFEATURE2, align 4
  %95 = call i64 @pci_read_config_dword(i32 %93, i32 %94, i32* %8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %192

101:                                              ; preds = %90
  %102 = load i32, i32* %8, align 4
  %103 = call i64 @GET_BITFIELD(i32 %102, i32 21, i32 21)
  %104 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %105 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %104, i32 0, i32 7
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @GET_BITFIELD(i32 %106, i32 28, i32 28)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load i8*, i8** @ADDR_RANGE_MIRRORING, align 8
  %111 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %112 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %141

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %83
  %116 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %117 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @RASENABLES, align 4
  %120 = call i64 @pci_read_config_dword(i32 %118, i32 %119, i32* %8)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %192

126:                                              ; preds = %115
  %127 = load i32, i32* %8, align 4
  %128 = call i64 @IS_MIRROR_ENABLED(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i8*, i8** @FULL_MIRRORING, align 8
  %132 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %133 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %140

135:                                              ; preds = %126
  %136 = load i8*, i8** @NON_MIRRORING, align 8
  %137 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %138 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %135, %130
  br label %141

141:                                              ; preds = %140, %109
  %142 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %143 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @MCMTR, align 4
  %146 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %147 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = call i64 @pci_read_config_dword(i32 %144, i32 %145, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %192

155:                                              ; preds = %141
  %156 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %157 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @IS_LOCKSTEP_ENABLED(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i32, i32* @EDAC_S8ECD8ED, align 4
  store i32 %164, i32* %7, align 4
  %165 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %166 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  br label %172

167:                                              ; preds = %155
  %168 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %169 = load i32, i32* @EDAC_S4ECD4ED, align 4
  store i32 %169, i32* %7, align 4
  %170 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %171 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %170, i32 0, i32 1
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %162
  %173 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %174 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @IS_CLOSE_PG(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %181 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %182 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %181, i32 0, i32 2
  store i32 1, i32* %182, align 8
  br label %187

183:                                              ; preds = %172
  %184 = call i32 (i32, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %185 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %4, align 8
  %186 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %185, i32 0, i32 2
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %75
  %189 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @__populate_dimms(%struct.mem_ctl_info* %189, i32* %16, i32 %190)
  store i32 %191, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %192

192:                                              ; preds = %188, %151, %122, %97, %71, %60
  %193 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @edac_dbg(i32, i8*, ...) #2

declare dso_local i64 @knl_get_dimm_capacity(%struct.sbridge_pvt*, i32*) #2

declare dso_local i64 @pci_read_config_dword(i32, i32, i32*) #2

declare dso_local i64 @GET_BITFIELD(i32, i32, i32) #2

declare dso_local i64 @IS_MIRROR_ENABLED(i32) #2

declare dso_local i64 @IS_LOCKSTEP_ENABLED(i32) #2

declare dso_local i64 @IS_CLOSE_PG(i32) #2

declare dso_local i32 @__populate_dimms(%struct.mem_ctl_info*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
