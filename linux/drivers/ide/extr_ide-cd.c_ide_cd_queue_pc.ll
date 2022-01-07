; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_queue_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-cd.c_ide_cd_queue_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.cdrom_info* }
%struct.cdrom_info = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }
%struct.request = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@IDE_DBG_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"cmd[0]: 0x%x, write: 0x%x, timeout: %d, rq_flags: 0x%x\00", align 1
@REQ_OP_DRV_OUT = common dso_local global i32 0, align 4
@REQ_OP_DRV_IN = common dso_local global i32 0, align 4
@BLK_MAX_CDB = common dso_local global i32 0, align 4
@ATA_PRIV_PC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@RQF_FAILED = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@NOT_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cd_queue_pc(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3, i32* %4, %struct.scsi_sense_hdr* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.scsi_sense_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cdrom_info*, align 8
  %19 = alloca %struct.scsi_sense_hdr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.request*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.scsi_sense_hdr* %5, %struct.scsi_sense_hdr** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.cdrom_info*, %struct.cdrom_info** %26, align 8
  store %struct.cdrom_info* %27, %struct.cdrom_info** %18, align 8
  store i32 10, i32* %20, align 4
  %28 = load i32, i32* @IDE_DBG_PC, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @ide_debug_log(i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8 zeroext %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %15, align 8
  %37 = icmp ne %struct.scsi_sense_hdr* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %8
  store %struct.scsi_sense_hdr* %19, %struct.scsi_sense_hdr** %15, align 8
  br label %39

39:                                               ; preds = %38, %8
  br label %40

40:                                               ; preds = %184, %39
  store i32 0, i32* %24, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @REQ_OP_DRV_OUT, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @REQ_OP_DRV_IN, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = call %struct.request* @blk_get_request(i32 %43, i32 %51, i32 0)
  store %struct.request* %52, %struct.request** %22, align 8
  %53 = load %struct.request*, %struct.request** %22, align 8
  %54 = call %struct.TYPE_7__* @scsi_req(%struct.request* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* @BLK_MAX_CDB, align 4
  %59 = call i32 @memcpy(i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* @ATA_PRIV_PC, align 4
  %61 = load %struct.request*, %struct.request** %22, align 8
  %62 = call %struct.TYPE_8__* @ide_req(%struct.request* %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load %struct.request*, %struct.request** %22, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.request*, %struct.request** %22, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %91

74:                                               ; preds = %50
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.request*, %struct.request** %22, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GFP_NOIO, align 4
  %83 = call i32 @blk_rq_map_kern(i32 %77, %struct.request* %78, i8* %79, i32 %81, i32 %82)
  store i32 %83, i32* %23, align 4
  %84 = load i32, i32* %23, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load %struct.request*, %struct.request** %22, align 8
  %88 = call i32 @blk_put_request(%struct.request* %87)
  %89 = load i32, i32* %23, align 4
  store i32 %89, i32* %9, align 4
  br label %195

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %50
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cdrom_info*, %struct.cdrom_info** %18, align 8
  %96 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.request*, %struct.request** %22, align 8
  %99 = call i32 @blk_execute_rq(i32 %94, i32 %97, %struct.request* %98, i32 0)
  %100 = load %struct.request*, %struct.request** %22, align 8
  %101 = call %struct.TYPE_7__* @scsi_req(%struct.request* %100)
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %91
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  br label %109

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %105
  %110 = phi i32 [ %107, %105 ], [ 0, %108 ]
  store i32 %110, i32* %23, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load %struct.request*, %struct.request** %22, align 8
  %115 = call %struct.TYPE_7__* @scsi_req(%struct.request* %114)
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %14, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %109
  %120 = load %struct.request*, %struct.request** %22, align 8
  %121 = call %struct.TYPE_7__* @scsi_req(%struct.request* %120)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.request*, %struct.request** %22, align 8
  %125 = call %struct.TYPE_7__* @scsi_req(%struct.request* %124)
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %15, align 8
  %129 = call i32 @scsi_normalize_sense(i32 %123, i32 %127, %struct.scsi_sense_hdr* %128)
  %130 = load %struct.request*, %struct.request** %22, align 8
  %131 = getelementptr inbounds %struct.request, %struct.request* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RQF_FAILED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %21, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %170

139:                                              ; preds = %119
  %140 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %15, align 8
  %141 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @UNIT_ATTENTION, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = call i32 @cdrom_saw_media_change(%struct.TYPE_6__* %146)
  br label %167

148:                                              ; preds = %139
  %149 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %15, align 8
  %150 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NOT_READY, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %15, align 8
  %156 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 4
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %15, align 8
  %161 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 4
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 1, i32* %24, align 4
  br label %166

165:                                              ; preds = %159, %154, %148
  store i32 0, i32* %20, align 4
  br label %166

166:                                              ; preds = %165, %164
  br label %167

167:                                              ; preds = %166, %145
  %168 = load i32, i32* %20, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %20, align 4
  br label %170

170:                                              ; preds = %167, %119
  %171 = load %struct.request*, %struct.request** %22, align 8
  %172 = call i32 @blk_put_request(%struct.request* %171)
  %173 = load i32, i32* %24, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = call i32 @ssleep(i32 2)
  br label %177

177:                                              ; preds = %175, %170
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %21, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %20, align 4
  %183 = icmp sge i32 %182, 0
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i1 [ false, %178 ], [ %183, %181 ]
  br i1 %185, label %40, label %186

186:                                              ; preds = %184
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* @EIO, align 4
  %191 = sub nsw i32 0, %190
  br label %193

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %189
  %194 = phi i32 [ %191, %189 ], [ 0, %192 ]
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %193, %86
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local i32 @ide_debug_log(i32, i8*, i8 zeroext, i32, i32, i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @scsi_req(%struct.request*) #1

declare dso_local %struct.TYPE_8__* @ide_req(%struct.request*) #1

declare dso_local i32 @blk_rq_map_kern(i32, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local i32 @scsi_normalize_sense(i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @cdrom_saw_media_change(%struct.TYPE_6__*) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
