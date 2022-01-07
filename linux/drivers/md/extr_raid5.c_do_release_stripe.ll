; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_do_release_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_do_release_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i64, i64, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.TYPE_3__*, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }
%struct.stripe_head = type { i32, i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@R5_InJournal = common dso_local global i32 0, align 4
@STRIPE_SYNC_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4
@STRIPE_PREREAD_ACTIVE = common dso_local global i32 0, align 4
@STRIPE_BIT_DELAY = common dso_local global i32 0, align 4
@IO_THRESHOLD = common dso_local global i64 0, align 8
@STRIPE_EXPANDING = common dso_local global i32 0, align 4
@STRIPE_R5C_FULL_STRIPE = common dso_local global i32 0, align 4
@STRIPE_R5C_PARTIAL_STRIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.stripe_head*, %struct.list_head*)* @do_release_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_release_stripe(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %10 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %9, i32 0, i32 3
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %17 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %16, i32 0, i32 9
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %23 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @r5c_is_writeback(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %3
  %28 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %29 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %49, %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* @R5_InJournal, align 4
  %37 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %38 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i64 @test_bit(i32 %36, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %35
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %53 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %54 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %53, i32 0, i32 4
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %51
  %58 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %59 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %58, i32 0, i32 16
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %64 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @r5c_is_writeback(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i32, i32* @STRIPE_HANDLE, align 4
  %70 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %71 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %70, i32 0, i32 4
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74, %51
  %78 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %79 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %80 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %79, i32 0, i32 4
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %85 = call i32 @r5c_make_stripe_write_out(%struct.stripe_head* %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32, i32* @STRIPE_HANDLE, align 4
  %88 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %89 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %88, i32 0, i32 4
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %74, %68, %62, %57
  %92 = load i32, i32* @STRIPE_HANDLE, align 4
  %93 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %94 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %93, i32 0, i32 4
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %178

97:                                               ; preds = %91
  %98 = load i32, i32* @STRIPE_DELAYED, align 4
  %99 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %100 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %99, i32 0, i32 4
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %105 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %106 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %105, i32 0, i32 4
  %107 = call i64 @test_bit(i32 %104, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %111 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %110, i32 0, i32 3
  %112 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %113 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %112, i32 0, i32 15
  %114 = call i32 @list_add_tail(i32* %111, %struct.list_head* %113)
  br label %171

115:                                              ; preds = %103, %97
  %116 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %117 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %118 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %117, i32 0, i32 4
  %119 = call i64 @test_bit(i32 %116, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %123 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %126 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = icmp sgt i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %132 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %131, i32 0, i32 3
  %133 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %134 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %133, i32 0, i32 14
  %135 = call i32 @list_add_tail(i32* %132, %struct.list_head* %134)
  br label %170

136:                                              ; preds = %121, %115
  %137 = load i32, i32* @STRIPE_DELAYED, align 4
  %138 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %139 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %138, i32 0, i32 4
  %140 = call i32 @clear_bit(i32 %137, i32* %139)
  %141 = load i32, i32* @STRIPE_BIT_DELAY, align 4
  %142 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %143 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %142, i32 0, i32 4
  %144 = call i32 @clear_bit(i32 %141, i32* %143)
  %145 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %146 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %136
  %150 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %151 = call i64 @stripe_is_lowprio(%struct.stripe_head* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %155 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %154, i32 0, i32 3
  %156 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %157 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %156, i32 0, i32 13
  %158 = call i32 @list_add_tail(i32* %155, %struct.list_head* %157)
  br label %165

159:                                              ; preds = %149
  %160 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %161 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %160, i32 0, i32 3
  %162 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %163 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %162, i32 0, i32 12
  %164 = call i32 @list_add_tail(i32* %161, %struct.list_head* %163)
  br label %165

165:                                              ; preds = %159, %153
  br label %169

166:                                              ; preds = %136
  %167 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %168 = call i32 @raid5_wakeup_stripe_thread(%struct.stripe_head* %167)
  br label %288

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169, %130
  br label %171

171:                                              ; preds = %170, %109
  %172 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %173 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %172, i32 0, i32 10
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @md_wakeup_thread(i32 %176)
  br label %288

178:                                              ; preds = %91
  %179 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %180 = call i32 @stripe_operations_active(%struct.stripe_head* %179)
  %181 = call i32 @BUG_ON(i32 %180)
  %182 = load i32, i32* @STRIPE_PREREAD_ACTIVE, align 4
  %183 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %184 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %183, i32 0, i32 4
  %185 = call i64 @test_and_clear_bit(i32 %182, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %178
  %188 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %189 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %188, i32 0, i32 11
  %190 = call i64 @atomic_dec_return(i32* %189)
  %191 = load i64, i64* @IO_THRESHOLD, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %187
  %194 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %195 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %194, i32 0, i32 10
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @md_wakeup_thread(i32 %198)
  br label %200

200:                                              ; preds = %193, %187
  br label %201

201:                                              ; preds = %200, %178
  %202 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %203 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %202, i32 0, i32 9
  %204 = call i32 @atomic_dec(i32* %203)
  %205 = load i32, i32* @STRIPE_EXPANDING, align 4
  %206 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %207 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %206, i32 0, i32 4
  %208 = call i64 @test_bit(i32 %205, i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %287, label %210

210:                                              ; preds = %201
  %211 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %212 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @r5c_is_writeback(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %210
  %217 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %218 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %217, i32 0, i32 3
  %219 = load %struct.list_head*, %struct.list_head** %6, align 8
  %220 = call i32 @list_add_tail(i32* %218, %struct.list_head* %219)
  br label %286

221:                                              ; preds = %210
  %222 = load i32, i32* @R5_InJournal, align 4
  %223 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %224 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %223, i32 0, i32 5
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %227 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = call i64 @test_bit(i32 %222, i32* %230)
  %232 = call i32 @WARN_ON(i64 %231)
  %233 = load i32, i32* %8, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %221
  %236 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %237 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %236, i32 0, i32 3
  %238 = load %struct.list_head*, %struct.list_head** %6, align 8
  %239 = call i32 @list_add_tail(i32* %237, %struct.list_head* %238)
  br label %285

240:                                              ; preds = %221
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %243 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %246 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %244, %247
  %249 = icmp eq i32 %241, %248
  br i1 %249, label %250, label %278

250:                                              ; preds = %240
  %251 = load i32, i32* @STRIPE_R5C_FULL_STRIPE, align 4
  %252 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %253 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %252, i32 0, i32 4
  %254 = call i32 @test_and_set_bit(i32 %251, i32* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %250
  %257 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %258 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %257, i32 0, i32 7
  %259 = call i32 @atomic_inc(i32* %258)
  br label %260

260:                                              ; preds = %256, %250
  %261 = load i32, i32* @STRIPE_R5C_PARTIAL_STRIPE, align 4
  %262 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %263 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %262, i32 0, i32 4
  %264 = call i64 @test_and_clear_bit(i32 %261, i32* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %268 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %267, i32 0, i32 6
  %269 = call i32 @atomic_dec(i32* %268)
  br label %270

270:                                              ; preds = %266, %260
  %271 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %272 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %271, i32 0, i32 3
  %273 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %274 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %273, i32 0, i32 5
  %275 = call i32 @list_add_tail(i32* %272, %struct.list_head* %274)
  %276 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %277 = call i32 @r5c_check_cached_full_stripe(%struct.r5conf* %276)
  br label %284

278:                                              ; preds = %240
  %279 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %280 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %279, i32 0, i32 3
  %281 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %282 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %281, i32 0, i32 4
  %283 = call i32 @list_add_tail(i32* %280, %struct.list_head* %282)
  br label %284

284:                                              ; preds = %278, %270
  br label %285

285:                                              ; preds = %284, %235
  br label %286

286:                                              ; preds = %285, %216
  br label %287

287:                                              ; preds = %286, %201
  br label %288

288:                                              ; preds = %166, %287, %171
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @r5c_is_writeback(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r5c_make_stripe_write_out(%struct.stripe_head*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @stripe_is_lowprio(%struct.stripe_head*) #1

declare dso_local i32 @raid5_wakeup_stripe_thread(%struct.stripe_head*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @stripe_operations_active(%struct.stripe_head*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @r5c_check_cached_full_stripe(%struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
