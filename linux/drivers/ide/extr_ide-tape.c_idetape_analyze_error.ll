; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_analyze_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_analyze_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.ide_atapi_pc*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { %struct.request* }
%struct.request = type { i32*, i32 }
%struct.ide_atapi_pc = type { i32, i64*, i64, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cmd: 0x%x, sense key = %x, asc = %x, ascq = %x\00", align 1
@PC_FLAG_DMA_ERROR = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i64 0, align 8
@WRITE_6 = common dso_local global i64 0, align 8
@PC_FLAG_ABORT = common dso_local global i32 0, align 4
@IDE_DRV_ERROR_FILEMARK = common dso_local global i8* null, align 8
@IDE_DRV_ERROR_EOD = common dso_local global i8* null, align 8
@IDETAPE_MAX_PC_RETRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @idetape_analyze_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idetape_analyze_error(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.ide_atapi_pc*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %11, align 8
  store %struct.ide_atapi_pc* %12, %struct.ide_atapi_pc** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.request*, %struct.request** %16, align 8
  store %struct.request* %17, %struct.request** %5, align 8
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @bio_data(i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IDE_DBG_FUNC, align 4
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ide_debug_log(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %55 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PC_FLAG_DMA_ERROR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = call i32 @get_unaligned_be32(i32* %65)
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.request*, %struct.request** %5, align 8
  %69 = call %struct.TYPE_9__* @scsi_req(%struct.request* %68)
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %1
  %72 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %73 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @READ_6, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %71
  %80 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %81 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WRITE_6, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %122

87:                                               ; preds = %79, %71
  %88 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %89 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %87
  %95 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %96 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %103 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 5
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %115 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %114, i32 0, i32 3
  store i8* null, i8** %115, align 8
  %116 = load i32, i32* @PC_FLAG_ABORT, align 4
  %117 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %118 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %113, %108
  br label %122

122:                                              ; preds = %121, %101, %94, %87, %79
  %123 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %124 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @READ_6, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 128
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load i8*, i8** @IDE_DRV_ERROR_FILEMARK, align 8
  %138 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %139 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load i32, i32* @PC_FLAG_ABORT, align 4
  %141 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %142 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %136, %130, %122
  %146 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %147 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @WRITE_6, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %184

153:                                              ; preds = %145
  %154 = load i32*, i32** %6, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 64
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %174, label %159

159:                                              ; preds = %153
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 13
  br i1 %163, label %164, label %183

164:                                              ; preds = %159
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %183

174:                                              ; preds = %169, %153
  %175 = load i8*, i8** @IDE_DRV_ERROR_EOD, align 8
  %176 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %177 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* @PC_FLAG_ABORT, align 4
  %179 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %180 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %174, %169, %164, %159
  br label %184

184:                                              ; preds = %183, %145
  %185 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %186 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @READ_6, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %184
  %193 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %194 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @WRITE_6, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %236

200:                                              ; preds = %192, %184
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %205, label %214

205:                                              ; preds = %200
  %206 = load i8*, i8** @IDE_DRV_ERROR_EOD, align 8
  %207 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %208 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* @PC_FLAG_ABORT, align 4
  %210 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %211 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %205, %200
  %215 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %216 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @PC_FLAG_ABORT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %235, label %221

221:                                              ; preds = %214
  %222 = load %struct.request*, %struct.request** %5, align 8
  %223 = call i32 @blk_rq_bytes(%struct.request* %222)
  %224 = load %struct.request*, %struct.request** %5, align 8
  %225 = call %struct.TYPE_9__* @scsi_req(%struct.request* %224)
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %223, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %221
  %231 = load i64, i64* @IDETAPE_MAX_PC_RETRIES, align 8
  %232 = add nsw i64 %231, 1
  %233 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %4, align 8
  %234 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %233, i32 0, i32 2
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %230, %221, %214
  br label %236

236:                                              ; preds = %235, %192
  ret void
}

declare dso_local i32* @bio_data(i32) #1

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local %struct.TYPE_9__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
