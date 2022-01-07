; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_detect_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_detect_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, %struct.ast_private* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ast_private = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"VGA not enabled on entry, requesting chip POST\0A\00", align 1
@PCI_CHIP_AST1180 = common dso_local global i64 0, align 8
@AST1100 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"AST 1180 detected\0A\00", align 1
@AST2500 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"AST 2500 detected\0A\00", align 1
@AST2400 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"AST 2400 detected\0A\00", align 1
@AST2300 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"AST 2300 detected\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"AST 1100 detected\0A\00", align 1
@AST2200 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"AST 2200 detected\0A\00", align 1
@AST2150 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"AST 2150 detected\0A\00", align 1
@AST2100 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"AST 2100 detected\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"AST 2000 detected\0A\00", align 1
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST_TX_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Using Sil164 TMDS transmitter\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Using DP501 DisplayPort transmitter\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Analog VGA only\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32*)* @ast_detect_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_detect_chip(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ast_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.ast_private*, %struct.ast_private** %9, align 8
  store %struct.ast_private* %10, %struct.ast_private** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = call i32 @ast_is_vga_enabled(%struct.drm_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call i32 @ast_enable_vga(%struct.drm_device* %15)
  %17 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  store i32 1, i32* %18, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %23 = call i32 @ast_open_key(%struct.ast_private* %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call i32 @ast_enable_mmio(%struct.drm_device* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = call i32 @ast_detect_config_mode(%struct.drm_device* %26, i32* %7)
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCI_CHIP_AST1180, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load i8*, i8** @AST1100, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %39 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %119

41:                                               ; preds = %21
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %46, 64
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @AST2500, align 4
  %50 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %51 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %118

53:                                               ; preds = %41
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load i32, i32* @AST2400, align 4
  %62 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %63 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %117

65:                                               ; preds = %53
  %66 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 32
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32, i32* @AST2300, align 4
  %74 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %75 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %116

77:                                               ; preds = %65
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %82, 16
  br i1 %83, label %84, label %111

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 768
  switch i32 %86, label %103 [
    i32 512, label %87
    i32 256, label %93
    i32 0, label %98
  ]

87:                                               ; preds = %84
  %88 = load i8*, i8** @AST1100, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %91 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %108

93:                                               ; preds = %84
  %94 = load i32, i32* @AST2200, align 4
  %95 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %96 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %108

98:                                               ; preds = %84
  %99 = load i32, i32* @AST2150, align 4
  %100 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %101 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %108

103:                                              ; preds = %84
  %104 = load i32, i32* @AST2100, align 4
  %105 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %106 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %98, %93, %87
  %109 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %110 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  br label %115

111:                                              ; preds = %77
  %112 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %113 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %112, i32 0, i32 0
  store i32 130, i32* %113, align 8
  %114 = call i32 @DRM_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %72
  br label %117

117:                                              ; preds = %116, %60
  br label %118

118:                                              ; preds = %117, %48
  br label %119

119:                                              ; preds = %118, %35
  %120 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %121 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %129 [
    i32 131, label %123
    i32 130, label %126
  ]

123:                                              ; preds = %119
  %124 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %125 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %124, i32 0, i32 2
  store i32 1, i32* %125, align 8
  br label %189

126:                                              ; preds = %119
  %127 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %128 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  br label %189

129:                                              ; preds = %119
  %130 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %131 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %132 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %130, i32 %131, i32 208, i32 255)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, 128
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %138 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  br label %188

139:                                              ; preds = %129
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %145 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  br label %187

146:                                              ; preds = %139
  %147 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %148 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %147, i32 0, i32 2
  store i32 0, i32* %148, align 8
  %149 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %150 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @AST2300, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %146
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, 768
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %160 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %154, %146
  %162 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %163 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @AST2400, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, 768
  %170 = icmp eq i32 %169, 256
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %173 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %172, i32 0, i32 2
  store i32 1, i32* %173, align 8
  br label %174

174:                                              ; preds = %171, %167, %161
  %175 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %176 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @AST2500, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load i32, i32* %7, align 4
  %182 = icmp eq i32 %181, 256
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %185 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %184, i32 0, i32 2
  store i32 1, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %180, %174
  br label %187

187:                                              ; preds = %186, %143
  br label %188

188:                                              ; preds = %187, %136
  br label %189

189:                                              ; preds = %188, %126, %123
  %190 = load i32, i32* @AST_TX_NONE, align 4
  %191 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %192 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %189
  %197 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %198 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %199 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %197, i32 %198, i32 163, i32 255)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = and i32 %200, 128
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %205 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %204, i32 0, i32 3
  store i32 128, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %196
  br label %207

207:                                              ; preds = %206, %189
  %208 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %209 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @AST2300, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %207
  %214 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %215 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @AST2400, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %256

219:                                              ; preds = %213, %207
  %220 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %221 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %222 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %220, i32 %221, i32 209, i32 255)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  switch i32 %223, label %255 [
    i32 4, label %224
    i32 8, label %227
    i32 12, label %252
  ]

224:                                              ; preds = %219
  %225 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %226 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %225, i32 0, i32 3
  store i32 128, i32* %226, align 4
  br label %255

227:                                              ; preds = %219
  %228 = load i32, i32* @GFP_KERNEL, align 4
  %229 = call i32* @kzalloc(i32 32768, i32 %228)
  %230 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %231 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %230, i32 0, i32 4
  store i32* %229, i32** %231, align 8
  %232 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %233 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %251

236:                                              ; preds = %227
  %237 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %238 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %239 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @ast_backup_fw(%struct.drm_device* %237, i32* %240, i32 32768)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %245 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %244, i32 0, i32 4
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @kfree(i32* %246)
  %248 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %249 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %248, i32 0, i32 4
  store i32* null, i32** %249, align 8
  br label %250

250:                                              ; preds = %243, %236
  br label %251

251:                                              ; preds = %250, %227
  br label %252

252:                                              ; preds = %219, %251
  %253 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %254 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %253, i32 0, i32 3
  store i32 129, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %219, %224
  br label %256

256:                                              ; preds = %255, %213
  %257 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %258 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  switch i32 %259, label %264 [
    i32 128, label %260
    i32 129, label %262
  ]

260:                                              ; preds = %256
  %261 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %266

262:                                              ; preds = %256
  %263 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %266

264:                                              ; preds = %256
  %265 = call i32 @DRM_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %262, %260
  ret i32 0
}

declare dso_local i32 @ast_is_vga_enabled(%struct.drm_device*) #1

declare dso_local i32 @ast_enable_vga(%struct.drm_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @ast_open_key(%struct.ast_private*) #1

declare dso_local i32 @ast_enable_mmio(%struct.drm_device*) #1

declare dso_local i32 @ast_detect_config_mode(%struct.drm_device*, i32*) #1

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @ast_backup_fw(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
