; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_log_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_log_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i64, i32, i32, i32, %struct.r5l_io_unit* }
%struct.r5l_io_unit = type { i32, i32, i32, i32, i32 }
%struct.stripe_head = type { i32, i32, i32, i32, i32, %struct.r5l_io_unit*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@STRIPE_R5C_PREFLUSH = common dso_local global i32 0, align 4
@R5_Wantwrite = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@R5_WantFUA = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_BACK = common dso_local global i64 0, align 8
@R5LOG_PAYLOAD_DATA = common dso_local global i32 0, align 4
@R5LOG_PAYLOAD_PARITY = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i64 0, align 8
@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.stripe_head*, i32, i32)* @r5l_log_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_log_stripe(%struct.r5l_log* %0, %struct.stripe_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5l_log*, align 8
  %7 = alloca %struct.stripe_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.r5l_io_unit*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %6, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = add i64 %16, 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 %17, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @r5l_get_meta(%struct.r5l_log* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %279

30:                                               ; preds = %4
  %31 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %32 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %31, i32 0, i32 4
  %33 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %32, align 8
  store %struct.r5l_io_unit* %33, %struct.r5l_io_unit** %13, align 8
  %34 = load i32, i32* @STRIPE_R5C_PREFLUSH, align 4
  %35 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 9
  %37 = call i64 @test_and_clear_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %41 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %30
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %132, %42
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %46 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %135

49:                                               ; preds = %43
  %50 = load i32, i32* @R5_Wantwrite, align 4
  %51 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %52 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %51, i32 0, i32 7
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = call i64 @test_bit(i32 %50, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %49
  %61 = load i32, i32* @R5_InJournal, align 4
  %62 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %63 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %62, i32 0, i32 7
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = call i64 @test_bit(i32 %61, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %60, %49
  br label %132

72:                                               ; preds = %60
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %75 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %81 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %72
  br label %132

85:                                               ; preds = %78
  %86 = load i32, i32* @R5_WantFUA, align 4
  %87 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %88 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %87, i32 0, i32 7
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = call i64 @test_bit(i32 %86, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %85
  %97 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %98 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_BACK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %104 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  %105 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %106 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %96, %85
  %108 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %109 = load i32, i32* @R5LOG_PAYLOAD_DATA, align 4
  %110 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @raid5_compute_blocknr(%struct.stripe_head* %110, i32 %111, i32 0)
  %113 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %114 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %113, i32 0, i32 7
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @r5l_append_payload_meta(%struct.r5l_log* %108, i32 %109, i32 %112, i32 %120, i32 0, i32 0)
  %122 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %123 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %124 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %123, i32 0, i32 7
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @r5l_append_payload_page(%struct.r5l_log* %122, i32 %130)
  br label %132

132:                                              ; preds = %107, %84, %71
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %43

135:                                              ; preds = %43
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %189

138:                                              ; preds = %135
  %139 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %140 = load i32, i32* @R5LOG_PAYLOAD_PARITY, align 4
  %141 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %142 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %145 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %144, i32 0, i32 7
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %148 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %155 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %154, i32 0, i32 7
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %158 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @r5l_append_payload_meta(%struct.r5l_log* %139, i32 %140, i32 %143, i32 %153, i32 %163, i32 1)
  %165 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %166 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %167 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %166, i32 0, i32 7
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %170 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @r5l_append_payload_page(%struct.r5l_log* %165, i32 %175)
  %177 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %178 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %179 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %178, i32 0, i32 7
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %182 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @r5l_append_payload_page(%struct.r5l_log* %177, i32 %187)
  br label %227

189:                                              ; preds = %135
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %221

192:                                              ; preds = %189
  %193 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %194 = load i32, i32* @R5LOG_PAYLOAD_PARITY, align 4
  %195 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %196 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %199 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %198, i32 0, i32 7
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %202 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @r5l_append_payload_meta(%struct.r5l_log* %193, i32 %194, i32 %197, i32 %207, i32 0, i32 0)
  %209 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %210 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %211 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %210, i32 0, i32 7
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %214 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @r5l_append_payload_page(%struct.r5l_log* %209, i32 %219)
  br label %226

221:                                              ; preds = %189
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @BUG_ON(i32 %224)
  br label %226

226:                                              ; preds = %221, %192
  br label %227

227:                                              ; preds = %226, %138
  %228 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %229 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %228, i32 0, i32 6
  %230 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %231 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %230, i32 0, i32 4
  %232 = call i32 @list_add_tail(i32* %229, i32* %231)
  %233 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %234 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %233, i32 0, i32 3
  %235 = call i32 @atomic_inc(i32* %234)
  %236 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %237 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %238 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %237, i32 0, i32 5
  store %struct.r5l_io_unit* %236, %struct.r5l_io_unit** %238, align 8
  %239 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %240 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %227
  store i32 0, i32* %5, align 4
  br label %279

245:                                              ; preds = %227
  %246 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %247 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @MaxSector, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %278

251:                                              ; preds = %245
  %252 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %253 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %252, i32 0, i32 3
  %254 = call i32 @list_empty(i32* %253)
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = call i32 @BUG_ON(i32 %257)
  %259 = load %struct.r5l_io_unit*, %struct.r5l_io_unit** %13, align 8
  %260 = getelementptr inbounds %struct.r5l_io_unit, %struct.r5l_io_unit* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %263 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  %264 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %265 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %264, i32 0, i32 2
  %266 = call i32 @spin_lock_irq(i32* %265)
  %267 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %268 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %267, i32 0, i32 3
  %269 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %270 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %269, i32 0, i32 3
  %271 = call i32 @list_add_tail(i32* %268, i32* %270)
  %272 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %273 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %272, i32 0, i32 2
  %274 = call i32 @spin_unlock_irq(i32* %273)
  %275 = load %struct.r5l_log*, %struct.r5l_log** %6, align 8
  %276 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %275, i32 0, i32 1
  %277 = call i32 @atomic_inc(i32* %276)
  br label %278

278:                                              ; preds = %251, %245
  store i32 0, i32* %5, align 4
  br label %279

279:                                              ; preds = %278, %244, %28
  %280 = load i32, i32* %5, align 4
  ret i32 %280
}

declare dso_local i32 @r5l_get_meta(%struct.r5l_log*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r5l_append_payload_meta(%struct.r5l_log*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @raid5_compute_blocknr(%struct.stripe_head*, i32, i32) #1

declare dso_local i32 @r5l_append_payload_page(%struct.r5l_log*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
