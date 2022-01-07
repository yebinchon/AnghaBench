; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_try_caching_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_try_caching_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32, %struct.r5l_log* }
%struct.r5l_log = type { i32, i32 }
%struct.stripe_head = type { i32, %struct.r5dev*, i32 }
%struct.r5dev = type { i32, i64 }
%struct.stripe_head_state = type { i64, i64, i32, i64 }

@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@STRIPE_SYNCING = common dso_local global i32 0, align 4
@R5_OVERWRITE = common dso_local global i32 0, align 4
@R5_InJournal = common dso_local global i32 0, align 4
@STRIPE_R5C_PARTIAL_STRIPE = common dso_local global i32 0, align 4
@STRIPE_R5C_FULL_STRIPE = common dso_local global i32 0, align 4
@R5C_RADIX_COUNT_SHIFT = common dso_local global i64 0, align 8
@R5_Wantwrite = common dso_local global i32 0, align 4
@R5_Wantdrain = common dso_local global i32 0, align 4
@R5_LOCKED = common dso_local global i32 0, align 4
@STRIPE_OP_BIODRAIN = common dso_local global i32 0, align 4
@STRIPE_LOG_TRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5c_try_caching_write(%struct.r5conf* %0, %struct.stripe_head* %1, %struct.stripe_head_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.r5conf*, align 8
  %7 = alloca %struct.stripe_head*, align 8
  %8 = alloca %struct.stripe_head_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5l_log*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.r5dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.r5conf* %0, %struct.r5conf** %6, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %7, align 8
  store %struct.stripe_head_state* %2, %struct.stripe_head_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %19 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %18, i32 0, i32 1
  %20 = load %struct.r5l_log*, %struct.r5l_log** %19, align 8
  store %struct.r5l_log* %20, %struct.r5l_log** %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %22 = call i32 @r5c_is_writeback(%struct.r5l_log* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %28 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %29 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %4
  %33 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %34 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %39 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %222

45:                                               ; preds = %37
  %46 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %47 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %48 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %47, i32 0, i32 0
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %4
  %51 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %52 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @STRIPE_SYNCING, align 4
  %57 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %58 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %57, i32 0, i32 0
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55, %50
  %62 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %63 = call i32 @r5c_make_stripe_write_out(%struct.stripe_head* %62)
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %222

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %100, %66
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %68
  %73 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %74 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %73, i32 0, i32 1
  %75 = load %struct.r5dev*, %struct.r5dev** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %75, i64 %77
  store %struct.r5dev* %78, %struct.r5dev** %12, align 8
  %79 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %80 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %72
  %84 = load i32, i32* @R5_OVERWRITE, align 4
  %85 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %86 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %85, i32 0, i32 0
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @R5_InJournal, align 4
  %91 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %92 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %91, i32 0, i32 0
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %97 = call i32 @r5c_make_stripe_write_out(%struct.stripe_head* %96)
  %98 = load i32, i32* @EAGAIN, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %222

100:                                              ; preds = %89, %83, %72
  br label %68

101:                                              ; preds = %68
  %102 = load i32, i32* @STRIPE_R5C_PARTIAL_STRIPE, align 4
  %103 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %104 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %103, i32 0, i32 0
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %176, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @STRIPE_R5C_FULL_STRIPE, align 4
  %109 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %110 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %109, i32 0, i32 0
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %176, label %113

113:                                              ; preds = %107
  %114 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %115 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %116 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @r5c_tree_index(%struct.r5conf* %114, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %120 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %119, i32 0, i32 0
  %121 = call i32 @spin_lock(i32* %120)
  %122 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %123 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %122, i32 0, i32 1
  %124 = load i32, i32* %15, align 4
  %125 = call i8** @radix_tree_lookup_slot(i32* %123, i32 %124)
  store i8** %125, i8*** %14, align 8
  %126 = load i8**, i8*** %14, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %144

128:                                              ; preds = %113
  %129 = load i8**, i8*** %14, align 8
  %130 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %131 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %130, i32 0, i32 0
  %132 = call i64 @radix_tree_deref_slot_protected(i8** %129, i32* %131)
  %133 = load i64, i64* @R5C_RADIX_COUNT_SHIFT, align 8
  %134 = lshr i64 %132, %133
  store i64 %134, i64* %17, align 8
  %135 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %136 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %135, i32 0, i32 1
  %137 = load i8**, i8*** %14, align 8
  %138 = load i64, i64* %17, align 8
  %139 = add i64 %138, 1
  %140 = load i64, i64* @R5C_RADIX_COUNT_SHIFT, align 8
  %141 = shl i64 %139, %140
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 @radix_tree_replace_slot(i32* %136, i8** %137, i8* %142)
  br label %165

144:                                              ; preds = %113
  %145 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %146 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %145, i32 0, i32 1
  %147 = load i32, i32* %15, align 4
  %148 = load i64, i64* @R5C_RADIX_COUNT_SHIFT, align 8
  %149 = trunc i64 %148 to i32
  %150 = shl i32 1, %149
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 @radix_tree_insert(i32* %146, i32 %147, i8* %152)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %144
  %157 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %158 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %157, i32 0, i32 0
  %159 = call i32 @spin_unlock(i32* %158)
  %160 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %161 = call i32 @r5c_make_stripe_write_out(%struct.stripe_head* %160)
  %162 = load i32, i32* @EAGAIN, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %222

164:                                              ; preds = %144
  br label %165

165:                                              ; preds = %164, %128
  %166 = load %struct.r5l_log*, %struct.r5l_log** %10, align 8
  %167 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %166, i32 0, i32 0
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load i32, i32* @STRIPE_R5C_PARTIAL_STRIPE, align 4
  %170 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %171 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %170, i32 0, i32 0
  %172 = call i32 @set_bit(i32 %169, i32* %171)
  %173 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  %174 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %173, i32 0, i32 0
  %175 = call i32 @atomic_inc(i32* %174)
  br label %176

176:                                              ; preds = %165, %107, %101
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %208, %176
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %11, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %209

182:                                              ; preds = %178
  %183 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %184 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %183, i32 0, i32 1
  %185 = load %struct.r5dev*, %struct.r5dev** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %185, i64 %187
  store %struct.r5dev* %188, %struct.r5dev** %12, align 8
  %189 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %190 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %182
  %194 = load i32, i32* @R5_Wantwrite, align 4
  %195 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %196 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %195, i32 0, i32 0
  %197 = call i32 @set_bit(i32 %194, i32* %196)
  %198 = load i32, i32* @R5_Wantdrain, align 4
  %199 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %200 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %199, i32 0, i32 0
  %201 = call i32 @set_bit(i32 %198, i32* %200)
  %202 = load i32, i32* @R5_LOCKED, align 4
  %203 = load %struct.r5dev*, %struct.r5dev** %12, align 8
  %204 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %203, i32 0, i32 0
  %205 = call i32 @set_bit(i32 %202, i32* %204)
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %193, %182
  br label %178

209:                                              ; preds = %178
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209
  %213 = load i32, i32* @STRIPE_OP_BIODRAIN, align 4
  %214 = load %struct.stripe_head_state*, %struct.stripe_head_state** %8, align 8
  %215 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %214, i32 0, i32 2
  %216 = call i32 @set_bit(i32 %213, i32* %215)
  %217 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %218 = load %struct.stripe_head*, %struct.stripe_head** %7, align 8
  %219 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %218, i32 0, i32 0
  %220 = call i32 @set_bit(i32 %217, i32* %219)
  br label %221

221:                                              ; preds = %212, %209
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %221, %156, %95, %61, %42
  %223 = load i32, i32* %5, align 4
  ret i32 %223
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @r5c_is_writeback(%struct.r5l_log*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @r5c_make_stripe_write_out(%struct.stripe_head*) #1

declare dso_local i32 @r5c_tree_index(%struct.r5conf*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8** @radix_tree_lookup_slot(i32*, i32) #1

declare dso_local i64 @radix_tree_deref_slot_protected(i8**, i32*) #1

declare dso_local i32 @radix_tree_replace_slot(i32*, i8**, i8*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
