; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_pcie_gen3_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_pcie_gen3_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@radeon_pcie_gen2 = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@PCIE_SPEED_8_0GT = common dso_local global i32 0, align 4
@PCIE_SPEED_5_0GT = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_CURRENT_DATA_RATE_MASK = common dso_local global i32 0, align 4
@LC_CURRENT_DATA_RATE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PCIE gen 3 link speeds already enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"enabling PCIE gen 3 link speeds, disable with radeon.pcie_gen2=0\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"PCIE gen 2 link speeds already enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\0A\00", align 1
@PCI_EXP_LNKCTL = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL_HAWD = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1 = common dso_local global i32 0, align 4
@LC_DETECTED_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@LC_DETECTED_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@LC_OPERATING_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@LC_OPERATING_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_RENEGOTIATION_SUPPORT = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@LC_UPCONFIGURE_DIS = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@LC_UPCONFIGURE_SUPPORT = common dso_local global i32 0, align 4
@LC_RENEGOTIATE_EN = common dso_local global i32 0, align 4
@LC_RECONFIG_NOW = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA = common dso_local global i64 0, align 8
@PCI_EXP_DEVSTA_TRPND = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2 = common dso_local global i64 0, align 8
@PCIE_LC_CNTL4 = common dso_local global i32 0, align 4
@LC_SET_QUIESCE = common dso_local global i32 0, align 4
@LC_REDO_EQ = common dso_local global i32 0, align 4
@LC_FORCE_EN_SW_SPEED_CHANGE = common dso_local global i32 0, align 4
@LC_FORCE_DIS_HW_SPEED_CHANGE = common dso_local global i32 0, align 4
@LC_FORCE_DIS_SW_SPEED_CHANGE = common dso_local global i32 0, align 4
@LC_INITIATE_LINK_SPEED_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_pcie_gen3_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_pcie_gen3_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %3, align 8
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i64 @pci_is_root_bus(%struct.TYPE_2__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %447

33:                                               ; preds = %1
  %34 = load i64, i64* @radeon_pcie_gen2, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %447

37:                                               ; preds = %33
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RADEON_IS_IGP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %447

45:                                               ; preds = %37
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @RADEON_IS_PCIE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %447

53:                                               ; preds = %45
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = call i32 @pcie_get_speed_cap(%struct.pci_dev* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %447

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PCIE_SPEED_8_0GT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %447

69:                                               ; preds = %64, %60
  %70 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %71 = call i32 @RREG32_PCIE_PORT(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @LC_CURRENT_DATA_RATE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @LC_CURRENT_DATA_RATE_SHIFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PCIE_SPEED_8_0GT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @DRM_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %447

85:                                               ; preds = %80
  %86 = call i32 @DRM_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %99

87:                                               ; preds = %69
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 @DRM_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %447

96:                                               ; preds = %91
  %97 = call i32 @DRM_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %87
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %101 = call i32 @pci_pcie_cap(%struct.pci_dev* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %447

105:                                              ; preds = %99
  %106 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %107 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %106, i32 0, i32 2
  %108 = load %struct.pci_dev*, %struct.pci_dev** %107, align 8
  %109 = call i32 @pci_pcie_cap(%struct.pci_dev* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %447

113:                                              ; preds = %105
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @PCIE_SPEED_8_0GT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %370

117:                                              ; preds = %113
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 2
  br i1 %119, label %120, label %369

120:                                              ; preds = %117
  %121 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @pci_read_config_word(%struct.pci_dev* %121, i64 %125, i32* %11)
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 2
  %129 = load %struct.pci_dev*, %struct.pci_dev** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @pci_read_config_word(%struct.pci_dev* %129, i64 %133, i32* %12)
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %10, align 4
  %138 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %142 = add nsw i64 %140, %141
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @pci_write_config_word(%struct.pci_dev* %138, i64 %142, i32 %143)
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %10, align 4
  %148 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 2
  %150 = load %struct.pci_dev*, %struct.pci_dev** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @pci_write_config_word(%struct.pci_dev* %150, i64 %154, i32 %155)
  %157 = load i32, i32* @PCIE_LC_STATUS1, align 4
  %158 = call i32 @RREG32_PCIE(i32 %157)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* @LC_DETECTED_LINK_WIDTH_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @LC_DETECTED_LINK_WIDTH_SHIFT, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* @LC_OPERATING_LINK_WIDTH_MASK, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* @LC_OPERATING_LINK_WIDTH_SHIFT, align 4
  %168 = ashr i32 %166, %167
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %120
  %173 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %174 = call i32 @RREG32_PCIE_PORT(i32 %173)
  store i32 %174, i32* %17, align 4
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @LC_RENEGOTIATION_SUPPORT, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %172
  %180 = load i32, i32* @LC_LINK_WIDTH_MASK, align 4
  %181 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %17, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* @LC_LINK_WIDTH_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = load i32, i32* %17, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* @LC_UPCONFIGURE_SUPPORT, align 4
  %192 = load i32, i32* @LC_RENEGOTIATE_EN, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @LC_RECONFIG_NOW, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %17, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %199 = load i32, i32* %17, align 4
  %200 = call i32 @WREG32_PCIE_PORT(i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %179, %172
  br label %202

202:                                              ; preds = %201, %120
  store i32 0, i32* %9, align 4
  br label %203

203:                                              ; preds = %365, %202
  %204 = load i32, i32* %9, align 4
  %205 = icmp slt i32 %204, 10
  br i1 %205, label %206, label %368

206:                                              ; preds = %203
  %207 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %208 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %207, i32 0, i32 2
  %209 = load %struct.pci_dev*, %struct.pci_dev** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* @PCI_EXP_DEVSTA, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @pci_read_config_word(%struct.pci_dev* %209, i64 %213, i32* %10)
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @PCI_EXP_DEVSTA_TRPND, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %206
  br label %368

220:                                              ; preds = %206
  %221 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @pci_read_config_word(%struct.pci_dev* %221, i64 %225, i32* %11)
  %227 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %228 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %227, i32 0, i32 2
  %229 = load %struct.pci_dev*, %struct.pci_dev** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %233 = add nsw i64 %231, %232
  %234 = call i32 @pci_read_config_word(%struct.pci_dev* %229, i64 %233, i32* %12)
  %235 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @pci_read_config_word(%struct.pci_dev* %235, i64 %239, i32* %13)
  %241 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 2
  %243 = load %struct.pci_dev*, %struct.pci_dev** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @pci_read_config_word(%struct.pci_dev* %243, i64 %247, i32* %14)
  %249 = load i32, i32* @PCIE_LC_CNTL4, align 4
  %250 = call i32 @RREG32_PCIE_PORT(i32 %249)
  store i32 %250, i32* %17, align 4
  %251 = load i32, i32* @LC_SET_QUIESCE, align 4
  %252 = load i32, i32* %17, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %17, align 4
  %254 = load i32, i32* @PCIE_LC_CNTL4, align 4
  %255 = load i32, i32* %17, align 4
  %256 = call i32 @WREG32_PCIE_PORT(i32 %254, i32 %255)
  %257 = load i32, i32* @PCIE_LC_CNTL4, align 4
  %258 = call i32 @RREG32_PCIE_PORT(i32 %257)
  store i32 %258, i32* %17, align 4
  %259 = load i32, i32* @LC_REDO_EQ, align 4
  %260 = load i32, i32* %17, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %17, align 4
  %262 = load i32, i32* @PCIE_LC_CNTL4, align 4
  %263 = load i32, i32* %17, align 4
  %264 = call i32 @WREG32_PCIE_PORT(i32 %262, i32 %263)
  %265 = call i32 @msleep(i32 100)
  %266 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i32 @pci_read_config_word(%struct.pci_dev* %266, i64 %270, i32* %10)
  %272 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %273 = xor i32 %272, -1
  %274 = load i32, i32* %10, align 4
  %275 = and i32 %274, %273
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %278 = and i32 %276, %277
  %279 = load i32, i32* %10, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %10, align 4
  %281 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %285 = add nsw i64 %283, %284
  %286 = load i32, i32* %10, align 4
  %287 = call i32 @pci_write_config_word(%struct.pci_dev* %281, i64 %285, i32 %286)
  %288 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %289 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %288, i32 0, i32 2
  %290 = load %struct.pci_dev*, %struct.pci_dev** %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @pci_read_config_word(%struct.pci_dev* %290, i64 %294, i32* %10)
  %296 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %297 = xor i32 %296, -1
  %298 = load i32, i32* %10, align 4
  %299 = and i32 %298, %297
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %302 = and i32 %300, %301
  %303 = load i32, i32* %10, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %10, align 4
  %305 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %306 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %305, i32 0, i32 2
  %307 = load %struct.pci_dev*, %struct.pci_dev** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %311 = add nsw i64 %309, %310
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @pci_write_config_word(%struct.pci_dev* %307, i64 %311, i32 %312)
  %314 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i32 @pci_read_config_word(%struct.pci_dev* %314, i64 %318, i32* %10)
  %320 = load i32, i32* %10, align 4
  %321 = and i32 %320, -3601
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* %13, align 4
  %323 = and i32 %322, 3600
  %324 = load i32, i32* %10, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %10, align 4
  %326 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %330 = add nsw i64 %328, %329
  %331 = load i32, i32* %10, align 4
  %332 = call i32 @pci_write_config_word(%struct.pci_dev* %326, i64 %330, i32 %331)
  %333 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %334 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %333, i32 0, i32 2
  %335 = load %struct.pci_dev*, %struct.pci_dev** %334, align 8
  %336 = load i32, i32* %6, align 4
  %337 = sext i32 %336 to i64
  %338 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %339 = add nsw i64 %337, %338
  %340 = call i32 @pci_read_config_word(%struct.pci_dev* %335, i64 %339, i32* %10)
  %341 = load i32, i32* %10, align 4
  %342 = and i32 %341, -3601
  store i32 %342, i32* %10, align 4
  %343 = load i32, i32* %14, align 4
  %344 = and i32 %343, 3600
  %345 = load i32, i32* %10, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %10, align 4
  %347 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %348 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %347, i32 0, i32 2
  %349 = load %struct.pci_dev*, %struct.pci_dev** %348, align 8
  %350 = load i32, i32* %6, align 4
  %351 = sext i32 %350 to i64
  %352 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %353 = add nsw i64 %351, %352
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @pci_write_config_word(%struct.pci_dev* %349, i64 %353, i32 %354)
  %356 = load i32, i32* @PCIE_LC_CNTL4, align 4
  %357 = call i32 @RREG32_PCIE_PORT(i32 %356)
  store i32 %357, i32* %17, align 4
  %358 = load i32, i32* @LC_SET_QUIESCE, align 4
  %359 = xor i32 %358, -1
  %360 = load i32, i32* %17, align 4
  %361 = and i32 %360, %359
  store i32 %361, i32* %17, align 4
  %362 = load i32, i32* @PCIE_LC_CNTL4, align 4
  %363 = load i32, i32* %17, align 4
  %364 = call i32 @WREG32_PCIE_PORT(i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %220
  %366 = load i32, i32* %9, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %9, align 4
  br label %203

368:                                              ; preds = %219, %203
  br label %369

369:                                              ; preds = %368, %117
  br label %370

370:                                              ; preds = %369, %113
  %371 = load i32, i32* @LC_FORCE_EN_SW_SPEED_CHANGE, align 4
  %372 = load i32, i32* @LC_FORCE_DIS_HW_SPEED_CHANGE, align 4
  %373 = or i32 %371, %372
  %374 = load i32, i32* %7, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %7, align 4
  %376 = load i32, i32* @LC_FORCE_DIS_SW_SPEED_CHANGE, align 4
  %377 = xor i32 %376, -1
  %378 = load i32, i32* %7, align 4
  %379 = and i32 %378, %377
  store i32 %379, i32* %7, align 4
  %380 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %381 = load i32, i32* %7, align 4
  %382 = call i32 @WREG32_PCIE_PORT(i32 %380, i32 %381)
  %383 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %384 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %383, i32 0, i32 2
  %385 = load %struct.pci_dev*, %struct.pci_dev** %384, align 8
  %386 = load i32, i32* %6, align 4
  %387 = sext i32 %386 to i64
  %388 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %389 = add nsw i64 %387, %388
  %390 = call i32 @pci_read_config_word(%struct.pci_dev* %385, i64 %389, i32* %10)
  %391 = load i32, i32* %10, align 4
  %392 = and i32 %391, -16
  store i32 %392, i32* %10, align 4
  %393 = load i32, i32* %4, align 4
  %394 = load i32, i32* @PCIE_SPEED_8_0GT, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %399

396:                                              ; preds = %370
  %397 = load i32, i32* %10, align 4
  %398 = or i32 %397, 3
  store i32 %398, i32* %10, align 4
  br label %410

399:                                              ; preds = %370
  %400 = load i32, i32* %4, align 4
  %401 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load i32, i32* %10, align 4
  %405 = or i32 %404, 2
  store i32 %405, i32* %10, align 4
  br label %409

406:                                              ; preds = %399
  %407 = load i32, i32* %10, align 4
  %408 = or i32 %407, 1
  store i32 %408, i32* %10, align 4
  br label %409

409:                                              ; preds = %406, %403
  br label %410

410:                                              ; preds = %409, %396
  %411 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %412 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %411, i32 0, i32 2
  %413 = load %struct.pci_dev*, %struct.pci_dev** %412, align 8
  %414 = load i32, i32* %6, align 4
  %415 = sext i32 %414 to i64
  %416 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %417 = add nsw i64 %415, %416
  %418 = load i32, i32* %10, align 4
  %419 = call i32 @pci_write_config_word(%struct.pci_dev* %413, i64 %417, i32 %418)
  %420 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %421 = call i32 @RREG32_PCIE_PORT(i32 %420)
  store i32 %421, i32* %7, align 4
  %422 = load i32, i32* @LC_INITIATE_LINK_SPEED_CHANGE, align 4
  %423 = load i32, i32* %7, align 4
  %424 = or i32 %423, %422
  store i32 %424, i32* %7, align 4
  %425 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %426 = load i32, i32* %7, align 4
  %427 = call i32 @WREG32_PCIE_PORT(i32 %425, i32 %426)
  store i32 0, i32* %9, align 4
  br label %428

428:                                              ; preds = %444, %410
  %429 = load i32, i32* %9, align 4
  %430 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %431 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = icmp slt i32 %429, %432
  br i1 %433, label %434, label %447

434:                                              ; preds = %428
  %435 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %436 = call i32 @RREG32_PCIE_PORT(i32 %435)
  store i32 %436, i32* %7, align 4
  %437 = load i32, i32* %7, align 4
  %438 = load i32, i32* @LC_INITIATE_LINK_SPEED_CHANGE, align 4
  %439 = and i32 %437, %438
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %434
  br label %447

442:                                              ; preds = %434
  %443 = call i32 @udelay(i32 1)
  br label %444

444:                                              ; preds = %442
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %9, align 4
  br label %428

447:                                              ; preds = %32, %36, %44, %52, %59, %68, %83, %94, %104, %112, %441, %428
  ret void
}

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_2__*) #1

declare dso_local i32 @pcie_get_speed_cap(%struct.pci_dev*) #1

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @pci_pcie_cap(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
