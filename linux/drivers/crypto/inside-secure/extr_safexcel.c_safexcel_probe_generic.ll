; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_probe_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_probe_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, i64, i32, %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_8__, %struct.device*, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_6__, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.safexcel_crypto_priv* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.pci_dev = type { i32 }
%struct.safexcel_ring_irq_data = type { i32, %struct.safexcel_crypto_priv* }

@.str = private unnamed_addr constant [17 x i8] c"safexcel-context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EIP97_HIA_AIC_BASE = common dso_local global i64 0, align 8
@EIP197_HIA_VERSION = common dso_local global i64 0, align 8
@EIP197_HIA_VERSION_LE = common dso_local global i64 0, align 8
@EIP197_HIA_VERSION_BE = common dso_local global i64 0, align 8
@EIP197_MST_CTRL_BYTE_SWAP_BITS = common dso_local global i32 0, align 4
@EIP197_HIA_AIC_BASE = common dso_local global i64 0, align 8
@SAFEXCEL_HW_EIP197 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIP197_HIA_MST_CTRL = common dso_local global i64 0, align 8
@EIP197_VERSION = common dso_local global i64 0, align 8
@EIP197_VERSION_LE = common dso_local global i64 0, align 8
@EIP97_VERSION_LE = common dso_local global i64 0, align 8
@EIP96_VERSION_LE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"EIP%d: EIP96 not detected.\0A\00", align 1
@EIP197_HIA_OPTIONS = common dso_local global i64 0, align 8
@EIP197_HWDATAW_OFFSET = common dso_local global i32 0, align 4
@EIP197_HWDATAW_MASK = common dso_local global i32 0, align 4
@EIP197_CFSIZE_OFFSET = common dso_local global i32 0, align 4
@EIP197_CFSIZE_MASK = common dso_local global i32 0, align 4
@EIP197_CFSIZE_ADJUST = common dso_local global i32 0, align 4
@EIP197_RFSIZE_OFFSET = common dso_local global i32 0, align 4
@EIP197_RFSIZE_MASK = common dso_local global i32 0, align 4
@EIP197_RFSIZE_ADJUST = common dso_local global i32 0, align 4
@EIP97_HWDATAW_MASK = common dso_local global i32 0, align 4
@EIP97_CFSIZE_OFFSET = common dso_local global i32 0, align 4
@EIP97_CFSIZE_MASK = common dso_local global i32 0, align 4
@EIP97_RFSIZE_OFFSET = common dso_local global i32 0, align 4
@EIP97_RFSIZE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"EIP%d:%x(%d)-HIA:%x(%d,%d,%d),PE:%x,alg:%08x\0A\00", align 1
@CONFIG_PCI = common dso_local global i32 0, align 4
@EIP197_DEVBRD = common dso_local global i64 0, align 8
@PCI_IRQ_MSI = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to allocate PCI MSI interrupts\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to initialize rings\0A\00", align 1
@EIP197_DEFAULT_RING_SIZE = common dso_local global i32 0, align 4
@safexcel_irq_ring = common dso_local global i32 0, align 4
@safexcel_irq_ring_thread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to get IRQ ID for ring %d\0A\00", align 1
@safexcel_dequeue_work = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"wq_ring%d\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"HW init failed (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to register algorithms (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.safexcel_crypto_priv*, i32)* @safexcel_probe_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_probe_generic(i8* %0, %struct.safexcel_crypto_priv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.safexcel_crypto_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pci_dev*, align 8
  %18 = alloca [9 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca %struct.safexcel_ring_irq_data*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.safexcel_crypto_priv* %1, %struct.safexcel_crypto_priv** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %22 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %21, i32 0, i32 6
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %8, align 8
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = call i32 @dmam_pool_create(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.device* %24, i32 4, i32 1, i32 0)
  %26 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %27 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %29 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %573

35:                                               ; preds = %3
  %36 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %37 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EIP97_HIA_AIC_BASE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @EIP197_HIA_VERSION, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i8* @readl(i64 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @EIP197_REG_LO16(i32 %45)
  %47 = load i64, i64* @EIP197_HIA_VERSION_LE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @EIP197_VERSION_MASK(i32 %50)
  %52 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %53 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  store i8* %51, i8** %54, align 8
  br label %115

55:                                               ; preds = %35
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @EIP197_REG_HI16(i32 %56)
  %58 = load i64, i64* @EIP197_HIA_VERSION_BE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @EIP197_MST_CTRL_BYTE_SWAP_BITS, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i8* @EIP197_VERSION_SWAP(i32 %62)
  %64 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %65 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 5
  store i8* %63, i8** %66, align 8
  br label %114

67:                                               ; preds = %55
  %68 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %69 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EIP197_HIA_AIC_BASE, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i64, i64* @EIP197_HIA_VERSION, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i8* @readl(i64 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @EIP197_REG_LO16(i32 %77)
  %79 = load i64, i64* @EIP197_HIA_VERSION_LE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %67
  %82 = load i32, i32* %10, align 4
  %83 = call i8* @EIP197_VERSION_MASK(i32 %82)
  %84 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %85 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  store i8* %83, i8** %86, align 8
  %87 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %88 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %89 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %113

92:                                               ; preds = %67
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @EIP197_REG_HI16(i32 %93)
  %95 = load i64, i64* @EIP197_HIA_VERSION_BE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %92
  %98 = load i32, i32* @EIP197_MST_CTRL_BYTE_SWAP_BITS, align 4
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i8* @EIP197_VERSION_SWAP(i32 %99)
  %101 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %102 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  store i8* %100, i8** %103, align 8
  %104 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %105 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %106 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %112

109:                                              ; preds = %92
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %573

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113, %60
  br label %115

115:                                              ; preds = %114, %49
  %116 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %117 = call i32 @safexcel_init_register_offsets(%struct.safexcel_crypto_priv* %116)
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %122 = call i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv* %121)
  %123 = load i64, i64* @EIP197_HIA_MST_CTRL, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i8* @readl(i64 %124)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = ashr i32 %128, 24
  %130 = xor i32 %127, %129
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %133 = call i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv* %132)
  %134 = load i64, i64* @EIP197_HIA_MST_CTRL, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %131, i64 %135)
  br label %137

137:                                              ; preds = %120, %115
  %138 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %139 = call i64 @EIP197_GLOBAL(%struct.safexcel_crypto_priv* %138)
  %140 = load i64, i64* @EIP197_VERSION, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i8* @readl(i64 %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %10, align 4
  %144 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %145 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %137
  %151 = load i32, i32* %10, align 4
  %152 = call i64 @EIP197_REG_LO16(i32 %151)
  %153 = load i64, i64* @EIP197_VERSION_LE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %150, %137
  %156 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %157 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  %164 = call i64 @EIP197_REG_LO16(i32 %163)
  %165 = load i64, i64* @EIP97_VERSION_LE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %162, %150
  %168 = load i32, i32* @ENODEV, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %4, align 4
  br label %573

170:                                              ; preds = %162, %155
  %171 = load i32, i32* %10, align 4
  %172 = call i8* @EIP197_VERSION_MASK(i32 %171)
  %173 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %174 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 6
  store i8* %172, i8** %175, align 8
  %176 = load i32, i32* %10, align 4
  %177 = ashr i32 %176, 28
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %10, align 4
  %179 = and i32 %178, 255
  store i32 %179, i32* %9, align 4
  %180 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %181 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %180)
  %182 = call i64 @EIP197_PE_EIP96_VERSION(i32 0)
  %183 = add nsw i64 %181, %182
  %184 = call i8* @readl(i64 %183)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i64 @EIP197_REG_LO16(i32 %186)
  %188 = load i64, i64* @EIP96_VERSION_LE, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %170
  %191 = load %struct.device*, %struct.device** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* @ENODEV, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %4, align 4
  br label %573

196:                                              ; preds = %170
  %197 = load i32, i32* %10, align 4
  %198 = call i8* @EIP197_VERSION_MASK(i32 %197)
  %199 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %200 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 4
  store i8* %198, i8** %201, align 8
  %202 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %203 = call i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv* %202)
  %204 = load i64, i64* @EIP197_HIA_OPTIONS, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i8* @readl(i64 %205)
  %207 = ptrtoint i8* %206 to i32
  store i32 %207, i32* %13, align 4
  %208 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %209 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @SAFEXCEL_HW_EIP197, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %243

214:                                              ; preds = %196
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* @EIP197_HWDATAW_OFFSET, align 4
  %217 = ashr i32 %215, %216
  %218 = load i32, i32* @EIP197_HWDATAW_MASK, align 4
  %219 = and i32 %217, %218
  %220 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %221 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* @EIP197_CFSIZE_OFFSET, align 4
  %225 = ashr i32 %223, %224
  %226 = load i32, i32* @EIP197_CFSIZE_MASK, align 4
  %227 = and i32 %225, %226
  %228 = load i32, i32* @EIP197_CFSIZE_ADJUST, align 4
  %229 = add nsw i32 %227, %228
  %230 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %231 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* @EIP197_RFSIZE_OFFSET, align 4
  %235 = ashr i32 %233, %234
  %236 = load i32, i32* @EIP197_RFSIZE_MASK, align 4
  %237 = and i32 %235, %236
  %238 = load i32, i32* @EIP197_RFSIZE_ADJUST, align 4
  %239 = add nsw i32 %237, %238
  %240 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %241 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  store i32 %239, i32* %242, align 8
  br label %268

243:                                              ; preds = %196
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* @EIP197_HWDATAW_OFFSET, align 4
  %246 = ashr i32 %244, %245
  %247 = load i32, i32* @EIP97_HWDATAW_MASK, align 4
  %248 = and i32 %246, %247
  %249 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %250 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %249, i32 0, i32 5
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @EIP97_CFSIZE_OFFSET, align 4
  %254 = ashr i32 %252, %253
  %255 = load i32, i32* @EIP97_CFSIZE_MASK, align 4
  %256 = and i32 %254, %255
  %257 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %258 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  store i32 %256, i32* %259, align 4
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* @EIP97_RFSIZE_OFFSET, align 4
  %262 = ashr i32 %260, %261
  %263 = load i32, i32* @EIP97_RFSIZE_MASK, align 4
  %264 = and i32 %262, %263
  %265 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %266 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %265, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  store i32 %264, i32* %267, align 8
  br label %268

268:                                              ; preds = %243, %214
  %269 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %270 = call i64 @EIP197_PE(%struct.safexcel_crypto_priv* %269)
  %271 = call i64 @EIP197_PE_EIP96_OPTIONS(i32 0)
  %272 = add nsw i64 %270, %271
  %273 = call i8* @readl(i64 %272)
  %274 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %275 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 3
  store i8* %273, i8** %276, align 8
  %277 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %278 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %277, i32 0, i32 6
  %279 = load %struct.device*, %struct.device** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %282 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 6
  %284 = load i8*, i8** %283, align 8
  %285 = load i32, i32* %16, align 4
  %286 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %287 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 5
  %289 = load i8*, i8** %288, align 8
  %290 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %291 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %295 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %299 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %303 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 4
  %305 = load i8*, i8** %304, align 8
  %306 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %307 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 3
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @dev_info(%struct.device* %279, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %280, i8* %284, i32 %285, i8* %289, i32 %293, i32 %297, i32 %301, i8* %305, i8* %309)
  %311 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %312 = call i32 @safexcel_configure(%struct.safexcel_crypto_priv* %311)
  %313 = load i32, i32* @CONFIG_PCI, align 4
  %314 = call i64 @IS_ENABLED(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %347

316:                                              ; preds = %268
  %317 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %318 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @EIP197_DEVBRD, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %347

322:                                              ; preds = %316
  %323 = load i8*, i8** %5, align 8
  %324 = bitcast i8* %323 to %struct.pci_dev*
  store %struct.pci_dev* %324, %struct.pci_dev** %17, align 8
  %325 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %326 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %327 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, 1
  %331 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %332 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, 1
  %336 = load i32, i32* @PCI_IRQ_MSI, align 4
  %337 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %338 = or i32 %336, %337
  %339 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %325, i32 %330, i32 %335, i32 %338)
  store i32 %339, i32* %15, align 4
  %340 = load i32, i32* %15, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %322
  %343 = load %struct.device*, %struct.device** %8, align 8
  %344 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %343, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %345 = load i32, i32* %15, align 4
  store i32 %345, i32* %4, align 4
  br label %573

346:                                              ; preds = %322
  br label %347

347:                                              ; preds = %346, %316, %268
  %348 = load %struct.device*, %struct.device** %8, align 8
  %349 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %350 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @GFP_KERNEL, align 4
  %354 = call i8* @devm_kcalloc(%struct.device* %348, i32 %352, i32 64, i32 %353)
  %355 = bitcast i8* %354 to %struct.TYPE_7__*
  %356 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %357 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %356, i32 0, i32 3
  store %struct.TYPE_7__* %355, %struct.TYPE_7__** %357, align 8
  %358 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %359 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %358, i32 0, i32 3
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %359, align 8
  %361 = icmp ne %struct.TYPE_7__* %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %347
  %363 = load i32, i32* @ENOMEM, align 4
  %364 = sub nsw i32 0, %363
  store i32 %364, i32* %4, align 4
  br label %573

365:                                              ; preds = %347
  store i32 0, i32* %14, align 4
  br label %366

366:                                              ; preds = %546, %365
  %367 = load i32, i32* %14, align 4
  %368 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %369 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %367, %371
  br i1 %372, label %373, label %549

373:                                              ; preds = %366
  %374 = bitcast [9 x i8]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %374, i8 0, i64 9, i1 false)
  %375 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %376 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %377 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %376, i32 0, i32 3
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %377, align 8
  %379 = load i32, i32* %14, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 9
  %383 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %384 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %383, i32 0, i32 3
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %384, align 8
  %386 = load i32, i32* %14, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 8
  %390 = call i32 @safexcel_init_ring_descriptors(%struct.safexcel_crypto_priv* %375, i32* %382, i32* %389)
  store i32 %390, i32* %15, align 4
  %391 = load i32, i32* %15, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %373
  %394 = load %struct.device*, %struct.device** %8, align 8
  %395 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %394, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %396 = load i32, i32* %15, align 4
  store i32 %396, i32* %4, align 4
  br label %573

397:                                              ; preds = %373
  %398 = load %struct.device*, %struct.device** %8, align 8
  %399 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %400 = load i32, i32* @GFP_KERNEL, align 4
  %401 = call i8* @devm_kcalloc(%struct.device* %398, i32 %399, i32 8, i32 %400)
  %402 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %403 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %402, i32 0, i32 3
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %403, align 8
  %405 = load i32, i32* %14, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 7
  store i8* %401, i8** %408, align 8
  %409 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %410 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %409, i32 0, i32 3
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %410, align 8
  %412 = load i32, i32* %14, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 7
  %416 = load i8*, i8** %415, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %421, label %418

418:                                              ; preds = %397
  %419 = load i32, i32* @ENOMEM, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %4, align 4
  br label %573

421:                                              ; preds = %397
  %422 = load %struct.device*, %struct.device** %8, align 8
  %423 = load i32, i32* @GFP_KERNEL, align 4
  %424 = call %struct.safexcel_ring_irq_data* @devm_kzalloc(%struct.device* %422, i32 16, i32 %423)
  store %struct.safexcel_ring_irq_data* %424, %struct.safexcel_ring_irq_data** %20, align 8
  %425 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %20, align 8
  %426 = icmp ne %struct.safexcel_ring_irq_data* %425, null
  br i1 %426, label %430, label %427

427:                                              ; preds = %421
  %428 = load i32, i32* @ENOMEM, align 4
  %429 = sub nsw i32 0, %428
  store i32 %429, i32* %4, align 4
  br label %573

430:                                              ; preds = %421
  %431 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %432 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %20, align 8
  %433 = getelementptr inbounds %struct.safexcel_ring_irq_data, %struct.safexcel_ring_irq_data* %432, i32 0, i32 1
  store %struct.safexcel_crypto_priv* %431, %struct.safexcel_crypto_priv** %433, align 8
  %434 = load i32, i32* %14, align 4
  %435 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %20, align 8
  %436 = getelementptr inbounds %struct.safexcel_ring_irq_data, %struct.safexcel_ring_irq_data* %435, i32 0, i32 0
  store i32 %434, i32* %436, align 8
  %437 = load i8*, i8** %5, align 8
  %438 = load i32, i32* %14, align 4
  %439 = load i32, i32* %7, align 4
  %440 = call i32 @EIP197_IRQ_NUMBER(i32 %438, i32 %439)
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* @safexcel_irq_ring, align 4
  %443 = load i32, i32* @safexcel_irq_ring_thread, align 4
  %444 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %20, align 8
  %445 = call i32 @safexcel_request_ring_irq(i8* %437, i32 %440, i32 %441, i32 %442, i32 %443, %struct.safexcel_ring_irq_data* %444)
  store i32 %445, i32* %19, align 4
  %446 = load i32, i32* %19, align 4
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %448, label %453

448:                                              ; preds = %430
  %449 = load %struct.device*, %struct.device** %8, align 8
  %450 = load i32, i32* %14, align 4
  %451 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %449, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* %19, align 4
  store i32 %452, i32* %4, align 4
  br label %573

453:                                              ; preds = %430
  %454 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %455 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %456 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %455, i32 0, i32 3
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %456, align 8
  %458 = load i32, i32* %14, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 6
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 2
  store %struct.safexcel_crypto_priv* %454, %struct.safexcel_crypto_priv** %462, align 8
  %463 = load i32, i32* %14, align 4
  %464 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %465 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %464, i32 0, i32 3
  %466 = load %struct.TYPE_7__*, %struct.TYPE_7__** %465, align 8
  %467 = load i32, i32* %14, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 6
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 0
  store i32 %463, i32* %471, align 8
  %472 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %473 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %472, i32 0, i32 3
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  %475 = load i32, i32* %14, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i32 0, i32 6
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 1
  %480 = load i32, i32* @safexcel_dequeue_work, align 4
  %481 = call i32 @INIT_WORK(i32* %479, i32 %480)
  %482 = getelementptr inbounds [9 x i8], [9 x i8]* %18, i64 0, i64 0
  %483 = load i32, i32* %14, align 4
  %484 = call i32 @snprintf(i8* %482, i32 9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %483)
  %485 = getelementptr inbounds [9 x i8], [9 x i8]* %18, i64 0, i64 0
  %486 = call i32 @create_singlethread_workqueue(i8* %485)
  %487 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %488 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %487, i32 0, i32 3
  %489 = load %struct.TYPE_7__*, %struct.TYPE_7__** %488, align 8
  %490 = load i32, i32* %14, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 5
  store i32 %486, i32* %493, align 8
  %494 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %495 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %494, i32 0, i32 3
  %496 = load %struct.TYPE_7__*, %struct.TYPE_7__** %495, align 8
  %497 = load i32, i32* %14, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 5
  %501 = load i32, i32* %500, align 8
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %506, label %503

503:                                              ; preds = %453
  %504 = load i32, i32* @ENOMEM, align 4
  %505 = sub nsw i32 0, %504
  store i32 %505, i32* %4, align 4
  br label %573

506:                                              ; preds = %453
  %507 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %508 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %507, i32 0, i32 3
  %509 = load %struct.TYPE_7__*, %struct.TYPE_7__** %508, align 8
  %510 = load i32, i32* %14, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 4
  store i64 0, i64* %513, align 8
  %514 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %515 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %514, i32 0, i32 3
  %516 = load %struct.TYPE_7__*, %struct.TYPE_7__** %515, align 8
  %517 = load i32, i32* %14, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %519, i32 0, i32 0
  store i32 0, i32* %520, align 8
  %521 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %522 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %521, i32 0, i32 3
  %523 = load %struct.TYPE_7__*, %struct.TYPE_7__** %522, align 8
  %524 = load i32, i32* %14, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %526, i32 0, i32 3
  %528 = load i32, i32* @EIP197_DEFAULT_RING_SIZE, align 4
  %529 = call i32 @crypto_init_queue(i32* %527, i32 %528)
  %530 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %531 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %530, i32 0, i32 3
  %532 = load %struct.TYPE_7__*, %struct.TYPE_7__** %531, align 8
  %533 = load i32, i32* %14, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %532, i64 %534
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 2
  %537 = call i32 @spin_lock_init(i32* %536)
  %538 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %539 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %538, i32 0, i32 3
  %540 = load %struct.TYPE_7__*, %struct.TYPE_7__** %539, align 8
  %541 = load i32, i32* %14, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 1
  %545 = call i32 @spin_lock_init(i32* %544)
  br label %546

546:                                              ; preds = %506
  %547 = load i32, i32* %14, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %14, align 4
  br label %366

549:                                              ; preds = %366
  %550 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %551 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %550, i32 0, i32 2
  %552 = call i32 @atomic_set(i32* %551, i32 0)
  %553 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %554 = call i32 @safexcel_hw_init(%struct.safexcel_crypto_priv* %553)
  store i32 %554, i32* %15, align 4
  %555 = load i32, i32* %15, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %549
  %558 = load %struct.device*, %struct.device** %8, align 8
  %559 = load i32, i32* %15, align 4
  %560 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %558, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %559)
  %561 = load i32, i32* %15, align 4
  store i32 %561, i32* %4, align 4
  br label %573

562:                                              ; preds = %549
  %563 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %6, align 8
  %564 = call i32 @safexcel_register_algorithms(%struct.safexcel_crypto_priv* %563)
  store i32 %564, i32* %15, align 4
  %565 = load i32, i32* %15, align 4
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %572

567:                                              ; preds = %562
  %568 = load %struct.device*, %struct.device** %8, align 8
  %569 = load i32, i32* %15, align 4
  %570 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %568, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %569)
  %571 = load i32, i32* %15, align 4
  store i32 %571, i32* %4, align 4
  br label %573

572:                                              ; preds = %562
  store i32 0, i32* %4, align 4
  br label %573

573:                                              ; preds = %572, %567, %557, %503, %448, %427, %418, %393, %362, %342, %190, %167, %109, %32
  %574 = load i32, i32* %4, align 4
  ret i32 %574
}

declare dso_local i32 @dmam_pool_create(i8*, %struct.device*, i32, i32, i32) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i64 @EIP197_REG_LO16(i32) #1

declare dso_local i8* @EIP197_VERSION_MASK(i32) #1

declare dso_local i64 @EIP197_REG_HI16(i32) #1

declare dso_local i8* @EIP197_VERSION_SWAP(i32) #1

declare dso_local i32 @safexcel_init_register_offsets(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_HIA_AIC(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @EIP197_GLOBAL(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_PE(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @EIP197_PE_EIP96_VERSION(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @EIP197_PE_EIP96_OPTIONS(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i8*, i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @safexcel_configure(%struct.safexcel_crypto_priv*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @safexcel_init_ring_descriptors(%struct.safexcel_crypto_priv*, i32*, i32*) #1

declare dso_local %struct.safexcel_ring_irq_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @safexcel_request_ring_irq(i8*, i32, i32, i32, i32, %struct.safexcel_ring_irq_data*) #1

declare dso_local i32 @EIP197_IRQ_NUMBER(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @safexcel_hw_init(%struct.safexcel_crypto_priv*) #1

declare dso_local i32 @safexcel_register_algorithms(%struct.safexcel_crypto_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
