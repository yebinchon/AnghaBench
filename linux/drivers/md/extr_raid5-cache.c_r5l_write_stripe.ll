; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_write_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_write_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i64, i64, i32, i32, i32, i32 }
%struct.stripe_head = type { i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_2__*, i64, %struct.r5conf* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.r5conf = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@R5_Wantwrite = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@STRIPE_LOG_TRAPPED = common dso_local global i32 0, align 4
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i64 0, align 8
@R5C_LOG_CRITICAL = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5l_write_stripe(%struct.r5l_log* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5l_log*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  %15 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %16 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %15, i32 0, i32 9
  %17 = load %struct.r5conf*, %struct.r5conf** %16, align 8
  store %struct.r5conf* %17, %struct.r5conf** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %19 = icmp ne %struct.r5l_log* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %262

23:                                               ; preds = %2
  %24 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @R5_Wantwrite, align 4
  %30 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 7
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %29, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load i32, i32* @STRIPE_SYNCING, align 4
  %42 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %43 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %42, i32 0, i32 6
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40, %28, %23
  %47 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %48 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %49 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %48, i32 0, i32 6
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %262

53:                                               ; preds = %40
  %54 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %55 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %56 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %55, i32 0, i32 6
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = call i32 @WARN_ON(i64 %57)
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %122, %53
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %62 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %125

65:                                               ; preds = %59
  %66 = load i32, i32* @R5_Wantwrite, align 4
  %67 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %68 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %67, i32 0, i32 7
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = call i64 @test_bit(i32 %66, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %65
  %77 = load i32, i32* @R5_InJournal, align 4
  %78 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %79 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %78, i32 0, i32 7
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = call i64 @test_bit(i32 %77, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76, %65
  br label %122

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %92 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %93 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %92, i32 0, i32 6
  %94 = call i64 @test_bit(i32 %91, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %122

97:                                               ; preds = %88
  %98 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %99 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %98, i32 0, i32 7
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @kmap_atomic(i32 %105)
  store i8* %106, i8** %14, align 8
  %107 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %108 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = call i32 @crc32c_le(i32 %109, i8* %110, i32 %111)
  %113 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %114 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %113, i32 0, i32 7
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %112, i32* %119, align 4
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @kunmap_atomic(i8* %120)
  br label %122

122:                                              ; preds = %97, %96, %87
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %59

125:                                              ; preds = %59
  %126 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %127 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = add nsw i32 1, %132
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %138 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %139 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %138, i32 0, i32 6
  %140 = call i32 @set_bit(i32 %137, i32* %139)
  %141 = load i32, i32* @STRIPE_DELAYED, align 4
  %142 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %143 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %142, i32 0, i32 6
  %144 = call i32 @clear_bit(i32 %141, i32* %143)
  %145 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %146 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %145, i32 0, i32 5
  %147 = call i32 @atomic_inc(i32* %146)
  %148 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %149 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %148, i32 0, i32 2
  %150 = call i32 @mutex_lock(i32* %149)
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 1, %151
  %153 = load i32, i32* @PAGE_SHIFT, align 4
  %154 = sub nsw i32 %153, 9
  %155 = shl i32 %152, %154
  store i32 %155, i32* %10, align 4
  %156 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %157 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %192

161:                                              ; preds = %125
  %162 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @r5l_has_free_space(%struct.r5l_log* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %161
  %167 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %168 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %169 = call i32 @r5l_add_no_space_stripe(%struct.r5l_log* %167, %struct.stripe_head* %168)
  store i32 1, i32* %13, align 4
  br label %191

170:                                              ; preds = %161
  %171 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %172 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @r5l_log_stripe(%struct.r5l_log* %171, %struct.stripe_head* %172, i32 %173, i32 %174)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %170
  %179 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %180 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %179, i32 0, i32 3
  %181 = call i32 @spin_lock_irq(i32* %180)
  %182 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %183 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %182, i32 0, i32 4
  %184 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %185 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %184, i32 0, i32 4
  %186 = call i32 @list_add_tail(i32* %183, i32* %185)
  %187 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %188 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %187, i32 0, i32 3
  %189 = call i32 @spin_unlock_irq(i32* %188)
  br label %190

190:                                              ; preds = %178, %170
  br label %191

191:                                              ; preds = %190, %166
  br label %251

192:                                              ; preds = %125
  %193 = load i32, i32* @R5C_LOG_CRITICAL, align 4
  %194 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %195 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %194, i32 0, i32 0
  %196 = call i64 @test_bit(i32 %193, i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %200 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @MaxSector, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %206 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %207 = call i32 @r5l_add_no_space_stripe(%struct.r5l_log* %205, %struct.stripe_head* %206)
  store i32 1, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %250

208:                                              ; preds = %198, %192
  %209 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @r5l_has_free_space(%struct.r5l_log* %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %228, label %213

213:                                              ; preds = %208
  %214 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %215 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %218 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %216, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = call i32 (...) @BUG()
  br label %227

223:                                              ; preds = %213
  %224 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %225 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %226 = call i32 @r5l_add_no_space_stripe(%struct.r5l_log* %224, %struct.stripe_head* %225)
  br label %227

227:                                              ; preds = %223, %221
  br label %249

228:                                              ; preds = %208
  %229 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %230 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @r5l_log_stripe(%struct.r5l_log* %229, %struct.stripe_head* %230, i32 %231, i32 %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %228
  %237 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %238 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %237, i32 0, i32 3
  %239 = call i32 @spin_lock_irq(i32* %238)
  %240 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %241 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %240, i32 0, i32 4
  %242 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %243 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %242, i32 0, i32 4
  %244 = call i32 @list_add_tail(i32* %241, i32* %243)
  %245 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %246 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %245, i32 0, i32 3
  %247 = call i32 @spin_unlock_irq(i32* %246)
  br label %248

248:                                              ; preds = %236, %228
  br label %249

249:                                              ; preds = %248, %227
  br label %250

250:                                              ; preds = %249, %204
  br label %251

251:                                              ; preds = %250, %191
  %252 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %253 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %252, i32 0, i32 2
  %254 = call i32 @mutex_unlock(i32* %253)
  %255 = load i32, i32* %13, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %251
  %258 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @r5l_wake_reclaim(%struct.r5l_log* %258, i32 %259)
  br label %261

261:                                              ; preds = %257, %251
  store i32 0, i32* %3, align 4
  br label %262

262:                                              ; preds = %261, %46, %20
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i8* @kmap_atomic(i32) #1

declare dso_local i32 @crc32c_le(i32, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @r5l_has_free_space(%struct.r5l_log*, i32) #1

declare dso_local i32 @r5l_add_no_space_stripe(%struct.r5l_log*, %struct.stripe_head*) #1

declare dso_local i32 @r5l_log_stripe(%struct.r5l_log*, %struct.stripe_head*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @r5l_wake_reclaim(%struct.r5l_log*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
