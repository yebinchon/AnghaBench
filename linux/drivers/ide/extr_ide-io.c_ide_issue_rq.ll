; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_issue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-io.c_ide_issue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.request*, %struct.TYPE_15__*, %struct.ide_host*, %struct.TYPE_13__* }
%struct.ide_host = type { i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i32)* }
%struct.request = type { i32, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32 }

@RQF_DONTPREP = common dso_local global i32 0, align 4
@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@IDE_DFLAG_SLEEPING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IDE_HFLAG_SERIALIZE = common dso_local global i32 0, align 4
@IDE_DFLAG_NIEN_QUIRK = common dso_local global i32 0, align 4
@ATA_NIEN = common dso_local global i32 0, align 4
@ATA_DEVCTL_OBS = common dso_local global i32 0, align 4
@IDE_DFLAG_PARKED = common dso_local global i32 0, align 4
@IDE_DFLAG_BLOCKED = common dso_local global i32 0, align 4
@RQF_PREEMPT = common dso_local global i32 0, align 4
@ide_stopped = common dso_local global i64 0, align 8
@BLK_STS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_issue_rq(%struct.TYPE_15__* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.ide_host*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %8, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  %18 = load %struct.ide_host*, %struct.ide_host** %17, align 8
  store %struct.ide_host* %18, %struct.ide_host** %9, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i32 @blk_rq_is_passthrough(%struct.request* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %3
  %23 = load %struct.request*, %struct.request** %6, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RQF_DONTPREP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @RQF_DONTPREP, align 4
  %31 = load %struct.request*, %struct.request** %6, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.request*, %struct.request** %6, align 8
  %36 = call %struct.TYPE_17__* @ide_req(%struct.request* %35)
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %29, %22, %3
  %39 = call i32 (...) @might_sleep()
  %40 = load %struct.ide_host*, %struct.ide_host** %9, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = call i64 @ide_lock_host(%struct.ide_host* %40, %struct.TYPE_14__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %45, i32* %4, align 4
  br label %231

46:                                               ; preds = %38
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = call i32 @ide_lock_port(%struct.TYPE_14__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %195, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.request*, %struct.request** %55, align 8
  %57 = call i32 @WARN_ON_ONCE(%struct.request* %56)
  br label %58

58:                                               ; preds = %190, %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load %struct.ide_host*, %struct.ide_host** %60, align 8
  %62 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %11, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IDE_DFLAG_SLEEPING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %58
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @jiffies, align 4
  %75 = call i64 @time_after(i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = call i32 @ide_unlock_port(%struct.TYPE_14__* %78)
  br label %196

80:                                               ; preds = %70, %58
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load %struct.ide_host*, %struct.ide_host** %82, align 8
  %84 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IDE_HFLAG_SERIALIZE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %80
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = icmp ne %struct.TYPE_14__* %90, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %89
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %95 = icmp ne %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi %struct.TYPE_15__* [ %99, %96 ], [ null, %100 ]
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %12, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %104 = icmp ne %struct.TYPE_15__* %103, null
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IDE_DFLAG_NIEN_QUIRK, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %119 = load i32, i32* @ATA_NIEN, align 4
  %120 = load i32, i32* @ATA_DEVCTL_OBS, align 4
  %121 = or i32 %119, %120
  %122 = call i32 %117(%struct.TYPE_14__* %118, i32 %121)
  br label %123

123:                                              ; preds = %112, %105, %101
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = load %struct.ide_host*, %struct.ide_host** %126, align 8
  %128 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %127, i32 0, i32 1
  store %struct.TYPE_14__* %124, %struct.TYPE_14__** %128, align 8
  br label %129

129:                                              ; preds = %123, %89, %80
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  store %struct.TYPE_15__* %130, %struct.TYPE_15__** %132, align 8
  %133 = load i32, i32* @IDE_DFLAG_SLEEPING, align 4
  %134 = load i32, i32* @IDE_DFLAG_PARKED, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @IDE_DFLAG_BLOCKED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %129
  %148 = load %struct.request*, %struct.request** %6, align 8
  %149 = call i64 @ata_pm_request(%struct.request* %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load %struct.request*, %struct.request** %6, align 8
  %153 = getelementptr inbounds %struct.request, %struct.request* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @RQF_PREEMPT, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %160 = call i32 @ide_unlock_port(%struct.TYPE_14__* %159)
  br label %196

161:                                              ; preds = %151, %147, %129
  %162 = load %struct.request*, %struct.request** %6, align 8
  %163 = call i32 @blk_rq_bytes(%struct.request* %162)
  %164 = load %struct.request*, %struct.request** %6, align 8
  %165 = call %struct.TYPE_16__* @scsi_req(%struct.request* %164)
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  %167 = load %struct.request*, %struct.request** %6, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 1
  store %struct.request* %167, %struct.request** %169, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = call i32 @spin_unlock_irq(i32* %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %174 = load %struct.request*, %struct.request** %6, align 8
  %175 = call i64 @start_request(%struct.TYPE_15__* %173, %struct.request* %174)
  store i64 %175, i64* %10, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = call i32 @spin_lock_irq(i32* %177)
  %179 = load i64, i64* %10, align 8
  %180 = load i64, i64* @ide_stopped, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %161
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load %struct.request*, %struct.request** %184, align 8
  store %struct.request* %185, %struct.request** %6, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  store %struct.request* null, %struct.request** %187, align 8
  %188 = load %struct.request*, %struct.request** %6, align 8
  %189 = icmp ne %struct.request* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %58

191:                                              ; preds = %182
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %193 = call i32 @ide_unlock_port(%struct.TYPE_14__* %192)
  br label %220

194:                                              ; preds = %161
  br label %219

195:                                              ; preds = %46
  br label %196

196:                                              ; preds = %195, %158, %77
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load %struct.request*, %struct.request** %6, align 8
  %201 = getelementptr inbounds %struct.request, %struct.request* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = call i32 @list_add(i32* %201, i32* %203)
  br label %205

205:                                              ; preds = %199, %196
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = call i32 @spin_unlock_irq(i32* %207)
  %209 = load %struct.ide_host*, %struct.ide_host** %9, align 8
  %210 = call i32 @ide_unlock_host(%struct.ide_host* %209)
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %205
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = load %struct.request*, %struct.request** %6, align 8
  %216 = call i32 @ide_requeue_and_plug(%struct.TYPE_15__* %214, %struct.request* %215)
  br label %217

217:                                              ; preds = %213, %205
  %218 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %218, i32* %4, align 4
  br label %231

219:                                              ; preds = %194
  br label %220

220:                                              ; preds = %219, %191
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = call i32 @spin_unlock_irq(i32* %222)
  %224 = load %struct.request*, %struct.request** %6, align 8
  %225 = icmp eq %struct.request* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load %struct.ide_host*, %struct.ide_host** %9, align 8
  %228 = call i32 @ide_unlock_host(%struct.ide_host* %227)
  br label %229

229:                                              ; preds = %226, %220
  %230 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %229, %217, %44
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local %struct.TYPE_17__* @ide_req(%struct.request*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @ide_lock_host(%struct.ide_host*, %struct.TYPE_14__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @ide_lock_port(%struct.TYPE_14__*) #1

declare dso_local i32 @WARN_ON_ONCE(%struct.request*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i32 @ide_unlock_port(%struct.TYPE_14__*) #1

declare dso_local i64 @ata_pm_request(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local %struct.TYPE_16__* @scsi_req(%struct.request*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @start_request(%struct.TYPE_15__*, %struct.request*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ide_unlock_host(%struct.ide_host*) #1

declare dso_local i32 @ide_requeue_and_plug(%struct.TYPE_15__*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
