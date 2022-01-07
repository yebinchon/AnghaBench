; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ipu_soc = type { i64, i32, i32, i32, %struct.TYPE_10__*, i8*, i8*, i32, i32, i32, i32, %struct.ipu_devtype*, i32 }
%struct.ipu_devtype = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.resource = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"irq_sync: %d irq_err: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ipu\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fsl,imx6qp-ipu\00", align 1
@CONFIG_DRM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"fsl,prg\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"cm_reg:   0x%08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"idmac:    0x%08lx\0A\00", align 1
@IPU_CM_IDMAC_REG_OFS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"cpmem:    0x%08lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"csi0:    0x%08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"csi1:    0x%08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ic:      0x%08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"disp0:    0x%08lx\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"disp1:    0x%08lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"srm:      0x%08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"tpm:      0x%08lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"dc:       0x%08lx\0A\00", align 1
@IPU_CM_DC_REG_OFS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"ic:       0x%08lx\0A\00", align 1
@IPU_CM_IC_REG_OFS = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"dmfc:     0x%08lx\0A\00", align 1
@IPU_CM_DMFC_REG_OFS = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"vdi:      0x%08lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"clk_get failed with %d\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"clk_prepare_enable failed: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"failed to reset: %d\0A\00", align 1
@IPU_MCU_T_DEFAULT = common dso_local global i32 0, align 4
@IPU_DISP_GEN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"adding client devices failed with %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"%s probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ipu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.ipu_soc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipu_devtype*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.ipu_devtype* @of_device_get_match_data(%struct.TYPE_10__* %17)
  store %struct.ipu_devtype* %18, %struct.ipu_devtype** %11, align 8
  %19 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %20 = icmp ne %struct.ipu_devtype* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %393

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @platform_get_irq(%struct.platform_device* %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_get_irq(%struct.platform_device* %27, i32 1)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %29, i32 %30, i32 0)
  store %struct.resource* %31, %struct.resource** %6, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %36)
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %40, %24
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %393

49:                                               ; preds = %43
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.ipu_soc* @devm_kzalloc(%struct.TYPE_10__* %54, i32 80, i32 %55)
  store %struct.ipu_soc* %56, %struct.ipu_soc** %5, align 8
  %57 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %58 = icmp ne %struct.ipu_soc* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %393

62:                                               ; preds = %49
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = call i64 @of_alias_get_id(%struct.device_node* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %66 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %68 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %73 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %62
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = call i64 @of_device_is_compatible(%struct.device_node* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = load i32, i32* @CONFIG_DRM, align 4
  %80 = call i64 @IS_ENABLED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %86 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ipu_prg_lookup_by_phandle(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %90 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %89, i32 0, i32 12
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %92 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* @EPROBE_DEFER, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %393

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %78, %74
  %100 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %101 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %102 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %101, i32 0, i32 11
  store %struct.ipu_devtype* %100, %struct.ipu_devtype** %102, align 8
  %103 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %104 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %107 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %106, i32 0, i32 10
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %109 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %108, i32 0, i32 9
  %110 = call i32 @spin_lock_init(i32* %109)
  %111 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %112 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %111, i32 0, i32 8
  %113 = call i32 @mutex_init(i32* %112)
  %114 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %115 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %114, i32 0, i32 7
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %121 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %119, %122
  %124 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i64, i64* %7, align 8
  %128 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %129 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %127, %130
  %132 = load i64, i64* @IPU_CM_IDMAC_REG_OFS, align 8
  %133 = add i64 %131, %132
  %134 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %133)
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %139 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %141)
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %147 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %145, %148
  %150 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %149)
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load i64, i64* %7, align 8
  %154 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %155 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %153, %156
  %158 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %157)
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i64, i64* %7, align 8
  %162 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %163 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %161, %164
  %166 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %165)
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %171 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %169, %172
  %174 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i64 %173)
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i64, i64* %7, align 8
  %178 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %179 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %177, %180
  %182 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i64 %181)
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = load i64, i64* %7, align 8
  %186 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %187 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = add i64 %185, %188
  %190 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i64 %189)
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load i64, i64* %7, align 8
  %194 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %195 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %194, i32 0, i32 8
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %193, %196
  %198 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %192, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i64 %197)
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load i64, i64* %7, align 8
  %202 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %203 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %201, %204
  %206 = load i64, i64* @IPU_CM_DC_REG_OFS, align 8
  %207 = add i64 %205, %206
  %208 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64 %207)
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i64, i64* %7, align 8
  %212 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %213 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %211, %214
  %216 = load i64, i64* @IPU_CM_IC_REG_OFS, align 8
  %217 = add i64 %215, %216
  %218 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i64 %217)
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load i64, i64* %7, align 8
  %222 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %223 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %221, %224
  %226 = load i64, i64* @IPU_CM_DMFC_REG_OFS, align 8
  %227 = add i64 %225, %226
  %228 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i64 %227)
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = load i64, i64* %7, align 8
  %232 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %233 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %232, i32 0, i32 9
  %234 = load i64, i64* %233, align 8
  %235 = add i64 %231, %234
  %236 = call i32 (%struct.TYPE_10__*, i8*, i64, ...) @dev_dbg(%struct.TYPE_10__* %230, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i64 %235)
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = load i64, i64* %7, align 8
  %240 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %241 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %239, %242
  %244 = load i32, i32* @PAGE_SIZE, align 4
  %245 = call i8* @devm_ioremap(%struct.TYPE_10__* %238, i64 %243, i32 %244)
  %246 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %247 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %246, i32 0, i32 6
  store i8* %245, i8** %247, align 8
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = load i64, i64* %7, align 8
  %251 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %252 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %250, %253
  %255 = load i64, i64* @IPU_CM_IDMAC_REG_OFS, align 8
  %256 = add i64 %254, %255
  %257 = load i32, i32* @PAGE_SIZE, align 4
  %258 = call i8* @devm_ioremap(%struct.TYPE_10__* %249, i64 %256, i32 %257)
  %259 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %260 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %259, i32 0, i32 5
  store i8* %258, i8** %260, align 8
  %261 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %262 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %261, i32 0, i32 6
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %270

265:                                              ; preds = %99
  %266 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %267 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %266, i32 0, i32 5
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %273, label %270

270:                                              ; preds = %265, %99
  %271 = load i32, i32* @ENOMEM, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %2, align 4
  br label %393

273:                                              ; preds = %265
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = call i32 @devm_clk_get(%struct.TYPE_10__* %275, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %277 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %278 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 8
  %279 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %280 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = call i64 @IS_ERR(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %273
  %285 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %286 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @PTR_ERR(i32 %287)
  store i32 %288, i32* %8, align 4
  %289 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %290 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %289, i32 0, i32 0
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @dev_err(%struct.TYPE_10__* %290, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %291)
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %2, align 4
  br label %393

294:                                              ; preds = %273
  %295 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %296 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %297 = call i32 @platform_set_drvdata(%struct.platform_device* %295, %struct.ipu_soc* %296)
  %298 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %299 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @clk_prepare_enable(i32 %300)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %294
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %305, i32 0, i32 0
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @dev_err(%struct.TYPE_10__* %306, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* %8, align 4
  store i32 %309, i32* %2, align 4
  br label %393

310:                                              ; preds = %294
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %311, i32 0, i32 0
  %313 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %314 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %313, i32 0, i32 4
  store %struct.TYPE_10__* %312, %struct.TYPE_10__** %314, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %317 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 8
  %318 = load i32, i32* %10, align 4
  %319 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %320 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %319, i32 0, i32 2
  store i32 %318, i32* %320, align 4
  %321 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %322 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %321, i32 0, i32 0
  %323 = call i32 @device_reset(%struct.TYPE_10__* %322)
  store i32 %323, i32* %8, align 4
  %324 = load i32, i32* %8, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %310
  %327 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %328 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %327, i32 0, i32 0
  %329 = load i32, i32* %8, align 4
  %330 = call i32 @dev_err(%struct.TYPE_10__* %328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %329)
  br label %387

331:                                              ; preds = %310
  %332 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %333 = call i32 @ipu_memory_reset(%struct.ipu_soc* %332)
  store i32 %333, i32* %8, align 4
  %334 = load i32, i32* %8, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %331
  br label %387

337:                                              ; preds = %331
  %338 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %339 = call i32 @ipu_irq_init(%struct.ipu_soc* %338)
  store i32 %339, i32* %8, align 4
  %340 = load i32, i32* %8, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  br label %386

343:                                              ; preds = %337
  %344 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %345 = load i32, i32* @IPU_MCU_T_DEFAULT, align 4
  %346 = shl i32 %345, 18
  %347 = sext i32 %346 to i64
  %348 = or i64 4194304, %347
  %349 = trunc i64 %348 to i32
  %350 = load i32, i32* @IPU_DISP_GEN, align 4
  %351 = call i32 @ipu_cm_write(%struct.ipu_soc* %344, i32 %349, i32 %350)
  %352 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %353 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %354 = load i64, i64* %7, align 8
  %355 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %356 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @ipu_submodules_init(%struct.ipu_soc* %352, %struct.platform_device* %353, i64 %354, i32 %357)
  store i32 %358, i32* %8, align 4
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %343
  br label %383

362:                                              ; preds = %343
  %363 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %364 = load i64, i64* %7, align 8
  %365 = call i32 @ipu_add_client_devices(%struct.ipu_soc* %363, i64 %364)
  store i32 %365, i32* %8, align 4
  %366 = load i32, i32* %8, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %362
  %369 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %370 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %369, i32 0, i32 0
  %371 = load i32, i32* %8, align 4
  %372 = call i32 @dev_err(%struct.TYPE_10__* %370, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %371)
  br label %380

373:                                              ; preds = %362
  %374 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %375 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %374, i32 0, i32 0
  %376 = load %struct.ipu_devtype*, %struct.ipu_devtype** %11, align 8
  %377 = getelementptr inbounds %struct.ipu_devtype, %struct.ipu_devtype* %376, i32 0, i32 10
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @dev_info(%struct.TYPE_10__* %375, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %378)
  store i32 0, i32* %2, align 4
  br label %393

380:                                              ; preds = %368
  %381 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %382 = call i32 @ipu_submodules_exit(%struct.ipu_soc* %381)
  br label %383

383:                                              ; preds = %380, %361
  %384 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %385 = call i32 @ipu_irq_exit(%struct.ipu_soc* %384)
  br label %386

386:                                              ; preds = %383, %342
  br label %387

387:                                              ; preds = %386, %336, %326
  %388 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %389 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @clk_disable_unprepare(i32 %390)
  %392 = load i32, i32* %8, align 4
  store i32 %392, i32* %2, align 4
  br label %393

393:                                              ; preds = %387, %373, %304, %284, %270, %95, %59, %46, %21
  %394 = load i32, i32* %2, align 4
  ret i32 %394
}

declare dso_local %struct.ipu_devtype* @of_device_get_match_data(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*, i64, ...) #1

declare dso_local %struct.ipu_soc* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ipu_prg_lookup_by_phandle(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @devm_ioremap(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ipu_soc*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @device_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @ipu_memory_reset(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_irq_init(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_cm_write(%struct.ipu_soc*, i32, i32) #1

declare dso_local i32 @ipu_submodules_init(%struct.ipu_soc*, %struct.platform_device*, i64, i32) #1

declare dso_local i32 @ipu_add_client_devices(%struct.ipu_soc*, i64) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @ipu_submodules_exit(%struct.ipu_soc*) #1

declare dso_local i32 @ipu_irq_exit(%struct.ipu_soc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
