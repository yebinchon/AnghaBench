; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_get_active_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_get_active_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.r5conf = type { i64, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"get_stripe, sector %llu\0A\00", align 1
@R5_INACTIVE_BLOCKED = common dso_local global i32 0, align 4
@R5_DID_ALLOC = common dso_local global i32 0, align 4
@R5_ALLOC_MORE = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@STRIPE_EXPANDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stripe_head* @raid5_get_active_stripe(%struct.r5conf* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stripe_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.r5conf* %0, %struct.r5conf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @stripe_hash_locks_hash(i64 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @spin_lock_irq(i32* %23)
  br label %25

25:                                               ; preds = %248, %5
  %26 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %27 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %30 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi i1 [ true, %25 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wait_event_lock_irq(i32 %28, i32 %38, i32 %45)
  %47 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %50 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %51, %53
  %55 = call %struct.stripe_head* @__find_stripe(%struct.r5conf* %47, i64 %48, i64 %54)
  store %struct.stripe_head* %55, %struct.stripe_head** %11, align 8
  %56 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %57 = icmp ne %struct.stripe_head* %56, null
  br i1 %57, label %157, label %58

58:                                               ; preds = %36
  %59 = load i32, i32* @R5_INACTIVE_BLOCKED, align 4
  %60 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %61 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %60, i32 0, i32 7
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call %struct.stripe_head* @get_free_stripe(%struct.r5conf* %65, i32 %66)
  store %struct.stripe_head* %67, %struct.stripe_head** %11, align 8
  %68 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %69 = icmp ne %struct.stripe_head* %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @R5_DID_ALLOC, align 4
  %72 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %73 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %72, i32 0, i32 7
  %74 = call i32 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @R5_ALLOC_MORE, align 4
  %78 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %79 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %78, i32 0, i32 7
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %70, %64
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %87 = icmp eq %struct.stripe_head* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %251

89:                                               ; preds = %85, %82
  %90 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %91 = call i32 @r5c_check_stripe_cache_usage(%struct.r5conf* %90)
  %92 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %93 = icmp ne %struct.stripe_head* %92, null
  br i1 %93, label %148, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @R5_INACTIVE_BLOCKED, align 4
  %96 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %97 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %96, i32 0, i32 7
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %100 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @r5l_wake_reclaim(i32 %101, i32 0)
  %103 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %104 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %107 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i64 @list_empty(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %94
  %115 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %116 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %115, i32 0, i32 6
  %117 = call i32 @atomic_read(i32* %116)
  %118 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %119 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %120, 3
  %122 = sdiv i32 %121, 4
  %123 = icmp slt i32 %117, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* @R5_INACTIVE_BLOCKED, align 4
  %126 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %127 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %126, i32 0, i32 7
  %128 = call i32 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %124, %114
  %132 = phi i1 [ true, %114 ], [ %130, %124 ]
  br label %133

133:                                              ; preds = %131, %94
  %134 = phi i1 [ false, %94 ], [ %132, %131 ]
  %135 = zext i1 %134 to i32
  %136 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %137 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @wait_event_lock_irq(i32 %105, i32 %135, i32 %142)
  %144 = load i32, i32* @R5_INACTIVE_BLOCKED, align 4
  %145 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %146 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %145, i32 0, i32 7
  %147 = call i32 @clear_bit(i32 %144, i32* %146)
  br label %156

148:                                              ; preds = %89
  %149 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %150 = load i64, i64* %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @init_stripe(%struct.stripe_head* %149, i64 %150, i32 %151)
  %153 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %154 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %153, i32 0, i32 0
  %155 = call i32 @atomic_inc(i32* %154)
  br label %156

156:                                              ; preds = %148, %133
  br label %247

157:                                              ; preds = %36
  %158 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %159 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %158, i32 0, i32 0
  %160 = call i32 @atomic_inc_not_zero(i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %246, label %162

162:                                              ; preds = %157
  %163 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %164 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %163, i32 0, i32 3
  %165 = call i32 @spin_lock(i32* %164)
  %166 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %167 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %166, i32 0, i32 0
  %168 = call i32 @atomic_read(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %239, label %170

170:                                              ; preds = %162
  %171 = load i32, i32* @STRIPE_HANDLE, align 4
  %172 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %173 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %172, i32 0, i32 3
  %174 = call i32 @test_bit(i32 %171, i32* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  %177 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %178 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %177, i32 0, i32 6
  %179 = call i32 @atomic_inc(i32* %178)
  br label %180

180:                                              ; preds = %176, %170
  %181 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %182 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %181, i32 0, i32 2
  %183 = call i64 @list_empty(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load i32, i32* @STRIPE_EXPANDING, align 4
  %187 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %188 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %187, i32 0, i32 3
  %189 = call i32 @test_bit(i32 %186, i32* %188)
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  br label %192

192:                                              ; preds = %185, %180
  %193 = phi i1 [ false, %180 ], [ %191, %185 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 @BUG_ON(i32 %194)
  store i32 0, i32* %13, align 4
  %196 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %197 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = call i64 @list_empty(i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %192
  store i32 1, i32* %13, align 4
  br label %205

205:                                              ; preds = %204, %192
  %206 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %207 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %206, i32 0, i32 2
  %208 = call i32 @list_del_init(i32* %207)
  %209 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %210 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = call i64 @list_empty(i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %205
  %218 = load i32, i32* %13, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %222 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %221, i32 0, i32 4
  %223 = call i32 @atomic_inc(i32* %222)
  br label %224

224:                                              ; preds = %220, %217, %205
  %225 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %226 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %225, i32 0, i32 1
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = icmp ne %struct.TYPE_2__* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %224
  %230 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %231 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %230, i32 0, i32 1
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %233, align 4
  %236 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %237 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %236, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %237, align 8
  br label %238

238:                                              ; preds = %229, %224
  br label %239

239:                                              ; preds = %238, %162
  %240 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %241 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %240, i32 0, i32 0
  %242 = call i32 @atomic_inc(i32* %241)
  %243 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %244 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %243, i32 0, i32 3
  %245 = call i32 @spin_unlock(i32* %244)
  br label %246

246:                                              ; preds = %239, %157
  br label %247

247:                                              ; preds = %246, %156
  br label %248

248:                                              ; preds = %247
  %249 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  %250 = icmp eq %struct.stripe_head* %249, null
  br i1 %250, label %25, label %251

251:                                              ; preds = %248, %88
  %252 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %253 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = call i32 @spin_unlock_irq(i32* %257)
  %259 = load %struct.stripe_head*, %struct.stripe_head** %11, align 8
  ret %struct.stripe_head* %259
}

declare dso_local i32 @stripe_hash_locks_hash(i64) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local %struct.stripe_head* @__find_stripe(%struct.r5conf*, i64, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.stripe_head* @get_free_stripe(%struct.r5conf*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @r5c_check_stripe_cache_usage(%struct.r5conf*) #1

declare dso_local i32 @r5l_wake_reclaim(i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @init_stripe(%struct.stripe_head*, i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
