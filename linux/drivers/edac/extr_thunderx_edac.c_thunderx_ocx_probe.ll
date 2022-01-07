; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_ocx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_ocx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.thunderx_ocx = type { i64, i32, %struct.TYPE_9__*, %struct.pci_dev*, i64, i64, i64, i64, %struct.edac_device_ctl_info* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.edac_device_ctl_info = type { i8*, i8*, i32, %struct.TYPE_10__*, %struct.thunderx_ocx* }

@.str = private unnamed_addr constant [30 x i8] c"Cannot enable PCI device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"thunderx_ocx\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot map PCI resources: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"OCX%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CCPI\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Cannot allocate EDAC device: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OCX_INTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Cannot enable interrupt: %d\0A\00", align 1
@thunderx_ocx_com_isr = common dso_local global i32 0, align 4
@thunderx_ocx_lnk_isr = common dso_local global i32 0, align 4
@thunderx_ocx_com_threaded_isr = common dso_local global i32 0, align 4
@thunderx_ocx_lnk_threaded_isr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"[EDAC] ThunderX OCX\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"thunderx-ocx\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Cannot add EDAC device: %d\0A\00", align 1
@CONFIG_EDAC_DEBUG = common dso_local global i32 0, align 4
@ocx_dfs_ents = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"Error creating debugfs entries: %d%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" created\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OCX_RX_LANES = common dso_local global i32 0, align 4
@OCX_LNE_INT_ENA_ALL = common dso_local global i32 0, align 4
@OCX_LINK_INTS = common dso_local global i32 0, align 4
@OCX_COM_LINKX_INT_ENA_ALL = common dso_local global i32 0, align 4
@OCX_COM_INT = common dso_local global i64 0, align 8
@OCX_COM_INT_ENA_ALL = common dso_local global i32 0, align 4
@OCX_COM_INT_ENA_W1S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @thunderx_ocx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunderx_ocx_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.thunderx_ocx*, align 8
  %7 = alloca %struct.edac_device_ctl_info*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i32 @pcim_enable_device(%struct.pci_dev* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @dev_err(%struct.TYPE_10__* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %3, align 4
  br label %323

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @BIT(i32 0)
  %26 = call i32 @pcim_iomap_regions(%struct.pci_dev* %24, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @dev_err(%struct.TYPE_10__* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %323

35:                                               ; preds = %23
  %36 = call i32 (...) @edac_device_alloc_index()
  store i32 %36, i32* %9, align 4
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @snprintf(i8* %37, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32 72, i8* %40, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 0, i32* null, i32 0, i32 %41)
  store %struct.edac_device_ctl_info* %42, %struct.edac_device_ctl_info** %7, align 8
  %43 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %44 = icmp ne %struct.edac_device_ctl_info* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %35
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @dev_err(%struct.TYPE_10__* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %323

52:                                               ; preds = %35
  %53 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %54 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %53, i32 0, i32 4
  %55 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %54, align 8
  store %struct.thunderx_ocx* %55, %struct.thunderx_ocx** %6, align 8
  %56 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %57 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %58 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %57, i32 0, i32 8
  store %struct.edac_device_ctl_info* %56, %struct.edac_device_ctl_info** %58, align 8
  %59 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %60 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %62 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %64 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %66 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i64* @pcim_iomap_table(%struct.pci_dev* %67)
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %72 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %74 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %52
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @dev_err(%struct.TYPE_10__* %79, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %319

84:                                               ; preds = %52
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %87 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %86, i32 0, i32 3
  store %struct.pci_dev* %85, %struct.pci_dev** %87, align 8
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %108, %84
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @OCX_INTS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %95 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %94, i32 0, i32 2
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 8
  %101 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %102 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %101, i32 0, i32 2
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %88

111:                                              ; preds = %88
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %114 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %113, i32 0, i32 2
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* @OCX_INTS, align 4
  %117 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %112, %struct.TYPE_9__* %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @dev_err(%struct.TYPE_10__* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %319

125:                                              ; preds = %111
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %168, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @OCX_INTS, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %171

130:                                              ; preds = %126
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 0
  %133 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %134 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %133, i32 0, i32 2
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 3
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = load i32, i32* @thunderx_ocx_com_isr, align 4
  br label %147

145:                                              ; preds = %130
  %146 = load i32, i32* @thunderx_ocx_lnk_isr, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = load i32, i32* %10, align 4
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @thunderx_ocx_com_threaded_isr, align 4
  br label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @thunderx_ocx_lnk_threaded_isr, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %158 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %157, i32 0, i32 2
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %161
  %163 = call i32 @devm_request_threaded_irq(%struct.TYPE_10__* %132, i64 %140, i32 %148, i32 %156, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_9__* %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %155
  br label %319

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %126

171:                                              ; preds = %126
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 0
  %174 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %175 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %174, i32 0, i32 3
  store %struct.TYPE_10__* %173, %struct.TYPE_10__** %175, align 8
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = call i32 @dev_name(%struct.TYPE_10__* %177)
  %179 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %180 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %182 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %181, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %182, align 8
  %183 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %184 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %183, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %184, align 8
  %185 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %186 = call i32 @edac_device_add_device(%struct.edac_device_ctl_info* %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %171
  %190 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %191 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @dev_err(%struct.TYPE_10__* %191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %192)
  br label %319

194:                                              ; preds = %171
  %195 = load i32, i32* @CONFIG_EDAC_DEBUG, align 4
  %196 = call i64 @IS_ENABLED(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %229

198:                                              ; preds = %194
  %199 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @edac_debugfs_create_dir(i32 %203)
  %205 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %206 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  %207 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %208 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @ocx_dfs_ents, align 4
  %211 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %212 = load i32, i32* @ocx_dfs_ents, align 4
  %213 = call i32 @ARRAY_SIZE(i32 %212)
  %214 = call i32 @thunderx_create_debugfs_nodes(i32 %209, i32 %210, %struct.thunderx_ocx* %211, i32 %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @ocx_dfs_ents, align 4
  %217 = call i32 @ARRAY_SIZE(i32 %216)
  %218 = icmp ne i32 %215, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %198
  %220 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %221 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %220, i32 0, i32 0
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp sge i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %227 = call i32 @dev_warn(%struct.TYPE_10__* %221, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %222, i8* %226)
  br label %228

228:                                              ; preds = %219, %198
  br label %229

229:                                              ; preds = %228, %194
  %230 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %231 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %232 = call i32 @pci_set_drvdata(%struct.pci_dev* %230, %struct.edac_device_ctl_info* %231)
  %233 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %234 = call i32 @thunderx_ocx_clearstats(%struct.thunderx_ocx* %233)
  store i32 0, i32* %10, align 4
  br label %235

235:                                              ; preds = %263, %229
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* @OCX_RX_LANES, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %235
  %240 = load i32, i32* @OCX_LNE_INT_ENA_ALL, align 4
  %241 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %242 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = call i64 @OCX_LNE_INT_EN(i32 %244)
  %246 = add nsw i64 %243, %245
  %247 = call i32 @writeq(i32 %240, i64 %246)
  %248 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %249 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i64 @OCX_LNE_INT(i32 %251)
  %253 = add nsw i64 %250, %252
  %254 = call i32 @readq(i64 %253)
  store i32 %254, i32* %12, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %257 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i64 @OCX_LNE_INT(i32 %259)
  %261 = add nsw i64 %258, %260
  %262 = call i32 @writeq(i32 %255, i64 %261)
  br label %263

263:                                              ; preds = %239
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %235

266:                                              ; preds = %235
  store i32 0, i32* %10, align 4
  br label %267

267:                                              ; preds = %295, %266
  %268 = load i32, i32* %10, align 4
  %269 = load i32, i32* @OCX_LINK_INTS, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %298

271:                                              ; preds = %267
  %272 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %273 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* %10, align 4
  %276 = call i64 @OCX_COM_LINKX_INT(i32 %275)
  %277 = add nsw i64 %274, %276
  %278 = call i32 @readq(i64 %277)
  store i32 %278, i32* %12, align 4
  %279 = load i32, i32* %12, align 4
  %280 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %281 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = call i64 @OCX_COM_LINKX_INT(i32 %283)
  %285 = add nsw i64 %282, %284
  %286 = call i32 @writeq(i32 %279, i64 %285)
  %287 = load i32, i32* @OCX_COM_LINKX_INT_ENA_ALL, align 4
  %288 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %289 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = call i64 @OCX_COM_LINKX_INT_ENA_W1S(i32 %291)
  %293 = add nsw i64 %290, %292
  %294 = call i32 @writeq(i32 %287, i64 %293)
  br label %295

295:                                              ; preds = %271
  %296 = load i32, i32* %10, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %10, align 4
  br label %267

298:                                              ; preds = %267
  %299 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %300 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @OCX_COM_INT, align 8
  %303 = add nsw i64 %301, %302
  %304 = call i32 @readq(i64 %303)
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %307 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @OCX_COM_INT, align 8
  %310 = add nsw i64 %308, %309
  %311 = call i32 @writeq(i32 %305, i64 %310)
  %312 = load i32, i32* @OCX_COM_INT_ENA_ALL, align 4
  %313 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %6, align 8
  %314 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @OCX_COM_INT_ENA_W1S, align 8
  %317 = add nsw i64 %315, %316
  %318 = call i32 @writeq(i32 %312, i64 %317)
  store i32 0, i32* %3, align 4
  br label %323

319:                                              ; preds = %189, %166, %120, %77
  %320 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %7, align 8
  %321 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %320)
  %322 = load i32, i32* %11, align 4
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %319, %298, %45, %29, %17
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @edac_device_alloc_index(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32, i8*, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i64* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_10__*, i64, i32, i32, i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @edac_device_add_device(%struct.edac_device_ctl_info*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @edac_debugfs_create_dir(i32) #1

declare dso_local i32 @thunderx_create_debugfs_nodes(i32, i32, %struct.thunderx_ocx*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*, i32, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.edac_device_ctl_info*) #1

declare dso_local i32 @thunderx_ocx_clearstats(%struct.thunderx_ocx*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @OCX_LNE_INT_EN(i32) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @OCX_LNE_INT(i32) #1

declare dso_local i64 @OCX_COM_LINKX_INT(i32) #1

declare dso_local i64 @OCX_COM_LINKX_INT_ENA_W1S(i32) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
