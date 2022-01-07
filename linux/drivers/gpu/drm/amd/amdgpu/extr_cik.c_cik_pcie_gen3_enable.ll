; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_pcie_gen3_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_pcie_gen3_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.pci_dev*, %struct.TYPE_3__ }
%struct.pci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.TYPE_3__ = type { i32 }

@amdgpu_pcie_gen2 = common dso_local global i64 0, align 8
@AMD_IS_APU = common dso_local global i32 0, align 4
@CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2 = common dso_local global i32 0, align 4
@CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3 = common dso_local global i32 0, align 4
@ixPCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE_MASK = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PCIE gen 3 link speeds already enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"enabling PCIE gen 3 link speeds, disable with amdgpu.pcie_gen2=0\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"PCIE gen 2 link speeds already enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"enabling PCIE gen 2 link speeds, disable with amdgpu.pcie_gen2=0\0A\00", align 1
@PCI_EXP_LNKCTL = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL_HAWD = common dso_local global i32 0, align 4
@ixPCIE_LC_STATUS1 = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH__SHIFT = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH__SHIFT = common dso_local global i32 0, align 4
@ixPCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATION_SUPPORT_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_DIS_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH__SHIFT = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_SUPPORT_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATE_EN_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_RECONFIG_NOW_MASK = common dso_local global i32 0, align 4
@PCI_EXP_DEVSTA = common dso_local global i64 0, align 8
@PCI_EXP_DEVSTA_TRPND = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL2 = common dso_local global i64 0, align 8
@ixPCIE_LC_CNTL4 = common dso_local global i32 0, align 4
@PCIE_LC_CNTL4__LC_SET_QUIESCE_MASK = common dso_local global i32 0, align 4
@PCIE_LC_CNTL4__LC_REDO_EQ_MASK = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL__LC_FORCE_EN_SW_SPEED_CHANGE_MASK = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_HW_SPEED_CHANGE_MASK = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_SW_SPEED_CHANGE_MASK = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL__LC_INITIATE_LINK_SPEED_CHANGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @cik_pcie_gen3_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_pcie_gen3_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
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
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %3, align 8
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 2
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i64 @pci_is_root_bus(%struct.TYPE_4__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %453

32:                                               ; preds = %1
  %33 = load i64, i64* @amdgpu_pcie_gen2, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %453

36:                                               ; preds = %32
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AMD_IS_APU, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %453

44:                                               ; preds = %36
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2, align 4
  %50 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %453

55:                                               ; preds = %44
  %56 = load i32, i32* @ixPCIE_LC_SPEED_CNTL, align 4
  %57 = call i32 @RREG32_PCIE(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE__SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %55
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @DRM_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %453

75:                                               ; preds = %70
  %76 = call i32 @DRM_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %93

77:                                               ; preds = %55
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @DRM_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %453

90:                                               ; preds = %85
  %91 = call i32 @DRM_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %77
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = call i32 @pci_pcie_cap(%struct.pci_dev* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %453

99:                                               ; preds = %93
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 2
  %102 = load %struct.pci_dev*, %struct.pci_dev** %101, align 8
  %103 = call i32 @pci_pcie_cap(%struct.pci_dev* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  br label %453

107:                                              ; preds = %99
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %368

115:                                              ; preds = %107
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 2
  br i1 %117, label %118, label %367

118:                                              ; preds = %115
  %119 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @pci_read_config_word(%struct.pci_dev* %119, i64 %123, i32* %10)
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %126 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %125, i32 0, i32 2
  %127 = load %struct.pci_dev*, %struct.pci_dev** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @pci_read_config_word(%struct.pci_dev* %127, i64 %131, i32* %11)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %9, align 4
  %136 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %140 = add nsw i64 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @pci_write_config_word(%struct.pci_dev* %136, i64 %140, i32 %141)
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %9, align 4
  %146 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %147 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %146, i32 0, i32 2
  %148 = load %struct.pci_dev*, %struct.pci_dev** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %152 = add nsw i64 %150, %151
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @pci_write_config_word(%struct.pci_dev* %148, i64 %152, i32 %153)
  %155 = load i32, i32* @ixPCIE_LC_STATUS1, align 4
  %156 = call i32 @RREG32_PCIE(i32 %155)
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* @PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* @PCIE_LC_STATUS1__LC_DETECTED_LINK_WIDTH__SHIFT, align 4
  %161 = ashr i32 %159, %160
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* @PCIE_LC_STATUS1__LC_OPERATING_LINK_WIDTH__SHIFT, align 4
  %166 = ashr i32 %164, %165
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %200

170:                                              ; preds = %118
  %171 = load i32, i32* @ixPCIE_LC_LINK_WIDTH_CNTL, align 4
  %172 = call i32 @RREG32_PCIE(i32 %171)
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATION_SUPPORT_MASK, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %170
  %178 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_MASK, align 4
  %179 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_DIS_MASK, align 4
  %180 = or i32 %178, %179
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %16, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH__SHIFT, align 4
  %186 = shl i32 %184, %185
  %187 = load i32, i32* %16, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_UPCONFIGURE_SUPPORT_MASK, align 4
  %190 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_RENEGOTIATE_EN_MASK, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_RECONFIG_NOW_MASK, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* %16, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* @ixPCIE_LC_LINK_WIDTH_CNTL, align 4
  %197 = load i32, i32* %16, align 4
  %198 = call i32 @WREG32_PCIE(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %177, %170
  br label %200

200:                                              ; preds = %199, %118
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %363, %200
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %202, 10
  br i1 %203, label %204, label %366

204:                                              ; preds = %201
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 2
  %207 = load %struct.pci_dev*, %struct.pci_dev** %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @PCI_EXP_DEVSTA, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @pci_read_config_word(%struct.pci_dev* %207, i64 %211, i32* %9)
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @PCI_EXP_DEVSTA_TRPND, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %204
  br label %366

218:                                              ; preds = %204
  %219 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %220 = load i32, i32* %4, align 4
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @pci_read_config_word(%struct.pci_dev* %219, i64 %223, i32* %10)
  %225 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %226 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %225, i32 0, i32 2
  %227 = load %struct.pci_dev*, %struct.pci_dev** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i32 @pci_read_config_word(%struct.pci_dev* %227, i64 %231, i32* %11)
  %233 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @pci_read_config_word(%struct.pci_dev* %233, i64 %237, i32* %12)
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %240 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %239, i32 0, i32 2
  %241 = load %struct.pci_dev*, %struct.pci_dev** %240, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %245 = add nsw i64 %243, %244
  %246 = call i32 @pci_read_config_word(%struct.pci_dev* %241, i64 %245, i32* %13)
  %247 = load i32, i32* @ixPCIE_LC_CNTL4, align 4
  %248 = call i32 @RREG32_PCIE(i32 %247)
  store i32 %248, i32* %16, align 4
  %249 = load i32, i32* @PCIE_LC_CNTL4__LC_SET_QUIESCE_MASK, align 4
  %250 = load i32, i32* %16, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* @ixPCIE_LC_CNTL4, align 4
  %253 = load i32, i32* %16, align 4
  %254 = call i32 @WREG32_PCIE(i32 %252, i32 %253)
  %255 = load i32, i32* @ixPCIE_LC_CNTL4, align 4
  %256 = call i32 @RREG32_PCIE(i32 %255)
  store i32 %256, i32* %16, align 4
  %257 = load i32, i32* @PCIE_LC_CNTL4__LC_REDO_EQ_MASK, align 4
  %258 = load i32, i32* %16, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* @ixPCIE_LC_CNTL4, align 4
  %261 = load i32, i32* %16, align 4
  %262 = call i32 @WREG32_PCIE(i32 %260, i32 %261)
  %263 = call i32 @msleep(i32 100)
  %264 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %268 = add nsw i64 %266, %267
  %269 = call i32 @pci_read_config_word(%struct.pci_dev* %264, i64 %268, i32* %9)
  %270 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %271 = xor i32 %270, -1
  %272 = load i32, i32* %9, align 4
  %273 = and i32 %272, %271
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %276 = and i32 %274, %275
  %277 = load i32, i32* %9, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %9, align 4
  %279 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %283 = add nsw i64 %281, %282
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @pci_write_config_word(%struct.pci_dev* %279, i64 %283, i32 %284)
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %287 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %286, i32 0, i32 2
  %288 = load %struct.pci_dev*, %struct.pci_dev** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %292 = add nsw i64 %290, %291
  %293 = call i32 @pci_read_config_word(%struct.pci_dev* %288, i64 %292, i32* %9)
  %294 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %295 = xor i32 %294, -1
  %296 = load i32, i32* %9, align 4
  %297 = and i32 %296, %295
  store i32 %297, i32* %9, align 4
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @PCI_EXP_LNKCTL_HAWD, align 4
  %300 = and i32 %298, %299
  %301 = load i32, i32* %9, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %9, align 4
  %303 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %304 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %303, i32 0, i32 2
  %305 = load %struct.pci_dev*, %struct.pci_dev** %304, align 8
  %306 = load i32, i32* %5, align 4
  %307 = sext i32 %306 to i64
  %308 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %309 = add nsw i64 %307, %308
  %310 = load i32, i32* %9, align 4
  %311 = call i32 @pci_write_config_word(%struct.pci_dev* %305, i64 %309, i32 %310)
  %312 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %313 = load i32, i32* %4, align 4
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %316 = add nsw i64 %314, %315
  %317 = call i32 @pci_read_config_word(%struct.pci_dev* %312, i64 %316, i32* %9)
  %318 = load i32, i32* %9, align 4
  %319 = and i32 %318, -3601
  store i32 %319, i32* %9, align 4
  %320 = load i32, i32* %12, align 4
  %321 = and i32 %320, 3600
  %322 = load i32, i32* %9, align 4
  %323 = or i32 %322, %321
  store i32 %323, i32* %9, align 4
  %324 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %325 = load i32, i32* %4, align 4
  %326 = sext i32 %325 to i64
  %327 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %328 = add nsw i64 %326, %327
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @pci_write_config_word(%struct.pci_dev* %324, i64 %328, i32 %329)
  %331 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %332 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %331, i32 0, i32 2
  %333 = load %struct.pci_dev*, %struct.pci_dev** %332, align 8
  %334 = load i32, i32* %5, align 4
  %335 = sext i32 %334 to i64
  %336 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %337 = add nsw i64 %335, %336
  %338 = call i32 @pci_read_config_word(%struct.pci_dev* %333, i64 %337, i32* %9)
  %339 = load i32, i32* %9, align 4
  %340 = and i32 %339, -3601
  store i32 %340, i32* %9, align 4
  %341 = load i32, i32* %13, align 4
  %342 = and i32 %341, 3600
  %343 = load i32, i32* %9, align 4
  %344 = or i32 %343, %342
  store i32 %344, i32* %9, align 4
  %345 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %346 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %345, i32 0, i32 2
  %347 = load %struct.pci_dev*, %struct.pci_dev** %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %351 = add nsw i64 %349, %350
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @pci_write_config_word(%struct.pci_dev* %347, i64 %351, i32 %352)
  %354 = load i32, i32* @ixPCIE_LC_CNTL4, align 4
  %355 = call i32 @RREG32_PCIE(i32 %354)
  store i32 %355, i32* %16, align 4
  %356 = load i32, i32* @PCIE_LC_CNTL4__LC_SET_QUIESCE_MASK, align 4
  %357 = xor i32 %356, -1
  %358 = load i32, i32* %16, align 4
  %359 = and i32 %358, %357
  store i32 %359, i32* %16, align 4
  %360 = load i32, i32* @ixPCIE_LC_CNTL4, align 4
  %361 = load i32, i32* %16, align 4
  %362 = call i32 @WREG32_PCIE(i32 %360, i32 %361)
  br label %363

363:                                              ; preds = %218
  %364 = load i32, i32* %8, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %8, align 4
  br label %201

366:                                              ; preds = %217, %201
  br label %367

367:                                              ; preds = %366, %115
  br label %368

368:                                              ; preds = %367, %107
  %369 = load i32, i32* @PCIE_LC_SPEED_CNTL__LC_FORCE_EN_SW_SPEED_CHANGE_MASK, align 4
  %370 = load i32, i32* @PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_HW_SPEED_CHANGE_MASK, align 4
  %371 = or i32 %369, %370
  %372 = load i32, i32* %6, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %6, align 4
  %374 = load i32, i32* @PCIE_LC_SPEED_CNTL__LC_FORCE_DIS_SW_SPEED_CHANGE_MASK, align 4
  %375 = xor i32 %374, -1
  %376 = load i32, i32* %6, align 4
  %377 = and i32 %376, %375
  store i32 %377, i32* %6, align 4
  %378 = load i32, i32* @ixPCIE_LC_SPEED_CNTL, align 4
  %379 = load i32, i32* %6, align 4
  %380 = call i32 @WREG32_PCIE(i32 %378, i32 %379)
  %381 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %382 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %381, i32 0, i32 2
  %383 = load %struct.pci_dev*, %struct.pci_dev** %382, align 8
  %384 = load i32, i32* %5, align 4
  %385 = sext i32 %384 to i64
  %386 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %387 = add nsw i64 %385, %386
  %388 = call i32 @pci_read_config_word(%struct.pci_dev* %383, i64 %387, i32* %9)
  %389 = load i32, i32* %9, align 4
  %390 = and i32 %389, -16
  store i32 %390, i32* %9, align 4
  %391 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %392 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %391, i32 0, i32 3
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN3, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %368
  %399 = load i32, i32* %9, align 4
  %400 = or i32 %399, 3
  store i32 %400, i32* %9, align 4
  br label %416

401:                                              ; preds = %368
  %402 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %403 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @CAIL_PCIE_LINK_SPEED_SUPPORT_GEN2, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %401
  %410 = load i32, i32* %9, align 4
  %411 = or i32 %410, 2
  store i32 %411, i32* %9, align 4
  br label %415

412:                                              ; preds = %401
  %413 = load i32, i32* %9, align 4
  %414 = or i32 %413, 1
  store i32 %414, i32* %9, align 4
  br label %415

415:                                              ; preds = %412, %409
  br label %416

416:                                              ; preds = %415, %398
  %417 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %418 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %417, i32 0, i32 2
  %419 = load %struct.pci_dev*, %struct.pci_dev** %418, align 8
  %420 = load i32, i32* %5, align 4
  %421 = sext i32 %420 to i64
  %422 = load i64, i64* @PCI_EXP_LNKCTL2, align 8
  %423 = add nsw i64 %421, %422
  %424 = load i32, i32* %9, align 4
  %425 = call i32 @pci_write_config_word(%struct.pci_dev* %419, i64 %423, i32 %424)
  %426 = load i32, i32* @ixPCIE_LC_SPEED_CNTL, align 4
  %427 = call i32 @RREG32_PCIE(i32 %426)
  store i32 %427, i32* %6, align 4
  %428 = load i32, i32* @PCIE_LC_SPEED_CNTL__LC_INITIATE_LINK_SPEED_CHANGE_MASK, align 4
  %429 = load i32, i32* %6, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* %6, align 4
  %431 = load i32, i32* @ixPCIE_LC_SPEED_CNTL, align 4
  %432 = load i32, i32* %6, align 4
  %433 = call i32 @WREG32_PCIE(i32 %431, i32 %432)
  store i32 0, i32* %8, align 4
  br label %434

434:                                              ; preds = %450, %416
  %435 = load i32, i32* %8, align 4
  %436 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %437 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = icmp slt i32 %435, %438
  br i1 %439, label %440, label %453

440:                                              ; preds = %434
  %441 = load i32, i32* @ixPCIE_LC_SPEED_CNTL, align 4
  %442 = call i32 @RREG32_PCIE(i32 %441)
  store i32 %442, i32* %6, align 4
  %443 = load i32, i32* %6, align 4
  %444 = load i32, i32* @PCIE_LC_SPEED_CNTL__LC_INITIATE_LINK_SPEED_CHANGE_MASK, align 4
  %445 = and i32 %443, %444
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %440
  br label %453

448:                                              ; preds = %440
  %449 = call i32 @udelay(i32 1)
  br label %450

450:                                              ; preds = %448
  %451 = load i32, i32* %8, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %8, align 4
  br label %434

453:                                              ; preds = %31, %35, %43, %54, %73, %88, %98, %106, %447, %434
  ret void
}

declare dso_local i64 @pci_is_root_bus(%struct.TYPE_4__*) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @pci_pcie_cap(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
