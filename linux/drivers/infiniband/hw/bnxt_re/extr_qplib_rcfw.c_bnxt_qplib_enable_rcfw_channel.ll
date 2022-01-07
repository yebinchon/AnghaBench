; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_enable_rcfw_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_enable_rcfw_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_rcfw = type { i32, i32, i32, i32, i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)*, i32, i32*, %struct.TYPE_6__, %struct.TYPE_4__*, i32, i64, i64, i8*, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.cmdq_init = type { i8*, i8*, i32 }

@FIRMWARE_FIRST_FLAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RCFW_COMM_PCI_BAR_REGION = common dso_local global i32 0, align 4
@RCFW_COMM_BASE_OFFSET = common dso_local global i64 0, align 8
@RCFW_COMM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CMDQ BAR region %d mapping failed\0A\00", align 1
@RCFW_VF_COMM_PROD_OFFSET = common dso_local global i32 0, align 4
@RCFW_PF_COMM_PROD_OFFSET = common dso_local global i32 0, align 4
@RCFW_COMM_TRIG_OFFSET = common dso_local global i32 0, align 4
@RCFW_COMM_CONS_PCI_BAR_REGION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"CREQ BAR region %d resc start is 0!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"CREQ BAR region %d mapping failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to request IRQ for CREQ rc = 0x%x\0A\00", align 1
@PBL_LVL_0 = common dso_local global i64 0, align 8
@CMDQ_INIT_CMDQ_SIZE_SFT = common dso_local global i32 0, align 4
@CMDQ_INIT_CMDQ_SIZE_MASK = common dso_local global i32 0, align 4
@CMDQ_INIT_CMDQ_LVL_SFT = common dso_local global i32 0, align 4
@CMDQ_INIT_CMDQ_LVL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_enable_rcfw_channel(%struct.pci_dev* %0, %struct.bnxt_qplib_rcfw* %1, i32 %2, i32 %3, i32 %4, i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.cmdq_init, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store %struct.bnxt_qplib_rcfw* %1, %struct.bnxt_qplib_rcfw** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)* %5, i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)** %13, align 8
  %18 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %18, i32 0, i32 17
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @FIRMWARE_FIRST_FLAG, align 4
  %21 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %21, i32 0, i32 16
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %25 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BITS_TO_LONGS(i32 %26)
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kzalloc(i32 %31, i32 %32)
  %34 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %35 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %37 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %216

43:                                               ; preds = %6
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %46 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @RCFW_COMM_PCI_BAR_REGION, align 4
  %48 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %49 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %51 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %52 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @pci_resource_start(%struct.pci_dev* %50, i32 %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %216

60:                                               ; preds = %43
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @RCFW_COMM_BASE_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* @RCFW_COMM_SIZE, align 4
  %65 = call i8* @ioremap_nocache(i64 %63, i32 %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %68 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %67, i32 0, i32 6
  store i32* %66, i32** %68, align 8
  %69 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %70 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %60
  %74 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %75 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %74, i32 0, i32 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %79 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %216

84:                                               ; preds = %60
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @RCFW_VF_COMM_PROD_OFFSET, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @RCFW_PF_COMM_PROD_OFFSET, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %94 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %93, i32 0, i32 14
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @RCFW_COMM_TRIG_OFFSET, align 4
  %96 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %97 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %96, i32 0, i32 13
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @RCFW_COMM_CONS_PCI_BAR_REGION, align 4
  %99 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %100 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %102 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %103 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @pci_resource_start(%struct.pci_dev* %101, i32 %104)
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %91
  %109 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %110 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %109, i32 0, i32 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %114 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %108, %91
  %118 = load i64, i64* %14, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = call i8* @ioremap_nocache(i64 %121, i32 8)
  %123 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %124 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %123, i32 0, i32 12
  store i8* %122, i8** %124, align 8
  %125 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %126 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %125, i32 0, i32 12
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %146, label %129

129:                                              ; preds = %117
  %130 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %131 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %130, i32 0, i32 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %135 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %139 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @iounmap(i32* %140)
  %142 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %143 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %142, i32 0, i32 6
  store i32* null, i32** %143, align 8
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %216

146:                                              ; preds = %117
  %147 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %148 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %147, i32 0, i32 11
  store i64 0, i64* %148, align 8
  %149 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %150 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %149, i32 0, i32 10
  store i64 0, i64* %150, align 8
  %151 = load i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)*, i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)** %13, align 8
  %152 = icmp ne i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)*, i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)** %13, align 8
  %155 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %156 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %155, i32 0, i32 4
  store i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)* %154, i32 (%struct.bnxt_qplib_rcfw*, i8*, i8*)** %156, align 8
  br label %157

157:                                              ; preds = %153, %146
  %158 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %159 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %158, i32 0, i32 9
  %160 = call i32 @init_waitqueue_head(i32* %159)
  %161 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @bnxt_qplib_rcfw_start_irq(%struct.bnxt_qplib_rcfw* %161, i32 %162, i32 1)
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %157
  %167 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %168 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %167, i32 0, i32 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %171)
  %173 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %174 = call i32 @bnxt_qplib_disable_rcfw_channel(%struct.bnxt_qplib_rcfw* %173)
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %7, align 4
  br label %216

176:                                              ; preds = %157
  %177 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %178 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i64, i64* @PBL_LVL_0, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @cpu_to_le64(i32 %186)
  %188 = getelementptr inbounds %struct.cmdq_init, %struct.cmdq_init* %15, i32 0, i32 2
  store i32 %187, i32* %188, align 8
  %189 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %190 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @CMDQ_INIT_CMDQ_SIZE_SFT, align 4
  %193 = shl i32 %191, %192
  %194 = load i32, i32* @CMDQ_INIT_CMDQ_SIZE_MASK, align 4
  %195 = and i32 %193, %194
  %196 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %197 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @CMDQ_INIT_CMDQ_LVL_SFT, align 4
  %201 = shl i32 %199, %200
  %202 = load i32, i32* @CMDQ_INIT_CMDQ_LVL_MASK, align 4
  %203 = and i32 %201, %202
  %204 = or i32 %195, %203
  %205 = call i8* @cpu_to_le16(i32 %204)
  %206 = getelementptr inbounds %struct.cmdq_init, %struct.cmdq_init* %15, i32 0, i32 1
  store i8* %205, i8** %206, align 8
  %207 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %208 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = call i8* @cpu_to_le16(i32 %209)
  %211 = getelementptr inbounds %struct.cmdq_init, %struct.cmdq_init* %15, i32 0, i32 0
  store i8* %210, i8** %211, align 8
  %212 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %9, align 8
  %213 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %212, i32 0, i32 6
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @__iowrite32_copy(i32* %214, %struct.cmdq_init* %15, i32 6)
  store i32 0, i32* %7, align 4
  br label %216

216:                                              ; preds = %176, %166, %129, %73, %57, %40
  %217 = load i32, i32* %7, align 4
  ret i32 %217
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap_nocache(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @bnxt_qplib_rcfw_start_irq(%struct.bnxt_qplib_rcfw*, i32, i32) #1

declare dso_local i32 @bnxt_qplib_disable_rcfw_channel(%struct.bnxt_qplib_rcfw*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @__iowrite32_copy(i32*, %struct.cmdq_init*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
