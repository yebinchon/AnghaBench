; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_finish_stripe_write_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_finish_stripe_write_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.r5l_log* }
%struct.TYPE_4__ = type { i32 }
%struct.r5l_log = type { i64, i32, i32, i32, i32 }
%struct.stripe_head = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.stripe_head_state = type { i64 }

@R5_InJournal = common dso_local global i32 0, align 4
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i64 0, align 8
@R5_Overlap = common dso_local global i32 0, align 4
@STRIPE_FULL_WRITE = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@STRIPE_R5C_PARTIAL_STRIPE = common dso_local global i32 0, align 4
@STRIPE_R5C_FULL_STRIPE = common dso_local global i32 0, align 4
@R5C_RADIX_COUNT_SHIFT = common dso_local global i64 0, align 8
@STRIPE_SYNC_REQUESTED = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5c_finish_stripe_write_out(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2) #0 {
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.stripe_head_state*, align 8
  %7 = alloca %struct.r5l_log*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %6, align 8
  %13 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %14 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %13, i32 0, i32 7
  %15 = load %struct.r5l_log*, %struct.r5l_log** %14, align 8
  store %struct.r5l_log* %15, %struct.r5l_log** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %17 = icmp ne %struct.r5l_log* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @R5_InJournal, align 4
  %20 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %21 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %20, i32 0, i32 6
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %24 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %19, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18, %3
  br label %238

31:                                               ; preds = %18
  %32 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %33 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = call i32 @WARN_ON(i64 %35)
  %37 = load i32, i32* @R5_InJournal, align 4
  %38 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %39 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %38, i32 0, i32 6
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %42 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @clear_bit(i32 %37, i32* %45)
  %47 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %48 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %31
  br label %238

53:                                               ; preds = %31
  %54 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %55 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %82, %53
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load i32, i32* @R5_InJournal, align 4
  %63 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %64 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %63, i32 0, i32 6
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @clear_bit(i32 %62, i32* %69)
  %71 = load i32, i32* @R5_Overlap, align 4
  %72 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %73 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %72, i32 0, i32 6
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i64 @test_and_clear_bit(i32 %71, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %61
  br label %57

83:                                               ; preds = %57
  %84 = load %struct.stripe_head_state*, %struct.stripe_head_state** %6, align 8
  %85 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* @STRIPE_FULL_WRITE, align 4
  %87 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %88 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %87, i32 0, i32 2
  %89 = call i64 @test_and_clear_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %93 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %92, i32 0, i32 6
  %94 = call i64 @atomic_dec_and_test(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %98 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %97, i32 0, i32 5
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @md_wakeup_thread(i32 %101)
  br label %103

103:                                              ; preds = %96, %91
  br label %104

104:                                              ; preds = %103, %83
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %109 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %108, i32 0, i32 4
  %110 = call i32 @wake_up(i32* %109)
  br label %111

111:                                              ; preds = %107, %104
  %112 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %113 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %112, i32 0, i32 4
  %114 = call i32 @spin_lock_irq(i32* %113)
  %115 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %116 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %115, i32 0, i32 5
  %117 = call i32 @list_del_init(i32* %116)
  %118 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %119 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %118, i32 0, i32 4
  %120 = call i32 @spin_unlock_irq(i32* %119)
  %121 = load i32, i32* @MaxSector, align 4
  %122 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %123 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %125 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %124, i32 0, i32 3
  %126 = call i32 @atomic_dec(i32* %125)
  %127 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %128 = call i32 @r5c_update_log_state(%struct.r5l_log* %127)
  %129 = load i32, i32* @STRIPE_R5C_PARTIAL_STRIPE, align 4
  %130 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %131 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %130, i32 0, i32 2
  %132 = call i64 @test_bit(i32 %129, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %111
  %135 = load i32, i32* @STRIPE_R5C_FULL_STRIPE, align 4
  %136 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %137 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %136, i32 0, i32 2
  %138 = call i64 @test_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %184

140:                                              ; preds = %134, %111
  %141 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %142 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %143 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @r5c_tree_index(%struct.r5conf* %141, i32 %144)
  store i32 %145, i32* %10, align 4
  %146 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %147 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %146, i32 0, i32 1
  %148 = call i32 @spin_lock(i32* %147)
  %149 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %150 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %149, i32 0, i32 2
  %151 = load i32, i32* %10, align 4
  %152 = call i8** @radix_tree_lookup_slot(i32* %150, i32 %151)
  store i8** %152, i8*** %11, align 8
  %153 = load i8**, i8*** %11, align 8
  %154 = icmp eq i8** %153, null
  %155 = zext i1 %154 to i32
  %156 = call i32 @BUG_ON(i32 %155)
  %157 = load i8**, i8*** %11, align 8
  %158 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %159 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %158, i32 0, i32 1
  %160 = call i64 @radix_tree_deref_slot_protected(i8** %157, i32* %159)
  %161 = load i64, i64* @R5C_RADIX_COUNT_SHIFT, align 8
  %162 = lshr i64 %160, %161
  store i64 %162, i64* %12, align 8
  %163 = load i64, i64* %12, align 8
  %164 = icmp eq i64 %163, 1
  br i1 %164, label %165, label %170

165:                                              ; preds = %140
  %166 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %167 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %166, i32 0, i32 2
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @radix_tree_delete(i32* %167, i32 %168)
  br label %180

170:                                              ; preds = %140
  %171 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %172 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %171, i32 0, i32 2
  %173 = load i8**, i8*** %11, align 8
  %174 = load i64, i64* %12, align 8
  %175 = sub i64 %174, 1
  %176 = load i64, i64* @R5C_RADIX_COUNT_SHIFT, align 8
  %177 = shl i64 %175, %176
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @radix_tree_replace_slot(i32* %172, i8** %173, i8* %178)
  br label %180

180:                                              ; preds = %170, %165
  %181 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %182 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %181, i32 0, i32 1
  %183 = call i32 @spin_unlock(i32* %182)
  br label %184

184:                                              ; preds = %180, %134
  %185 = load i32, i32* @STRIPE_R5C_PARTIAL_STRIPE, align 4
  %186 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %187 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %186, i32 0, i32 2
  %188 = call i64 @test_and_clear_bit(i32 %185, i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %192 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %191, i32 0, i32 2
  %193 = call i64 @atomic_read(i32* %192)
  %194 = icmp eq i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @BUG_ON(i32 %195)
  %197 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %198 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %197, i32 0, i32 3
  %199 = call i32 @atomic_dec(i32* %198)
  %200 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %201 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %200, i32 0, i32 2
  %202 = call i32 @atomic_dec(i32* %201)
  br label %203

203:                                              ; preds = %190, %184
  %204 = load i32, i32* @STRIPE_R5C_FULL_STRIPE, align 4
  %205 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %206 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %205, i32 0, i32 2
  %207 = call i64 @test_and_clear_bit(i32 %204, i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %203
  %210 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %211 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %210, i32 0, i32 0
  %212 = call i64 @atomic_read(i32* %211)
  %213 = icmp eq i64 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i32 @BUG_ON(i32 %214)
  %216 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %217 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %216, i32 0, i32 1
  %218 = call i32 @atomic_dec(i32* %217)
  %219 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %220 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %219, i32 0, i32 0
  %221 = call i32 @atomic_dec(i32* %220)
  br label %222

222:                                              ; preds = %209, %203
  %223 = load %struct.r5l_log*, %struct.r5l_log** %7, align 8
  %224 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %225 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @r5l_append_flush_payload(%struct.r5l_log* %223, i32 %226)
  %228 = load i32, i32* @STRIPE_SYNC_REQUESTED, align 4
  %229 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %230 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %229, i32 0, i32 2
  %231 = call i64 @test_bit(i32 %228, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %222
  %234 = load i32, i32* @STRIPE_HANDLE, align 4
  %235 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %236 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %235, i32 0, i32 2
  %237 = call i32 @set_bit(i32 %234, i32* %236)
  br label %238

238:                                              ; preds = %30, %52, %233, %222
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @r5c_update_log_state(%struct.r5l_log*) #1

declare dso_local i32 @r5c_tree_index(%struct.r5conf*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8** @radix_tree_lookup_slot(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @radix_tree_deref_slot_protected(i8**, i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @radix_tree_replace_slot(i32*, i8**, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @r5l_append_flush_payload(%struct.r5l_log*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
