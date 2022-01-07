; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_cached_dev_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_cached_dev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.search = type { %struct.TYPE_9__, %struct.bio*, %struct.TYPE_6__, %struct.closure }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__*, %struct.bio*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.bio = type { i32, i8*, %struct.closure*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.bio }
%struct.closure = type { i32 }
%struct.bkey = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@backing_request_endio = common dso_local global i8* null, align 8
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@bch_data_insert = common dso_local global i32 0, align 4
@cached_dev_write_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cached_dev*, %struct.search*)* @cached_dev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cached_dev_write(%struct.cached_dev* %0, %struct.search* %1) #0 {
  %3 = alloca %struct.cached_dev*, align 8
  %4 = alloca %struct.search*, align 8
  %5 = alloca %struct.closure*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bkey, align 4
  %8 = alloca %struct.bkey, align 4
  %9 = alloca %struct.bio*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %3, align 8
  store %struct.search* %1, %struct.search** %4, align 8
  %10 = load %struct.search*, %struct.search** %4, align 8
  %11 = getelementptr inbounds %struct.search, %struct.search* %10, i32 0, i32 3
  store %struct.closure* %11, %struct.closure** %5, align 8
  %12 = load %struct.search*, %struct.search** %4, align 8
  %13 = getelementptr inbounds %struct.search, %struct.search* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store %struct.bio* %14, %struct.bio** %6, align 8
  %15 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @KEY(i32 %18, i32 %22, i32 0)
  %24 = getelementptr inbounds %struct.bkey, %struct.bkey* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %26 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bio*, %struct.bio** %6, align 8
  %30 = call i32 @bio_end_sector(%struct.bio* %29)
  %31 = call i32 @KEY(i32 %28, i32 %30, i32 0)
  %32 = getelementptr inbounds %struct.bkey, %struct.bkey* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.search*, %struct.search** %4, align 8
  %34 = getelementptr inbounds %struct.search, %struct.search* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call i64 @bch_keybuf_check_overlapping(i32* %37, %struct.bkey* %7, %struct.bkey* %8)
  %39 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %40 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %39, i32 0, i32 3
  %41 = call i32 @down_read_non_owner(i32* %40)
  %42 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %43 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %42, i32 0, i32 2
  %44 = call i64 @bch_keybuf_check_overlapping(i32* %43, %struct.bkey* %7, %struct.bkey* %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = load %struct.search*, %struct.search** %4, align 8
  %48 = getelementptr inbounds %struct.search, %struct.search* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.search*, %struct.search** %4, align 8
  %51 = getelementptr inbounds %struct.search, %struct.search* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %2
  %54 = load %struct.bio*, %struct.bio** %6, align 8
  %55 = call i64 @bio_op(%struct.bio* %54)
  %56 = load i64, i64* @REQ_OP_DISCARD, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.search*, %struct.search** %4, align 8
  %60 = getelementptr inbounds %struct.search, %struct.search* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %64 = load %struct.search*, %struct.search** %4, align 8
  %65 = getelementptr inbounds %struct.search, %struct.search* %64, i32 0, i32 1
  %66 = load %struct.bio*, %struct.bio** %65, align 8
  %67 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %68 = call i32 @cache_mode(%struct.cached_dev* %67)
  %69 = load %struct.search*, %struct.search** %4, align 8
  %70 = getelementptr inbounds %struct.search, %struct.search* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @should_writeback(%struct.cached_dev* %63, %struct.bio* %66, i32 %68, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %62
  %76 = load %struct.search*, %struct.search** %4, align 8
  %77 = getelementptr inbounds %struct.search, %struct.search* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.search*, %struct.search** %4, align 8
  %80 = getelementptr inbounds %struct.search, %struct.search* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %62
  %83 = load %struct.search*, %struct.search** %4, align 8
  %84 = getelementptr inbounds %struct.search, %struct.search* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %123

88:                                               ; preds = %82
  %89 = load %struct.search*, %struct.search** %4, align 8
  %90 = getelementptr inbounds %struct.search, %struct.search* %89, i32 0, i32 1
  %91 = load %struct.bio*, %struct.bio** %90, align 8
  %92 = load %struct.search*, %struct.search** %4, align 8
  %93 = getelementptr inbounds %struct.search, %struct.search* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  store %struct.bio* %91, %struct.bio** %94, align 8
  %95 = load %struct.search*, %struct.search** %4, align 8
  %96 = getelementptr inbounds %struct.search, %struct.search* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 4
  %98 = load %struct.bio*, %struct.bio** %97, align 8
  %99 = call i32 @bio_get(%struct.bio* %98)
  %100 = load %struct.bio*, %struct.bio** %6, align 8
  %101 = call i64 @bio_op(%struct.bio* %100)
  %102 = load i64, i64* @REQ_OP_DISCARD, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %88
  %105 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %106 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @bdev_get_queue(i32 %107)
  %109 = call i32 @blk_queue_discard(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  br label %200

112:                                              ; preds = %104, %88
  %113 = load i8*, i8** @backing_request_endio, align 8
  %114 = load %struct.bio*, %struct.bio** %6, align 8
  %115 = getelementptr inbounds %struct.bio, %struct.bio* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.search*, %struct.search** %4, align 8
  %117 = getelementptr inbounds %struct.search, %struct.search* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load %struct.bio*, %struct.bio** %6, align 8
  %121 = load %struct.closure*, %struct.closure** %5, align 8
  %122 = call i32 @closure_bio_submit(%struct.TYPE_10__* %119, %struct.bio* %120, %struct.closure* %121)
  br label %199

123:                                              ; preds = %82
  %124 = load %struct.search*, %struct.search** %4, align 8
  %125 = getelementptr inbounds %struct.search, %struct.search* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %178

129:                                              ; preds = %123
  %130 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %131 = call i32 @bch_writeback_add(%struct.cached_dev* %130)
  %132 = load %struct.bio*, %struct.bio** %6, align 8
  %133 = load %struct.search*, %struct.search** %4, align 8
  %134 = getelementptr inbounds %struct.search, %struct.search* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  store %struct.bio* %132, %struct.bio** %135, align 8
  %136 = load %struct.bio*, %struct.bio** %6, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @REQ_PREFLUSH, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %129
  %143 = load i32, i32* @GFP_NOIO, align 4
  %144 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %145 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = call %struct.bio* @bio_alloc_bioset(i32 %143, i32 0, i32* %146)
  store %struct.bio* %147, %struct.bio** %9, align 8
  %148 = load %struct.bio*, %struct.bio** %9, align 8
  %149 = icmp ne %struct.bio* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* @BLK_STS_RESOURCE, align 4
  %152 = load %struct.search*, %struct.search** %4, align 8
  %153 = getelementptr inbounds %struct.search, %struct.search* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 5
  store i32 %151, i32* %154, align 8
  br label %200

155:                                              ; preds = %142
  %156 = load %struct.bio*, %struct.bio** %9, align 8
  %157 = load %struct.bio*, %struct.bio** %6, align 8
  %158 = call i32 @bio_copy_dev(%struct.bio* %156, %struct.bio* %157)
  %159 = load i8*, i8** @backing_request_endio, align 8
  %160 = load %struct.bio*, %struct.bio** %9, align 8
  %161 = getelementptr inbounds %struct.bio, %struct.bio* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.closure*, %struct.closure** %5, align 8
  %163 = load %struct.bio*, %struct.bio** %9, align 8
  %164 = getelementptr inbounds %struct.bio, %struct.bio* %163, i32 0, i32 2
  store %struct.closure* %162, %struct.closure** %164, align 8
  %165 = load i32, i32* @REQ_OP_WRITE, align 4
  %166 = load i32, i32* @REQ_PREFLUSH, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.bio*, %struct.bio** %9, align 8
  %169 = getelementptr inbounds %struct.bio, %struct.bio* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.search*, %struct.search** %4, align 8
  %171 = getelementptr inbounds %struct.search, %struct.search* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = load %struct.bio*, %struct.bio** %9, align 8
  %175 = load %struct.closure*, %struct.closure** %5, align 8
  %176 = call i32 @closure_bio_submit(%struct.TYPE_10__* %173, %struct.bio* %174, %struct.closure* %175)
  br label %177

177:                                              ; preds = %155, %129
  br label %198

178:                                              ; preds = %123
  %179 = load %struct.bio*, %struct.bio** %6, align 8
  %180 = load i32, i32* @GFP_NOIO, align 4
  %181 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %182 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = call %struct.bio* @bio_clone_fast(%struct.bio* %179, i32 %180, i32* %183)
  %185 = load %struct.search*, %struct.search** %4, align 8
  %186 = getelementptr inbounds %struct.search, %struct.search* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  store %struct.bio* %184, %struct.bio** %187, align 8
  %188 = load i8*, i8** @backing_request_endio, align 8
  %189 = load %struct.bio*, %struct.bio** %6, align 8
  %190 = getelementptr inbounds %struct.bio, %struct.bio* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load %struct.search*, %struct.search** %4, align 8
  %192 = getelementptr inbounds %struct.search, %struct.search* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = load %struct.bio*, %struct.bio** %6, align 8
  %196 = load %struct.closure*, %struct.closure** %5, align 8
  %197 = call i32 @closure_bio_submit(%struct.TYPE_10__* %194, %struct.bio* %195, %struct.closure* %196)
  br label %198

198:                                              ; preds = %178, %177
  br label %199

199:                                              ; preds = %198, %112
  br label %200

200:                                              ; preds = %199, %150, %111
  %201 = load %struct.search*, %struct.search** %4, align 8
  %202 = getelementptr inbounds %struct.search, %struct.search* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i32, i32* @bch_data_insert, align 4
  %205 = load %struct.closure*, %struct.closure** %5, align 8
  %206 = call i32 @closure_call(i32* %203, i32 %204, i32* null, %struct.closure* %205)
  %207 = load %struct.closure*, %struct.closure** %5, align 8
  %208 = load i32, i32* @cached_dev_write_complete, align 4
  %209 = call i32 @continue_at(%struct.closure* %207, i32 %208, i32* null)
  ret void
}

declare dso_local i32 @KEY(i32, i32, i32) #1

declare dso_local i32 @bio_end_sector(%struct.bio*) #1

declare dso_local i64 @bch_keybuf_check_overlapping(i32*, %struct.bkey*, %struct.bkey*) #1

declare dso_local i32 @down_read_non_owner(i32*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @should_writeback(%struct.cached_dev*, %struct.bio*, i32, i32) #1

declare dso_local i32 @cache_mode(%struct.cached_dev*) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @blk_queue_discard(i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @closure_bio_submit(%struct.TYPE_10__*, %struct.bio*, %struct.closure*) #1

declare dso_local i32 @bch_writeback_add(%struct.cached_dev*) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32*) #1

declare dso_local i32 @bio_copy_dev(%struct.bio*, %struct.bio*) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, i32*) #1

declare dso_local i32 @closure_call(i32*, i32, i32*, %struct.closure*) #1

declare dso_local i32 @continue_at(%struct.closure*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
