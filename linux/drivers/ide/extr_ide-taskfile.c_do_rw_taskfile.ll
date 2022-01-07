; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_do_rw_taskfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-taskfile.c_do_rw_taskfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.ide_dma_ops*, %struct.ide_tp_ops*, %struct.ide_cmd.0 }
%struct.ide_dma_ops = type { i32 (%struct.TYPE_18__*)*, i32 }
%struct.ide_tp_ops = type { i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)*, i32 (%struct.TYPE_18__*, %struct.ide_cmd*, i32*, i32)*, i32 (%struct.TYPE_17__*, i32)* }
%struct.ide_taskfile = type opaque
%struct.ide_cmd = type opaque
%struct.ide_cmd.0 = type { i64, i32, i32, %struct.TYPE_16__, %struct.ide_taskfile.1, %struct.ide_taskfile.1 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.ide_taskfile.1 = type { i32, i32, i32 }

@IDE_TFLAG_MULTI_PIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: multimode not set!\0A\00", align 1
@ide_stopped = common dso_local global i32 0, align 4
@IDE_FTFLAG_FLAGGED = common dso_local global i32 0, align 4
@IDE_FTFLAG_SET_IN_FLAGS = common dso_local global i32 0, align 4
@IDE_TFLAG_DMA_PIO_FALLBACK = common dso_local global i32 0, align 4
@ATA_DEVCTL_OBS = common dso_local global i32 0, align 4
@IDE_FTFLAG_OUT_DATA = common dso_local global i32 0, align 4
@IDE_VALID_DEVICE = common dso_local global i32 0, align 4
@IDE_TFLAG_LBA48 = common dso_local global i32 0, align 4
@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@task_pio_intr = common dso_local global i32* null, align 8
@task_no_data_intr = common dso_local global i32* null, align 8
@WAIT_WORSTCASE = common dso_local global i32 0, align 4
@ide_started = common dso_local global i32 0, align 4
@ide_dma_intr = common dso_local global i32* null, align 8
@WAIT_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rw_taskfile(%struct.TYPE_18__* %0, %struct.ide_cmd.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.ide_cmd.0*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.ide_cmd.0*, align 8
  %8 = alloca %struct.ide_taskfile.1*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ide_tp_ops*, align 8
  %11 = alloca %struct.ide_dma_ops*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.ide_cmd.0* %1, %struct.ide_cmd.0** %5, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  store %struct.ide_cmd.0* %18, %struct.ide_cmd.0** %7, align 8
  %19 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %20 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %19, i32 0, i32 4
  store %struct.ide_taskfile.1* %20, %struct.ide_taskfile.1** %8, align 8
  store i32* null, i32** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %22, align 8
  store %struct.ide_tp_ops* %23, %struct.ide_tp_ops** %10, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load %struct.ide_dma_ops*, %struct.ide_dma_ops** %25, align 8
  store %struct.ide_dma_ops* %26, %struct.ide_dma_ops** %11, align 8
  %27 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %5, align 8
  %28 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 128
  br i1 %30, label %31, label %49

31:                                               ; preds = %2
  %32 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %5, align 8
  %33 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IDE_TFLAG_MULTI_PIO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ide_stopped, align 4
  store i32 %48, i32* %3, align 4
  br label %240

49:                                               ; preds = %38, %31, %2
  %50 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %5, align 8
  %51 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IDE_FTFLAG_FLAGGED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @IDE_FTFLAG_SET_IN_FLAGS, align 4
  %58 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %5, align 8
  %59 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %64 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %5, align 8
  %65 = call i32 @memcpy(%struct.ide_cmd.0* %63, %struct.ide_cmd.0* %64, i32 48)
  %66 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %67 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IDE_TFLAG_DMA_PIO_FALLBACK, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %176

72:                                               ; preds = %62
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %77 = call i32 @ide_tf_dump(i32 %75, %struct.ide_cmd.0* %76)
  %78 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %10, align 8
  %79 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %78, i32 0, i32 3
  %80 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = load i32, i32* @ATA_DEVCTL_OBS, align 4
  %83 = call i32 %80(%struct.TYPE_17__* %81, i32 %82)
  %84 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %85 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IDE_FTFLAG_OUT_DATA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %72
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %92 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %93 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.ide_taskfile.1, %struct.ide_taskfile.1* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %91, align 4
  %96 = getelementptr inbounds i32, i32* %91, i64 1
  %97 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %98 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.ide_taskfile.1, %struct.ide_taskfile.1* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %96, align 4
  %101 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %10, align 8
  %102 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %101, i32 0, i32 2
  %103 = load i32 (%struct.TYPE_18__*, %struct.ide_cmd*, i32*, i32)*, i32 (%struct.TYPE_18__*, %struct.ide_cmd*, i32*, i32)** %102, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %106 = bitcast %struct.ide_cmd.0* %105 to %struct.ide_cmd*
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %108 = call i32 %103(%struct.TYPE_18__* %104, %struct.ide_cmd* %106, i32* %107, i32 2)
  br label %109

109:                                              ; preds = %90, %72
  %110 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %111 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IDE_VALID_DEVICE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %149

118:                                              ; preds = %109
  %119 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %120 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @IDE_TFLAG_LBA48, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 224, i32 239
  store i32 %126, i32* %13, align 4
  %127 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %128 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IDE_FTFLAG_FLAGGED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %118
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %136 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.ide_taskfile.1, %struct.ide_taskfile.1* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %134
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %118
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %145 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.ide_taskfile.1, %struct.ide_taskfile.1* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %140, %109
  %150 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %10, align 8
  %151 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %150, i32 0, i32 1
  %152 = load i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)*, i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)** %151, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %154 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %155 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %154, i32 0, i32 5
  %156 = bitcast %struct.ide_taskfile.1* %155 to %struct.ide_taskfile*
  %157 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %158 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 %152(%struct.TYPE_18__* %153, %struct.ide_taskfile* %156, i32 %161)
  %163 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %10, align 8
  %164 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %163, i32 0, i32 1
  %165 = load i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)*, i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)** %164, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %167 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %168 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %167, i32 0, i32 4
  %169 = bitcast %struct.ide_taskfile.1* %168 to %struct.ide_taskfile*
  %170 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %171 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 %165(%struct.TYPE_18__* %166, %struct.ide_taskfile* %169, i32 %174)
  br label %176

176:                                              ; preds = %149, %62
  %177 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %178 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  switch i64 %179, label %238 [
    i64 128, label %180
    i64 129, label %202
    i64 130, label %214
  ]

180:                                              ; preds = %176
  %181 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %182 = getelementptr inbounds %struct.ide_cmd.0, %struct.ide_cmd.0* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %180
  %188 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %10, align 8
  %189 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %188, i32 0, i32 0
  %190 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %189, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %192 = load %struct.ide_taskfile.1*, %struct.ide_taskfile.1** %8, align 8
  %193 = getelementptr inbounds %struct.ide_taskfile.1, %struct.ide_taskfile.1* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 %190(%struct.TYPE_17__* %191, i32 %194)
  %196 = call i32 @ndelay(i32 400)
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %198 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %199 = call i32 @pre_task_out_intr(%struct.TYPE_18__* %197, %struct.ide_cmd.0* %198)
  store i32 %199, i32* %3, align 4
  br label %240

200:                                              ; preds = %180
  %201 = load i32*, i32** @task_pio_intr, align 8
  store i32* %201, i32** %9, align 8
  br label %202

202:                                              ; preds = %176, %200
  %203 = load i32*, i32** %9, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32*, i32** @task_no_data_intr, align 8
  store i32* %206, i32** %9, align 8
  br label %207

207:                                              ; preds = %205, %202
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %209 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* @WAIT_WORSTCASE, align 4
  %212 = call i32 @ide_execute_command(%struct.TYPE_18__* %208, %struct.ide_cmd.0* %209, i32* %210, i32 %211)
  %213 = load i32, i32* @ide_started, align 4
  store i32 %213, i32* %3, align 4
  br label %240

214:                                              ; preds = %176
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %216 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %217 = call i32 @ide_dma_prepare(%struct.TYPE_18__* %215, %struct.ide_cmd.0* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* @ide_stopped, align 4
  store i32 %220, i32* %3, align 4
  br label %240

221:                                              ; preds = %214
  %222 = load %struct.ide_dma_ops*, %struct.ide_dma_ops** %11, align 8
  %223 = getelementptr inbounds %struct.ide_dma_ops, %struct.ide_dma_ops* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %228 = load %struct.ide_cmd.0*, %struct.ide_cmd.0** %7, align 8
  %229 = load i32*, i32** @ide_dma_intr, align 8
  %230 = load i32, i32* @WAIT_CMD, align 4
  %231 = mul nsw i32 2, %230
  %232 = call i32 @ide_execute_command(%struct.TYPE_18__* %227, %struct.ide_cmd.0* %228, i32* %229, i32 %231)
  %233 = load %struct.ide_dma_ops*, %struct.ide_dma_ops** %11, align 8
  %234 = getelementptr inbounds %struct.ide_dma_ops, %struct.ide_dma_ops* %233, i32 0, i32 0
  %235 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %234, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = call i32 %235(%struct.TYPE_18__* %236)
  br label %238

238:                                              ; preds = %176, %221
  %239 = load i32, i32* @ide_started, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %238, %219, %207, %187, %43
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memcpy(%struct.ide_cmd.0*, %struct.ide_cmd.0*, i32) #1

declare dso_local i32 @ide_tf_dump(i32, %struct.ide_cmd.0*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @pre_task_out_intr(%struct.TYPE_18__*, %struct.ide_cmd.0*) #1

declare dso_local i32 @ide_execute_command(%struct.TYPE_18__*, %struct.ide_cmd.0*, i32*, i32) #1

declare dso_local i32 @ide_dma_prepare(%struct.TYPE_18__*, %struct.ide_cmd.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
