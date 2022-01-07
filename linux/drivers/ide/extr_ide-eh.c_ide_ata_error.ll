; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_ide_ata_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-eh.c_ide_ata_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*)* }
%struct.request = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@IDE_DFLAG_NOWERR = common dso_local global i32 0, align 4
@ERROR_RESET = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_ABORTED = common dso_local global i32 0, align 4
@IDE_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_CMD_INIT_DEV_PARAMS = common dso_local global i32 0, align 4
@ide_stopped = common dso_local global i32 0, align 4
@BAD_CRC = common dso_local global i32 0, align 4
@ATA_BBK = common dso_local global i32 0, align 4
@ATA_UNC = common dso_local global i32 0, align 4
@ERROR_MAX = common dso_local global i32 0, align 4
@ATA_TRK0NF = common dso_local global i32 0, align 4
@ERROR_RECAL = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@IDE_HFLAG_ERROR_STOPS_FIFO = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@IDE_SFLAG_RECALIBRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.request*, i32, i32)* @ide_ata_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_ata_error(%struct.TYPE_13__* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ATA_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @ATA_DF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IDE_DFLAG_NOWERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24, %4
  %32 = load i32, i32* @ERROR_RESET, align 4
  %33 = load %struct.request*, %struct.request** %7, align 8
  %34 = call %struct.TYPE_14__* @scsi_req(%struct.request* %33)
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  br label %107

38:                                               ; preds = %24, %19
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ATA_ERR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %106

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @ATA_ABORTED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IDE_DFLAG_LBA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %58, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = call i32 %59(%struct.TYPE_12__* %60)
  %62 = load i32, i32* @ATA_CMD_INIT_DEV_PARAMS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @ide_stopped, align 4
  store i32 %65, i32* %5, align 4
  br label %217

66:                                               ; preds = %54, %47
  br label %105

67:                                               ; preds = %43
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @BAD_CRC, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @BAD_CRC, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %104

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ATA_BBK, align 4
  %81 = load i32, i32* @ATA_UNC, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @ERROR_MAX, align 4
  %87 = load %struct.request*, %struct.request** %7, align 8
  %88 = call %struct.TYPE_14__* @scsi_req(%struct.request* %87)
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  br label %103

90:                                               ; preds = %78
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ATA_TRK0NF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load i32, i32* @ERROR_RECAL, align 4
  %97 = load %struct.request*, %struct.request** %7, align 8
  %98 = call %struct.TYPE_14__* @scsi_req(%struct.request* %97)
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %90
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %66
  br label %106

106:                                              ; preds = %105, %38
  br label %107

107:                                              ; preds = %106, %31
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @ATA_DRQ, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %142

112:                                              ; preds = %107
  %113 = load %struct.request*, %struct.request** %7, align 8
  %114 = call i64 @rq_data_dir(%struct.request* %113)
  %115 = load i64, i64* @READ, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %112
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IDE_HFLAG_ERROR_STOPS_FIFO, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %117
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  br label %134

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %129
  %135 = phi i32 [ %132, %129 ], [ 1, %133 ]
  store i32 %135, i32* %11, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = load i64, i64* @READ, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @SECTOR_SIZE, align 4
  %140 = mul nsw i32 %138, %139
  %141 = call i32 @ide_pad_transfer(%struct.TYPE_13__* %136, i64 %137, i32 %140)
  br label %142

142:                                              ; preds = %134, %117, %112, %107
  %143 = load %struct.request*, %struct.request** %7, align 8
  %144 = call %struct.TYPE_14__* @scsi_req(%struct.request* %143)
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ERROR_MAX, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %142
  %150 = load %struct.request*, %struct.request** %7, align 8
  %151 = call i64 @blk_noretry_request(%struct.request* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149, %142
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %155 = load %struct.request*, %struct.request** %7, align 8
  %156 = call i32 @ide_kill_rq(%struct.TYPE_13__* %154, %struct.request* %155)
  %157 = load i32, i32* @ide_stopped, align 4
  store i32 %157, i32* %5, align 4
  br label %217

158:                                              ; preds = %149
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %165 = call i32 %163(%struct.TYPE_12__* %164)
  %166 = load i32, i32* @ATA_BUSY, align 4
  %167 = load i32, i32* @ATA_DRQ, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %158
  %172 = load i32, i32* @ERROR_RESET, align 4
  %173 = load %struct.request*, %struct.request** %7, align 8
  %174 = call %struct.TYPE_14__* @scsi_req(%struct.request* %173)
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %172
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %171, %158
  %179 = load %struct.request*, %struct.request** %7, align 8
  %180 = call %struct.TYPE_14__* @scsi_req(%struct.request* %179)
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ERROR_RESET, align 4
  %184 = and i32 %182, %183
  %185 = load i32, i32* @ERROR_RESET, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = load %struct.request*, %struct.request** %7, align 8
  %189 = call %struct.TYPE_14__* @scsi_req(%struct.request* %188)
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %194 = call i32 @ide_do_reset(%struct.TYPE_13__* %193)
  store i32 %194, i32* %5, align 4
  br label %217

195:                                              ; preds = %178
  %196 = load %struct.request*, %struct.request** %7, align 8
  %197 = call %struct.TYPE_14__* @scsi_req(%struct.request* %196)
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @ERROR_RECAL, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* @ERROR_RECAL, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %195
  %205 = load i32, i32* @IDE_SFLAG_RECALIBRATE, align 4
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %204, %195
  %211 = load %struct.request*, %struct.request** %7, align 8
  %212 = call %struct.TYPE_14__* @scsi_req(%struct.request* %211)
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %213, align 4
  %216 = load i32, i32* @ide_stopped, align 4
  store i32 %216, i32* %5, align 4
  br label %217

217:                                              ; preds = %210, %187, %153, %64
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local %struct.TYPE_14__* @scsi_req(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @ide_pad_transfer(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i64 @blk_noretry_request(%struct.request*) #1

declare dso_local i32 @ide_kill_rq(%struct.TYPE_13__*, %struct.request*) #1

declare dso_local i32 @ide_do_reset(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
