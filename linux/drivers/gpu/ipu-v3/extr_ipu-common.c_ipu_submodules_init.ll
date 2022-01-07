; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_submodules_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_submodules_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_devtype* }
%struct.ipu_devtype = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"cpmem\00", align 1
@IPU_CONF_CSI0_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"csi0\00", align 1
@IPU_CONF_CSI1_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"csi1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@IPU_CONF_VDI_EN = common dso_local global i32 0, align 4
@IPU_CONF_ISP_EN = common dso_local global i32 0, align 4
@IPU_CONF_IC_INPUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"vdi\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"image_convert\00", align 1
@IPU_CONF_DI0_EN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"di0\00", align 1
@IPU_CONF_DI1_EN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"di1\00", align 1
@IPU_CM_DC_REG_OFS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"dc_template\00", align 1
@IPU_CM_DMFC_REG_OFS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"dmfc\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@IPU_CM_SMFC_REG_OFS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"smfc\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"init %s failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_soc*, %struct.platform_device*, i64, %struct.clk*)* @ipu_submodules_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_submodules_init(%struct.ipu_soc* %0, %struct.platform_device* %1, i64 %2, %struct.clk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_soc*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.ipu_devtype*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %6, align 8
  store %struct.platform_device* %1, %struct.platform_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.clk* %3, %struct.clk** %9, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %12, align 8
  %16 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %17 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %16, i32 0, i32 0
  %18 = load %struct.ipu_devtype*, %struct.ipu_devtype** %17, align 8
  store %struct.ipu_devtype* %18, %struct.ipu_devtype** %13, align 8
  %19 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %20 = load %struct.device*, %struct.device** %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %23 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = call i32 @ipu_cpmem_init(%struct.ipu_soc* %19, %struct.device* %20, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %221

30:                                               ; preds = %4
  %31 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %32 = load %struct.device*, %struct.device** %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %35 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  %38 = load i32, i32* @IPU_CONF_CSI0_EN, align 4
  %39 = load %struct.clk*, %struct.clk** %9, align 8
  %40 = call i32 @ipu_csi_init(%struct.ipu_soc* %31, %struct.device* %32, i32 0, i64 %37, i32 %38, %struct.clk* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %218

44:                                               ; preds = %30
  %45 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %46 = load %struct.device*, %struct.device** %12, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %49 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = load i32, i32* @IPU_CONF_CSI1_EN, align 4
  %53 = load %struct.clk*, %struct.clk** %9, align 8
  %54 = call i32 @ipu_csi_init(%struct.ipu_soc* %45, %struct.device* %46, i32 1, i64 %51, i32 %52, %struct.clk* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %215

58:                                               ; preds = %44
  %59 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %60 = load %struct.device*, %struct.device** %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %63 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %68 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %66, %69
  %71 = call i32 @ipu_ic_init(%struct.ipu_soc* %59, %struct.device* %60, i64 %65, i64 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %212

75:                                               ; preds = %58
  %76 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %77 = load %struct.device*, %struct.device** %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %80 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %78, %81
  %83 = load i32, i32* @IPU_CONF_VDI_EN, align 4
  %84 = load i32, i32* @IPU_CONF_ISP_EN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IPU_CONF_IC_INPUT, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @ipu_vdi_init(%struct.ipu_soc* %76, %struct.device* %77, i64 %82, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %209

92:                                               ; preds = %75
  %93 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %94 = load %struct.device*, %struct.device** %12, align 8
  %95 = call i32 @ipu_image_convert_init(%struct.ipu_soc* %93, %struct.device* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %206

99:                                               ; preds = %92
  %100 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %101 = load %struct.device*, %struct.device** %12, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %104 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %102, %105
  %107 = load i32, i32* @IPU_CONF_DI0_EN, align 4
  %108 = load %struct.clk*, %struct.clk** %9, align 8
  %109 = call i32 @ipu_di_init(%struct.ipu_soc* %100, %struct.device* %101, i32 0, i64 %106, i32 %107, %struct.clk* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %203

113:                                              ; preds = %99
  %114 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %115 = load %struct.device*, %struct.device** %12, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %118 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %116, %119
  %121 = load i32, i32* @IPU_CONF_DI1_EN, align 4
  %122 = load %struct.clk*, %struct.clk** %9, align 8
  %123 = call i32 @ipu_di_init(%struct.ipu_soc* %114, %struct.device* %115, i32 1, i64 %120, i32 %121, %struct.clk* %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %200

127:                                              ; preds = %113
  %128 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %129 = load %struct.device*, %struct.device** %12, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %132 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %130, %133
  %135 = load i64, i64* @IPU_CM_DC_REG_OFS, align 8
  %136 = add i64 %134, %135
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %139 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = call i32 @ipu_dc_init(%struct.ipu_soc* %128, %struct.device* %129, i64 %136, i64 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %127
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %197

146:                                              ; preds = %127
  %147 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %148 = load %struct.device*, %struct.device** %12, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %151 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %149, %152
  %154 = load i64, i64* @IPU_CM_DMFC_REG_OFS, align 8
  %155 = add i64 %153, %154
  %156 = load %struct.clk*, %struct.clk** %9, align 8
  %157 = call i32 @ipu_dmfc_init(%struct.ipu_soc* %147, %struct.device* %148, i64 %155, %struct.clk* %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %194

161:                                              ; preds = %146
  %162 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %163 = load %struct.device*, %struct.device** %12, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %166 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %164, %167
  %169 = call i32 @ipu_dp_init(%struct.ipu_soc* %162, %struct.device* %163, i64 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %191

173:                                              ; preds = %161
  %174 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %175 = load %struct.device*, %struct.device** %12, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load %struct.ipu_devtype*, %struct.ipu_devtype** %13, align 8
  %178 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %176, %179
  %181 = load i64, i64* @IPU_CM_SMFC_REG_OFS, align 8
  %182 = add i64 %180, %181
  %183 = call i32 @ipu_smfc_init(%struct.ipu_soc* %174, %struct.device* %175, i64 %182)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %188

187:                                              ; preds = %173
  store i32 0, i32* %5, align 4
  br label %228

188:                                              ; preds = %186
  %189 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %190 = call i32 @ipu_dp_exit(%struct.ipu_soc* %189)
  br label %191

191:                                              ; preds = %188, %172
  %192 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %193 = call i32 @ipu_dmfc_exit(%struct.ipu_soc* %192)
  br label %194

194:                                              ; preds = %191, %160
  %195 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %196 = call i32 @ipu_dc_exit(%struct.ipu_soc* %195)
  br label %197

197:                                              ; preds = %194, %145
  %198 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %199 = call i32 @ipu_di_exit(%struct.ipu_soc* %198, i32 1)
  br label %200

200:                                              ; preds = %197, %126
  %201 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %202 = call i32 @ipu_di_exit(%struct.ipu_soc* %201, i32 0)
  br label %203

203:                                              ; preds = %200, %112
  %204 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %205 = call i32 @ipu_image_convert_exit(%struct.ipu_soc* %204)
  br label %206

206:                                              ; preds = %203, %98
  %207 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %208 = call i32 @ipu_vdi_exit(%struct.ipu_soc* %207)
  br label %209

209:                                              ; preds = %206, %91
  %210 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %211 = call i32 @ipu_ic_exit(%struct.ipu_soc* %210)
  br label %212

212:                                              ; preds = %209, %74
  %213 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %214 = call i32 @ipu_csi_exit(%struct.ipu_soc* %213, i32 1)
  br label %215

215:                                              ; preds = %212, %57
  %216 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %217 = call i32 @ipu_csi_exit(%struct.ipu_soc* %216, i32 0)
  br label %218

218:                                              ; preds = %215, %43
  %219 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %220 = call i32 @ipu_cpmem_exit(%struct.ipu_soc* %219)
  br label %221

221:                                              ; preds = %218, %29
  %222 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load i8*, i8** %10, align 8
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @dev_err(%struct.device* %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %224, i32 %225)
  %227 = load i32, i32* %11, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %221, %187
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i32 @ipu_cpmem_init(%struct.ipu_soc*, %struct.device*, i64) #1

declare dso_local i32 @ipu_csi_init(%struct.ipu_soc*, %struct.device*, i32, i64, i32, %struct.clk*) #1

declare dso_local i32 @ipu_ic_init(%struct.ipu_soc*, %struct.device*, i64, i64) #1

declare dso_local i32 @ipu_vdi_init(%struct.ipu_soc*, %struct.device*, i64, i32) #1

declare dso_local i32 @ipu_image_convert_init(%struct.ipu_soc*, %struct.device*) #1

declare dso_local i32 @ipu_di_init(%struct.ipu_soc*, %struct.device*, i32, i64, i32, %struct.clk*) #1

declare dso_local i32 @ipu_dc_init(%struct.ipu_soc*, %struct.device*, i64, i64) #1

declare dso_local i32 @ipu_dmfc_init(%struct.ipu_soc*, %struct.device*, i64, %struct.clk*) #1

declare dso_local i32 @ipu_dp_init(%struct.ipu_soc*, %struct.device*, i64) #1

declare dso_local i32 @ipu_smfc_init(%struct.ipu_soc*, %struct.device*, i64) #1

declare dso_local i32 @ipu_dp_exit(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_dmfc_exit(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_dc_exit(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_di_exit(%struct.ipu_soc*, i32) #1

declare dso_local i32 @ipu_image_convert_exit(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_vdi_exit(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_ic_exit(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_csi_exit(%struct.ipu_soc*, i32) #1

declare dso_local i32 @ipu_cpmem_exit(%struct.ipu_soc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
