; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_map_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }
%struct.policy_work = type { i64 }
%struct.per_bio_data = type { i64 }

@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%s: policy_lookup_with_work() failed with r = %d\00", align 1
@POLICY_PROMOTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: policy_lookup() failed with r = %d\00", align 1
@WRITE = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.bio*, i32, i32*)* @map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_bio(%struct.cache* %0, %struct.bio* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.policy_work*, align 8
  %16 = alloca %struct.per_bio_data*, align 8
  store %struct.cache* %0, %struct.cache** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.cache*, %struct.cache** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.bio*, %struct.bio** %7, align 8
  %21 = call i32 @bio_detain_shared(%struct.cache* %18, i32 %19, %struct.bio* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32*, i32** %9, align 8
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %26, i32* %5, align 4
  br label %230

27:                                               ; preds = %4
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = call i32 @bio_data_dir(%struct.bio* %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.cache*, %struct.cache** %6, align 8
  %31 = load %struct.bio*, %struct.bio** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @optimisable_bio(%struct.cache* %30, %struct.bio* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %27
  store %struct.policy_work* null, %struct.policy_work** %15, align 8
  %36 = load %struct.cache*, %struct.cache** %6, align 8
  %37 = getelementptr inbounds %struct.cache, %struct.cache* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @policy_lookup_with_work(i32 %38, i32 %39, i32* %14, i32 %40, i32 1, %struct.policy_work** %15)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br label %49

49:                                               ; preds = %44, %35
  %50 = phi i1 [ false, %35 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.cache*, %struct.cache** %6, align 8
  %56 = call i32 @cache_device_name(%struct.cache* %55)
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.bio*, %struct.bio** %7, align 8
  %60 = call i32 @bio_io_error(%struct.bio* %59)
  %61 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %61, i32* %5, align 4
  br label %230

62:                                               ; preds = %49
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.policy_work*, %struct.policy_work** %15, align 8
  %69 = icmp ne %struct.policy_work* %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.cache*, %struct.cache** %6, align 8
  %72 = load %struct.bio*, %struct.bio** %7, align 8
  %73 = call i32 @bio_drop_shared_lock(%struct.cache* %71, %struct.bio* %72)
  %74 = load %struct.policy_work*, %struct.policy_work** %15, align 8
  %75 = getelementptr inbounds %struct.policy_work, %struct.policy_work* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @POLICY_PROMOTE, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.cache*, %struct.cache** %6, align 8
  %82 = load %struct.policy_work*, %struct.policy_work** %15, align 8
  %83 = load %struct.bio*, %struct.bio** %7, align 8
  %84 = call i32 @mg_start(%struct.cache* %81, %struct.policy_work* %82, %struct.bio* %83)
  %85 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %85, i32* %5, align 4
  br label %230

86:                                               ; preds = %67, %62
  br label %121

87:                                               ; preds = %27
  %88 = load %struct.cache*, %struct.cache** %6, align 8
  %89 = getelementptr inbounds %struct.cache, %struct.cache* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @policy_lookup(i32 %90, i32 %91, i32* %14, i32 %92, i32 0, i32* %13)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br label %101

101:                                              ; preds = %96, %87
  %102 = phi i1 [ false, %87 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.cache*, %struct.cache** %6, align 8
  %108 = call i32 @cache_device_name(%struct.cache* %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @DMERR_LIMIT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.bio*, %struct.bio** %7, align 8
  %112 = call i32 @bio_io_error(%struct.bio* %111)
  %113 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %113, i32* %5, align 4
  br label %230

114:                                              ; preds = %101
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.cache*, %struct.cache** %6, align 8
  %119 = call i32 @wake_migration_worker(%struct.cache* %118)
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %121
  %127 = load %struct.bio*, %struct.bio** %7, align 8
  %128 = call %struct.per_bio_data* @get_per_bio_data(%struct.bio* %127)
  store %struct.per_bio_data* %128, %struct.per_bio_data** %16, align 8
  %129 = load %struct.cache*, %struct.cache** %6, align 8
  %130 = load %struct.bio*, %struct.bio** %7, align 8
  %131 = call i32 @inc_miss_counter(%struct.cache* %129, %struct.bio* %130)
  %132 = load %struct.per_bio_data*, %struct.per_bio_data** %16, align 8
  %133 = getelementptr inbounds %struct.per_bio_data, %struct.per_bio_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %126
  %137 = load %struct.cache*, %struct.cache** %6, align 8
  %138 = load %struct.bio*, %struct.bio** %7, align 8
  %139 = call i32 @accounted_begin(%struct.cache* %137, %struct.bio* %138)
  %140 = load %struct.cache*, %struct.cache** %6, align 8
  %141 = load %struct.bio*, %struct.bio** %7, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @remap_to_origin_clear_discard(%struct.cache* %140, %struct.bio* %141, i32 %142)
  br label %148

144:                                              ; preds = %126
  %145 = load %struct.bio*, %struct.bio** %7, align 8
  %146 = call i32 @bio_endio(%struct.bio* %145)
  %147 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %147, i32* %5, align 4
  br label %230

148:                                              ; preds = %136
  br label %211

149:                                              ; preds = %121
  %150 = load %struct.cache*, %struct.cache** %6, align 8
  %151 = load %struct.bio*, %struct.bio** %7, align 8
  %152 = call i32 @inc_hit_counter(%struct.cache* %150, %struct.bio* %151)
  %153 = load %struct.cache*, %struct.cache** %6, align 8
  %154 = call i64 @passthrough_mode(%struct.cache* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %180

156:                                              ; preds = %149
  %157 = load %struct.bio*, %struct.bio** %7, align 8
  %158 = call i32 @bio_data_dir(%struct.bio* %157)
  %159 = load i32, i32* @WRITE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %156
  %162 = load %struct.cache*, %struct.cache** %6, align 8
  %163 = load %struct.bio*, %struct.bio** %7, align 8
  %164 = call i32 @bio_drop_shared_lock(%struct.cache* %162, %struct.bio* %163)
  %165 = load %struct.cache*, %struct.cache** %6, align 8
  %166 = getelementptr inbounds %struct.cache, %struct.cache* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = call i32 @atomic_inc(i32* %167)
  %169 = load %struct.cache*, %struct.cache** %6, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.bio*, %struct.bio** %7, align 8
  %173 = call i32 @invalidate_start(%struct.cache* %169, i32 %170, i32 %171, %struct.bio* %172)
  br label %179

174:                                              ; preds = %156
  %175 = load %struct.cache*, %struct.cache** %6, align 8
  %176 = load %struct.bio*, %struct.bio** %7, align 8
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @remap_to_origin_clear_discard(%struct.cache* %175, %struct.bio* %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %161
  br label %210

180:                                              ; preds = %149
  %181 = load %struct.bio*, %struct.bio** %7, align 8
  %182 = call i32 @bio_data_dir(%struct.bio* %181)
  %183 = load i32, i32* @WRITE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %180
  %186 = load %struct.cache*, %struct.cache** %6, align 8
  %187 = call i64 @writethrough_mode(%struct.cache* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load %struct.cache*, %struct.cache** %6, align 8
  %191 = load i32, i32* %14, align 4
  %192 = call i32 @is_dirty(%struct.cache* %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %189
  %195 = load %struct.cache*, %struct.cache** %6, align 8
  %196 = load %struct.bio*, %struct.bio** %7, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @remap_to_origin_and_cache(%struct.cache* %195, %struct.bio* %196, i32 %197, i32 %198)
  %200 = load %struct.cache*, %struct.cache** %6, align 8
  %201 = load %struct.bio*, %struct.bio** %7, align 8
  %202 = call i32 @accounted_begin(%struct.cache* %200, %struct.bio* %201)
  br label %209

203:                                              ; preds = %189, %185, %180
  %204 = load %struct.cache*, %struct.cache** %6, align 8
  %205 = load %struct.bio*, %struct.bio** %7, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @remap_to_cache_dirty(%struct.cache* %204, %struct.bio* %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %203, %194
  br label %210

210:                                              ; preds = %209, %179
  br label %211

211:                                              ; preds = %210, %148
  %212 = load %struct.bio*, %struct.bio** %7, align 8
  %213 = getelementptr inbounds %struct.bio, %struct.bio* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @REQ_FUA, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %211
  %219 = load %struct.cache*, %struct.cache** %6, align 8
  %220 = load %struct.bio*, %struct.bio** %7, align 8
  %221 = call i32 @accounted_complete(%struct.cache* %219, %struct.bio* %220)
  %222 = load %struct.cache*, %struct.cache** %6, align 8
  %223 = getelementptr inbounds %struct.cache, %struct.cache* %222, i32 0, i32 0
  %224 = load %struct.bio*, %struct.bio** %7, align 8
  %225 = call i32 @issue_after_commit(i32* %223, %struct.bio* %224)
  %226 = load i32*, i32** %9, align 8
  store i32 1, i32* %226, align 4
  %227 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %227, i32* %5, align 4
  br label %230

228:                                              ; preds = %211
  %229 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %228, %218, %144, %106, %70, %54, %24
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @bio_detain_shared(%struct.cache*, i32, %struct.bio*) #1

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @optimisable_bio(%struct.cache*, %struct.bio*, i32) #1

declare dso_local i32 @policy_lookup_with_work(i32, i32, i32*, i32, i32, %struct.policy_work**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DMERR_LIMIT(i8*, i32, i32) #1

declare dso_local i32 @cache_device_name(%struct.cache*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @bio_drop_shared_lock(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mg_start(%struct.cache*, %struct.policy_work*, %struct.bio*) #1

declare dso_local i32 @policy_lookup(i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @wake_migration_worker(%struct.cache*) #1

declare dso_local %struct.per_bio_data* @get_per_bio_data(%struct.bio*) #1

declare dso_local i32 @inc_miss_counter(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @accounted_begin(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @remap_to_origin_clear_discard(%struct.cache*, %struct.bio*, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @inc_hit_counter(%struct.cache*, %struct.bio*) #1

declare dso_local i64 @passthrough_mode(%struct.cache*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @invalidate_start(%struct.cache*, i32, i32, %struct.bio*) #1

declare dso_local i64 @writethrough_mode(%struct.cache*) #1

declare dso_local i32 @is_dirty(%struct.cache*, i32) #1

declare dso_local i32 @remap_to_origin_and_cache(%struct.cache*, %struct.bio*, i32, i32) #1

declare dso_local i32 @remap_to_cache_dirty(%struct.cache*, %struct.bio*, i32, i32) #1

declare dso_local i32 @accounted_complete(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @issue_after_commit(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
