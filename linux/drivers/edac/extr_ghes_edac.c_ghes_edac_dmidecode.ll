; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ghes_edac.c_ghes_edac_dmidecode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ghes_edac.c_ghes_edac_dmidecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type { i64 }
%struct.ghes_edac_dimm_fill = type { i32, %struct.mem_ctl_info* }
%struct.mem_ctl_info = type { i32, i32, i32 }
%struct.memdev_dmi_entry = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.dimm_info = type { i64, i64, i32, i32, i8*, i32 }

@DMI_ENTRY_MEM_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Can't get DIMM%i size\0A\00", align 1
@MEM_RDDR = common dso_local global i64 0, align 8
@MEM_DDR = common dso_local global i64 0, align 8
@MEM_RDDR2 = common dso_local global i64 0, align 8
@MEM_DDR2 = common dso_local global i64 0, align 8
@MEM_FB_DDR2 = common dso_local global i64 0, align 8
@MEM_NVDIMM = common dso_local global i8* null, align 8
@MEM_RDDR3 = common dso_local global i64 0, align 8
@MEM_DDR3 = common dso_local global i64 0, align 8
@MEM_RDDR4 = common dso_local global i64 0, align 8
@MEM_DDR4 = common dso_local global i64 0, align 8
@MEM_RMBS = common dso_local global i64 0, align 8
@MEM_RDR = common dso_local global i64 0, align 8
@MEM_SDR = common dso_local global i64 0, align 8
@MEM_EDO = common dso_local global i64 0, align 8
@MEM_UNKNOWN = common dso_local global i64 0, align 8
@EDAC_NONE = common dso_local global i64 0, align 8
@EDAC_SECDED = common dso_local global i64 0, align 8
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"DIMM%i: %s size = %d MB%s\0A\00", align 1
@edac_mem_types = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"(ECC)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\09type %d, detail 0x%02x, width %d(total %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmi_header*, i8*)* @ghes_edac_dmidecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ghes_edac_dmidecode(%struct.dmi_header* %0, i8* %1) #0 {
  %3 = alloca %struct.dmi_header*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ghes_edac_dimm_fill*, align 8
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca %struct.memdev_dmi_entry*, align 8
  %8 = alloca %struct.dimm_info*, align 8
  %9 = alloca i32, align 4
  store %struct.dmi_header* %0, %struct.dmi_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ghes_edac_dimm_fill*
  store %struct.ghes_edac_dimm_fill* %11, %struct.ghes_edac_dimm_fill** %5, align 8
  %12 = load %struct.ghes_edac_dimm_fill*, %struct.ghes_edac_dimm_fill** %5, align 8
  %13 = getelementptr inbounds %struct.ghes_edac_dimm_fill, %struct.ghes_edac_dimm_fill* %12, i32 0, i32 1
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %13, align 8
  store %struct.mem_ctl_info* %14, %struct.mem_ctl_info** %6, align 8
  %15 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %16 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMI_ENTRY_MEM_DEVICE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %310

20:                                               ; preds = %2
  %21 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %22 = bitcast %struct.dmi_header* %21 to %struct.memdev_dmi_entry*
  store %struct.memdev_dmi_entry* %22, %struct.memdev_dmi_entry** %7, align 8
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %27 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %30 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ghes_edac_dimm_fill*, %struct.ghes_edac_dimm_fill** %5, align 8
  %33 = getelementptr inbounds %struct.ghes_edac_dimm_fill, %struct.ghes_edac_dimm_fill* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %25, i32 %28, i32 %31, i32 %34, i32 0, i32 0)
  store %struct.dimm_info* %35, %struct.dimm_info** %8, align 8
  %36 = call i32 @BIT(i32 7)
  %37 = call i32 @BIT(i32 13)
  %38 = or i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %40 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 65535
  br i1 %42, label %43, label %51

43:                                               ; preds = %20
  %44 = load %struct.ghes_edac_dimm_fill*, %struct.ghes_edac_dimm_fill** %5, align 8
  %45 = getelementptr inbounds %struct.ghes_edac_dimm_fill, %struct.ghes_edac_dimm_fill* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = call i8* @MiB_TO_PAGES(i32 32)
  %49 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %50 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %49, i32 0, i32 4
  store i8* %48, i8** %50, align 8
  br label %88

51:                                               ; preds = %20
  %52 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %53 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 32767
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %58 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @MiB_TO_PAGES(i32 %59)
  %61 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %62 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  br label %87

63:                                               ; preds = %51
  %64 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %65 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @BIT(i32 15)
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %72 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 32767
  %75 = shl i32 %74, 10
  %76 = call i8* @MiB_TO_PAGES(i32 %75)
  %77 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %78 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %86

79:                                               ; preds = %63
  %80 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %81 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @MiB_TO_PAGES(i32 %82)
  %84 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %85 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %79, %70
  br label %87

87:                                               ; preds = %86, %56
  br label %88

88:                                               ; preds = %87, %43
  %89 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %90 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %186 [
    i32 18, label %92
    i32 19, label %108
    i32 20, label %124
    i32 24, label %128
    i32 26, label %157
  ]

92:                                               ; preds = %88
  %93 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %94 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @BIT(i32 13)
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i64, i64* @MEM_RDDR, align 8
  %101 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %102 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %107

103:                                              ; preds = %92
  %104 = load i64, i64* @MEM_DDR, align 8
  %105 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %106 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  br label %239

108:                                              ; preds = %88
  %109 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %110 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @BIT(i32 13)
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i64, i64* @MEM_RDDR2, align 8
  %117 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %118 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %123

119:                                              ; preds = %108
  %120 = load i64, i64* @MEM_DDR2, align 8
  %121 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %122 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %119, %115
  br label %239

124:                                              ; preds = %88
  %125 = load i64, i64* @MEM_FB_DDR2, align 8
  %126 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %127 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %239

128:                                              ; preds = %88
  %129 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %130 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @BIT(i32 12)
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load i8*, i8** @MEM_NVDIMM, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %139 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %156

140:                                              ; preds = %128
  %141 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %142 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @BIT(i32 13)
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i64, i64* @MEM_RDDR3, align 8
  %149 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %150 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  br label %155

151:                                              ; preds = %140
  %152 = load i64, i64* @MEM_DDR3, align 8
  %153 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %154 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %135
  br label %239

157:                                              ; preds = %88
  %158 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %159 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @BIT(i32 12)
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  %165 = load i8*, i8** @MEM_NVDIMM, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %168 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  br label %185

169:                                              ; preds = %157
  %170 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %171 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @BIT(i32 13)
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i64, i64* @MEM_RDDR4, align 8
  %178 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %179 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %184

180:                                              ; preds = %169
  %181 = load i64, i64* @MEM_DDR4, align 8
  %182 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %183 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %180, %176
  br label %185

185:                                              ; preds = %184, %164
  br label %239

186:                                              ; preds = %88
  %187 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %188 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @BIT(i32 6)
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i64, i64* @MEM_RMBS, align 8
  %195 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %196 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  br label %238

197:                                              ; preds = %186
  %198 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %199 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %9, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* %9, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load i64, i64* @MEM_RDR, align 8
  %207 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %208 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  br label %237

209:                                              ; preds = %197
  %210 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %211 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @BIT(i32 7)
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load i64, i64* @MEM_SDR, align 8
  %218 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %219 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  br label %236

220:                                              ; preds = %209
  %221 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %222 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @BIT(i32 9)
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  %228 = load i64, i64* @MEM_EDO, align 8
  %229 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %230 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  br label %235

231:                                              ; preds = %220
  %232 = load i64, i64* @MEM_UNKNOWN, align 8
  %233 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %234 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %231, %227
  br label %236

236:                                              ; preds = %235, %216
  br label %237

237:                                              ; preds = %236, %205
  br label %238

238:                                              ; preds = %237, %193
  br label %239

239:                                              ; preds = %238, %185, %156, %124, %123, %107
  %240 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %241 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %240, i32 0, i32 4
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %244 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %243, i32 0, i32 5
  %245 = load i8*, i8** %244, align 8
  %246 = icmp eq i8* %242, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %239
  %248 = load i64, i64* @EDAC_NONE, align 8
  %249 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %250 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  br label %255

251:                                              ; preds = %239
  %252 = load i64, i64* @EDAC_SECDED, align 8
  %253 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %254 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %253, i32 0, i32 1
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %251, %247
  %256 = load i32, i32* @DEV_UNKNOWN, align 4
  %257 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %258 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  %259 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %260 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %259, i32 0, i32 2
  store i32 128, i32* %260, align 8
  %261 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %262 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %261, i32 0, i32 4
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %300

265:                                              ; preds = %255
  %266 = load %struct.ghes_edac_dimm_fill*, %struct.ghes_edac_dimm_fill** %5, align 8
  %267 = getelementptr inbounds %struct.ghes_edac_dimm_fill, %struct.ghes_edac_dimm_fill* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32*, i32** @edac_mem_types, align 8
  %270 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %271 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %276 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %275, i32 0, i32 4
  %277 = load i8*, i8** %276, align 8
  %278 = call i8* @PAGES_TO_MiB(i8* %277)
  %279 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %280 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @EDAC_NONE, align 8
  %283 = icmp ne i64 %281, %282
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %286 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %268, i32 %274, i8* %278, i8* %285)
  %287 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %288 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %291 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %294 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %293, i32 0, i32 4
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %297 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %296, i32 0, i32 5
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %289, i32 %292, i8* %295, i8* %298)
  br label %300

300:                                              ; preds = %265, %255
  %301 = load %struct.memdev_dmi_entry*, %struct.memdev_dmi_entry** %7, align 8
  %302 = getelementptr inbounds %struct.memdev_dmi_entry, %struct.memdev_dmi_entry* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %305 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load %struct.ghes_edac_dimm_fill*, %struct.ghes_edac_dimm_fill** %5, align 8
  %307 = getelementptr inbounds %struct.ghes_edac_dimm_fill, %struct.ghes_edac_dimm_fill* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 8
  br label %310

310:                                              ; preds = %300, %2
  ret void
}

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i8* @MiB_TO_PAGES(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i8* @PAGES_TO_MiB(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
