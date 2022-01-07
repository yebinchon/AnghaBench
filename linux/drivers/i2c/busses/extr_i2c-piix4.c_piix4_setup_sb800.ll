; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_setup_sb800.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_setup_sb800.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.pci_dev = type { i64, i64, i32, i32 }
%struct.pci_device_id = type { i32 }

@force = common dso_local global i64 0, align 8
@force_addr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"SMBus does not support forcing address!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AMD_HUDSON2_SMBUS = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_AMD_KERNCZ_SMBUS = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_HYGON = common dso_local global i64 0, align 8
@SB800_PIIX4_SMB_IDX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"sb800_piix4_smb\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"SMB base address index region 0x%x already in use.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"SMBus Host Controller not enabled!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SMBIOSIZE = common dso_local global i32 0, align 4
@piix4_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"SMBus region 0x%x already in use!\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Auxiliary SMBus Host Controller at 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"i2ccfg\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"SMBus I2C bus config region 0x%x already in use!\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Using IRQ for SMBus\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Using SMI# for SMBus\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"SMBus Host Controller at 0x%x, revision %d\0A\00", align 1
@SB800_PIIX4_PORT_IDX_KERNCZ = common dso_local global i64 0, align 8
@piix4_port_sel_sb800 = common dso_local global i64 0, align 8
@SB800_PIIX4_PORT_IDX_MASK_KERNCZ = common dso_local global i32 0, align 4
@piix4_port_mask_sb800 = common dso_local global i32 0, align 4
@SB800_PIIX4_PORT_IDX_SHIFT_KERNCZ = common dso_local global i32 0, align 4
@piix4_port_shift_sb800 = common dso_local global i32 0, align 4
@SB800_PIIX4_PORT_IDX_ALT = common dso_local global i64 0, align 8
@SB800_PIIX4_PORT_IDX_MASK = common dso_local global i32 0, align 4
@SB800_PIIX4_PORT_IDX_SHIFT = common dso_local global i32 0, align 4
@SB800_PIIX4_PORT_IDX_SEL = common dso_local global i32 0, align 4
@SB800_PIIX4_PORT_IDX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [48 x i8] c"Using register 0x%02x for SMBus port selection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*, i32)* @piix4_setup_sb800 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix4_setup_sb800(%struct.pci_dev* %0, %struct.pci_device_id* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 16, i32* %15, align 4
  %16 = load i64, i64* @force, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @force_addr, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18, %3
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 3
  %24 = call i32 (i32*, i8*, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %302

27:                                               ; preds = %18
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCI_DEVICE_ID_AMD_HUDSON2_SMBUS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 65
  br i1 %43, label %73, label %44

44:                                               ; preds = %39, %33, %27
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCI_DEVICE_ID_AMD_KERNCZ_SMBUS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %59, 73
  br i1 %60, label %73, label %61

61:                                               ; preds = %56, %50, %44
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PCI_VENDOR_ID_HYGON, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI_DEVICE_ID_AMD_KERNCZ_SMBUS, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %56, %39
  store i32 0, i32* %11, align 4
  br label %79

74:                                               ; preds = %67, %61
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 40, i32 44
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %74, %73
  %80 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %81 = call i32 @request_muxed_region(i32 %80, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 3
  %86 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %302

90:                                               ; preds = %79
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %93 = call i32 @outb_p(i32 %91, i32 %92)
  %94 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @inb_p(i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %100 = call i32 @outb_p(i32 %98, i32 %99)
  %101 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @inb_p(i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %105 = call i32 @release_region(i32 %104, i32 2)
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %90
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 16
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 %111, 8
  %113 = trunc i32 %112 to i16
  store i16 %113, i16* %8, align 2
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %108
  %117 = load i16, i16* %8, align 2
  %118 = zext i16 %117 to i32
  %119 = or i32 %118, 32
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %8, align 2
  br label %121

121:                                              ; preds = %116, %108
  br label %131

122:                                              ; preds = %90
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 1
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %10, align 4
  %126 = shl i32 %125, 8
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %128, 65504
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %8, align 2
  br label %131

131:                                              ; preds = %122, %121
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 3
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %302

140:                                              ; preds = %131
  %141 = load i16, i16* %8, align 2
  %142 = load i32, i32* @SMBIOSIZE, align 4
  %143 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @piix4_driver, i32 0, i32 0), align 8
  %144 = call i64 @acpi_check_region(i16 zeroext %141, i32 %142, i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %302

149:                                              ; preds = %140
  %150 = load i16, i16* %8, align 2
  %151 = load i32, i32* @SMBIOSIZE, align 4
  %152 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @piix4_driver, i32 0, i32 0), align 8
  %153 = call i32 @request_region(i16 zeroext %150, i32 %151, i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %149
  %156 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %157 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %156, i32 0, i32 3
  %158 = load i16, i16* %8, align 2
  %159 = zext i16 %158 to i32
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @EBUSY, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %302

163:                                              ; preds = %149
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 3
  %169 = load i16, i16* %8, align 2
  %170 = zext i16 %169 to i32
  %171 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %168, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %170)
  %172 = load i16, i16* %8, align 2
  %173 = zext i16 %172 to i32
  store i32 %173, i32* %4, align 4
  br label %302

174:                                              ; preds = %163
  %175 = load i16, i16* %8, align 2
  %176 = zext i16 %175 to i32
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %176, %177
  %179 = trunc i32 %178 to i16
  %180 = call i32 @request_region(i16 zeroext %179, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %174
  %183 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %184 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %183, i32 0, i32 3
  %185 = load i16, i16* %8, align 2
  %186 = zext i16 %185 to i32
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 (i32*, i8*, ...) @dev_err(i32* %184, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %188)
  %190 = load i16, i16* %8, align 2
  %191 = zext i16 %190 to i32
  %192 = load i32, i32* @SMBIOSIZE, align 4
  %193 = call i32 @release_region(i32 %191, i32 %192)
  %194 = load i32, i32* @EBUSY, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %4, align 4
  br label %302

196:                                              ; preds = %174
  %197 = load i16, i16* %8, align 2
  %198 = zext i16 %197 to i32
  %199 = load i32, i32* %15, align 4
  %200 = add nsw i32 %198, %199
  %201 = call i32 @inb_p(i32 %200)
  store i32 %201, i32* %14, align 4
  %202 = load i16, i16* %8, align 2
  %203 = zext i16 %202 to i32
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %203, %204
  %206 = call i32 @release_region(i32 %205, i32 1)
  %207 = load i32, i32* %14, align 4
  %208 = and i32 %207, 1
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %196
  %211 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %212 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %211, i32 0, i32 3
  %213 = call i32 @dev_dbg(i32* %212, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %218

214:                                              ; preds = %196
  %215 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %216 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %215, i32 0, i32 3
  %217 = call i32 @dev_dbg(i32* %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %218

218:                                              ; preds = %214, %210
  %219 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %220 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %219, i32 0, i32 3
  %221 = load i16, i16* %8, align 2
  %222 = zext i16 %221 to i32
  %223 = load i32, i32* %14, align 4
  %224 = ashr i32 %223, 4
  %225 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %220, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %222, i32 %224)
  %226 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %227 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %237, label %231

231:                                              ; preds = %218
  %232 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %233 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @PCI_VENDOR_ID_HYGON, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %263

237:                                              ; preds = %231, %218
  %238 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %239 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @PCI_DEVICE_ID_AMD_KERNCZ_SMBUS, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %254, label %243

243:                                              ; preds = %237
  %244 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @PCI_DEVICE_ID_AMD_HUDSON2_SMBUS, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %243
  %250 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %251 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp sge i32 %252, 31
  br i1 %253, label %254, label %258

254:                                              ; preds = %249, %237
  %255 = load i64, i64* @SB800_PIIX4_PORT_IDX_KERNCZ, align 8
  store i64 %255, i64* @piix4_port_sel_sb800, align 8
  %256 = load i32, i32* @SB800_PIIX4_PORT_IDX_MASK_KERNCZ, align 4
  store i32 %256, i32* @piix4_port_mask_sb800, align 4
  %257 = load i32, i32* @SB800_PIIX4_PORT_IDX_SHIFT_KERNCZ, align 4
  store i32 %257, i32* @piix4_port_shift_sb800, align 4
  br label %262

258:                                              ; preds = %249, %243
  %259 = load i64, i64* @SB800_PIIX4_PORT_IDX_ALT, align 8
  store i64 %259, i64* @piix4_port_sel_sb800, align 8
  %260 = load i32, i32* @SB800_PIIX4_PORT_IDX_MASK, align 4
  store i32 %260, i32* @piix4_port_mask_sb800, align 4
  %261 = load i32, i32* @SB800_PIIX4_PORT_IDX_SHIFT, align 4
  store i32 %261, i32* @piix4_port_shift_sb800, align 4
  br label %262

262:                                              ; preds = %258, %254
  br label %294

263:                                              ; preds = %231
  %264 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %265 = call i32 @request_muxed_region(i32 %264, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %263
  %268 = load i16, i16* %8, align 2
  %269 = zext i16 %268 to i32
  %270 = load i32, i32* @SMBIOSIZE, align 4
  %271 = call i32 @release_region(i32 %269, i32 %270)
  %272 = load i32, i32* @EBUSY, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %4, align 4
  br label %302

274:                                              ; preds = %263
  %275 = load i32, i32* @SB800_PIIX4_PORT_IDX_SEL, align 4
  %276 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %277 = call i32 @outb_p(i32 %275, i32 %276)
  %278 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %279 = add nsw i32 %278, 1
  %280 = call i32 @inb_p(i32 %279)
  store i32 %280, i32* %13, align 4
  %281 = load i32, i32* %13, align 4
  %282 = and i32 %281, 1
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %274
  %285 = load i64, i64* @SB800_PIIX4_PORT_IDX_ALT, align 8
  br label %288

286:                                              ; preds = %274
  %287 = load i64, i64* @SB800_PIIX4_PORT_IDX, align 8
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi i64 [ %285, %284 ], [ %287, %286 ]
  store i64 %289, i64* @piix4_port_sel_sb800, align 8
  %290 = load i32, i32* @SB800_PIIX4_PORT_IDX_MASK, align 4
  store i32 %290, i32* @piix4_port_mask_sb800, align 4
  %291 = load i32, i32* @SB800_PIIX4_PORT_IDX_SHIFT, align 4
  store i32 %291, i32* @piix4_port_shift_sb800, align 4
  %292 = load i32, i32* @SB800_PIIX4_SMB_IDX, align 4
  %293 = call i32 @release_region(i32 %292, i32 2)
  br label %294

294:                                              ; preds = %288, %262
  %295 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %296 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %295, i32 0, i32 3
  %297 = load i64, i64* @piix4_port_sel_sb800, align 8
  %298 = trunc i64 %297 to i32
  %299 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %296, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %298)
  %300 = load i16, i16* %8, align 2
  %301 = zext i16 %300 to i32
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %294, %267, %182, %166, %155, %146, %134, %83, %21
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @request_muxed_region(i32, i32, i8*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i64 @acpi_check_region(i16 zeroext, i32, i8*) #1

declare dso_local i32 @request_region(i16 zeroext, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
