; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_prio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_prio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i64*, i32*, %struct.bucket*, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.prio_set*, i32 }
%struct.bucket = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.prio_set = type { i64, i32, i32, %struct.bucket_disk*, i32 }
%struct.bucket_disk = type { i32, i32 }
%struct.closure = type { i32 }

@RESERVE_PRIO = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_prio_write(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bucket*, align 8
  %5 = alloca %struct.closure, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.prio_set*, align 8
  %8 = alloca %struct.bucket_disk*, align 8
  %9 = alloca %struct.bucket_disk*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %10 = call i32 @closure_init_stack(%struct.closure* %5)
  %11 = load %struct.cache*, %struct.cache** %2, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.cache*, %struct.cache** %2, align 8
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 5
  %18 = load %struct.prio_set*, %struct.prio_set** %17, align 8
  %19 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.cache*, %struct.cache** %2, align 8
  %23 = getelementptr inbounds %struct.cache, %struct.cache* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cache*, %struct.cache** %2, align 8
  %27 = call i32 @prio_buckets(%struct.cache* %26)
  %28 = mul nsw i32 %25, %27
  %29 = load %struct.cache*, %struct.cache** %2, align 8
  %30 = getelementptr inbounds %struct.cache, %struct.cache* %29, i32 0, i32 6
  %31 = call i32 @atomic_long_add(i32 %28, i32* %30)
  %32 = load %struct.cache*, %struct.cache** %2, align 8
  %33 = call i32 @prio_buckets(%struct.cache* %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %153, %1
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %156

38:                                               ; preds = %35
  %39 = load %struct.cache*, %struct.cache** %2, align 8
  %40 = getelementptr inbounds %struct.cache, %struct.cache* %39, i32 0, i32 5
  %41 = load %struct.prio_set*, %struct.prio_set** %40, align 8
  store %struct.prio_set* %41, %struct.prio_set** %7, align 8
  %42 = load %struct.prio_set*, %struct.prio_set** %7, align 8
  %43 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %42, i32 0, i32 3
  %44 = load %struct.bucket_disk*, %struct.bucket_disk** %43, align 8
  store %struct.bucket_disk* %44, %struct.bucket_disk** %8, align 8
  %45 = load %struct.bucket_disk*, %struct.bucket_disk** %8, align 8
  %46 = load %struct.cache*, %struct.cache** %2, align 8
  %47 = call i32 @prios_per_bucket(%struct.cache* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %45, i64 %48
  store %struct.bucket_disk* %49, %struct.bucket_disk** %9, align 8
  %50 = load %struct.cache*, %struct.cache** %2, align 8
  %51 = getelementptr inbounds %struct.cache, %struct.cache* %50, i32 0, i32 2
  %52 = load %struct.bucket*, %struct.bucket** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.cache*, %struct.cache** %2, align 8
  %55 = call i32 @prios_per_bucket(%struct.cache* %54)
  %56 = mul nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bucket, %struct.bucket* %52, i64 %57
  store %struct.bucket* %58, %struct.bucket** %4, align 8
  br label %59

59:                                               ; preds = %89, %38
  %60 = load %struct.bucket*, %struct.bucket** %4, align 8
  %61 = load %struct.cache*, %struct.cache** %2, align 8
  %62 = getelementptr inbounds %struct.cache, %struct.cache* %61, i32 0, i32 2
  %63 = load %struct.bucket*, %struct.bucket** %62, align 8
  %64 = load %struct.cache*, %struct.cache** %2, align 8
  %65 = getelementptr inbounds %struct.cache, %struct.cache* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.bucket, %struct.bucket* %63, i64 %68
  %70 = icmp ult %struct.bucket* %60, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.bucket_disk*, %struct.bucket_disk** %8, align 8
  %73 = load %struct.bucket_disk*, %struct.bucket_disk** %9, align 8
  %74 = icmp ult %struct.bucket_disk* %72, %73
  br label %75

75:                                               ; preds = %71, %59
  %76 = phi i1 [ false, %59 ], [ %74, %71 ]
  br i1 %76, label %77, label %94

77:                                               ; preds = %75
  %78 = load %struct.bucket*, %struct.bucket** %4, align 8
  %79 = getelementptr inbounds %struct.bucket, %struct.bucket* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpu_to_le16(i32 %80)
  %82 = load %struct.bucket_disk*, %struct.bucket_disk** %8, align 8
  %83 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bucket*, %struct.bucket** %4, align 8
  %85 = getelementptr inbounds %struct.bucket, %struct.bucket* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bucket_disk*, %struct.bucket_disk** %8, align 8
  %88 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %77
  %90 = load %struct.bucket*, %struct.bucket** %4, align 8
  %91 = getelementptr inbounds %struct.bucket, %struct.bucket* %90, i32 1
  store %struct.bucket* %91, %struct.bucket** %4, align 8
  %92 = load %struct.bucket_disk*, %struct.bucket_disk** %8, align 8
  %93 = getelementptr inbounds %struct.bucket_disk, %struct.bucket_disk* %92, i32 1
  store %struct.bucket_disk* %93, %struct.bucket_disk** %8, align 8
  br label %59

94:                                               ; preds = %75
  %95 = load %struct.cache*, %struct.cache** %2, align 8
  %96 = getelementptr inbounds %struct.cache, %struct.cache* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.prio_set*, %struct.prio_set** %7, align 8
  %104 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.cache*, %struct.cache** %2, align 8
  %106 = getelementptr inbounds %struct.cache, %struct.cache* %105, i32 0, i32 4
  %107 = call i32 @pset_magic(%struct.TYPE_3__* %106)
  %108 = load %struct.prio_set*, %struct.prio_set** %7, align 8
  %109 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.prio_set*, %struct.prio_set** %7, align 8
  %111 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %110, i32 0, i32 1
  %112 = load %struct.cache*, %struct.cache** %2, align 8
  %113 = call i64 @bucket_bytes(%struct.cache* %112)
  %114 = sub nsw i64 %113, 8
  %115 = call i32 @bch_crc64(i32* %111, i64 %114)
  %116 = load %struct.prio_set*, %struct.prio_set** %7, align 8
  %117 = getelementptr inbounds %struct.prio_set, %struct.prio_set* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.cache*, %struct.cache** %2, align 8
  %119 = load i32, i32* @RESERVE_PRIO, align 4
  %120 = call i64 @bch_bucket_alloc(%struct.cache* %118, i32 %119, i32 1)
  store i64 %120, i64* %6, align 8
  %121 = load i64, i64* %6, align 8
  %122 = icmp eq i64 %121, -1
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load %struct.cache*, %struct.cache** %2, align 8
  %126 = getelementptr inbounds %struct.cache, %struct.cache* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = call i32 @mutex_unlock(i32* %128)
  %130 = load %struct.cache*, %struct.cache** %2, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load i32, i32* @REQ_OP_WRITE, align 4
  %133 = call i32 @prio_io(%struct.cache* %130, i64 %131, i32 %132, i32 0)
  %134 = load %struct.cache*, %struct.cache** %2, align 8
  %135 = getelementptr inbounds %struct.cache, %struct.cache* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = call i32 @mutex_lock(i32* %137)
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.cache*, %struct.cache** %2, align 8
  %141 = getelementptr inbounds %struct.cache, %struct.cache* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 %139, i64* %145, align 8
  %146 = load %struct.cache*, %struct.cache** %2, align 8
  %147 = getelementptr inbounds %struct.cache, %struct.cache* %146, i32 0, i32 2
  %148 = load %struct.bucket*, %struct.bucket** %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.bucket, %struct.bucket* %148, i64 %149
  %151 = getelementptr inbounds %struct.bucket, %struct.bucket* %150, i32 0, i32 0
  %152 = call i32 @atomic_dec_bug(i32* %151)
  br label %153

153:                                              ; preds = %94
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %3, align 4
  br label %35

156:                                              ; preds = %35
  %157 = load %struct.cache*, %struct.cache** %2, align 8
  %158 = getelementptr inbounds %struct.cache, %struct.cache* %157, i32 0, i32 3
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load %struct.cache*, %struct.cache** %2, align 8
  %163 = getelementptr inbounds %struct.cache, %struct.cache* %162, i32 0, i32 3
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = call i32 @bch_journal_meta(%struct.TYPE_4__* %164, %struct.closure* %5)
  %166 = call i32 @closure_sync(%struct.closure* %5)
  %167 = load %struct.cache*, %struct.cache** %2, align 8
  %168 = getelementptr inbounds %struct.cache, %struct.cache* %167, i32 0, i32 3
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = call i32 @mutex_lock(i32* %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %216, %156
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.cache*, %struct.cache** %2, align 8
  %175 = call i32 @prio_buckets(%struct.cache* %174)
  %176 = icmp slt i32 %173, %175
  br i1 %176, label %177, label %219

177:                                              ; preds = %172
  %178 = load %struct.cache*, %struct.cache** %2, align 8
  %179 = getelementptr inbounds %struct.cache, %struct.cache* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %177
  %187 = load %struct.cache*, %struct.cache** %2, align 8
  %188 = load %struct.cache*, %struct.cache** %2, align 8
  %189 = getelementptr inbounds %struct.cache, %struct.cache* %188, i32 0, i32 2
  %190 = load %struct.bucket*, %struct.bucket** %189, align 8
  %191 = load %struct.cache*, %struct.cache** %2, align 8
  %192 = getelementptr inbounds %struct.cache, %struct.cache* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.bucket, %struct.bucket* %190, i64 %198
  %200 = call i32 @__bch_bucket_free(%struct.cache* %187, %struct.bucket* %199)
  br label %201

201:                                              ; preds = %186, %177
  %202 = load %struct.cache*, %struct.cache** %2, align 8
  %203 = getelementptr inbounds %struct.cache, %struct.cache* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = load %struct.cache*, %struct.cache** %2, align 8
  %211 = getelementptr inbounds %struct.cache, %struct.cache* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %3, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %209, i32* %215, align 4
  br label %216

216:                                              ; preds = %201
  %217 = load i32, i32* %3, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %3, align 4
  br label %172

219:                                              ; preds = %172
  ret void
}

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @prio_buckets(%struct.cache*) #1

declare dso_local i32 @prios_per_bucket(%struct.cache*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pset_magic(%struct.TYPE_3__*) #1

declare dso_local i32 @bch_crc64(i32*, i64) #1

declare dso_local i64 @bucket_bytes(%struct.cache*) #1

declare dso_local i64 @bch_bucket_alloc(%struct.cache*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @prio_io(%struct.cache*, i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_dec_bug(i32*) #1

declare dso_local i32 @bch_journal_meta(%struct.TYPE_4__*, %struct.closure*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @__bch_bucket_free(%struct.cache*, %struct.bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
