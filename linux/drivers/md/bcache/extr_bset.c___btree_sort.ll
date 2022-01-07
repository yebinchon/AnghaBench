; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c___btree_sort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c___btree_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.btree_iter = type { i32 }
%struct.bset_sort_state = type { i32, i32, i32 }
%struct.bset = type { i64, i32, i32, i32, i32 }
%struct.page = type { i32 }

@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_keys*, %struct.btree_iter*, i32, i32, i32, %struct.bset_sort_state*)* @__btree_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__btree_sort(%struct.btree_keys* %0, %struct.btree_iter* %1, i32 %2, i32 %3, i32 %4, %struct.bset_sort_state* %5) #0 {
  %7 = alloca %struct.btree_keys*, align 8
  %8 = alloca %struct.btree_iter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bset_sort_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bset*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %7, align 8
  store %struct.btree_iter* %1, %struct.btree_iter** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bset_sort_state* %5, %struct.bset_sort_state** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @__GFP_NOWARN, align 4
  %18 = load i32, i32* @GFP_NOWAIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @__get_free_pages(i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.bset*
  store %struct.bset* %23, %struct.bset** %15, align 8
  %24 = load %struct.bset*, %struct.bset** %15, align 8
  %25 = icmp ne %struct.bset* %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.bset_sort_state*, %struct.bset_sort_state** %12, align 8
  %29 = getelementptr inbounds %struct.bset_sort_state, %struct.bset_sort_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ugt i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.bset_sort_state*, %struct.bset_sort_state** %12, align 8
  %35 = getelementptr inbounds %struct.bset_sort_state, %struct.bset_sort_state* %34, i32 0, i32 2
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = call %struct.page* @mempool_alloc(i32* %35, i32 %36)
  store %struct.page* %37, %struct.page** %16, align 8
  %38 = load %struct.page*, %struct.page** %16, align 8
  %39 = call %struct.bset* @page_address(%struct.page* %38)
  store %struct.bset* %39, %struct.bset** %15, align 8
  store i32 1, i32* %14, align 4
  %40 = load %struct.bset_sort_state*, %struct.bset_sort_state** %12, align 8
  %41 = getelementptr inbounds %struct.bset_sort_state, %struct.bset_sort_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %26, %6
  %44 = call i32 (...) @local_clock()
  store i32 %44, i32* %13, align 4
  %45 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %46 = load %struct.bset*, %struct.bset** %15, align 8
  %47 = load %struct.btree_iter*, %struct.btree_iter** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @btree_mergesort(%struct.btree_keys* %45, %struct.bset* %46, %struct.btree_iter* %47, i32 %48, i32 0)
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %52 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %58 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %55
  %62 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %63 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bset*, %struct.bset** %15, align 8
  %70 = getelementptr inbounds %struct.bset, %struct.bset* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %72 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bset*, %struct.bset** %15, align 8
  %79 = getelementptr inbounds %struct.bset, %struct.bset* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %81 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bset*, %struct.bset** %15, align 8
  %88 = getelementptr inbounds %struct.bset, %struct.bset* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bset*, %struct.bset** %15, align 8
  %90 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %91 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @swap(%struct.bset* %89, %struct.TYPE_4__* %94)
  br label %134

96:                                               ; preds = %55, %43
  %97 = load %struct.bset*, %struct.bset** %15, align 8
  %98 = getelementptr inbounds %struct.bset, %struct.bset* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %101 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  store i32 %99, i32* %108, align 4
  %109 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %110 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bset*, %struct.bset** %15, align 8
  %120 = getelementptr inbounds %struct.bset, %struct.bset* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.bset*, %struct.bset** %15, align 8
  %123 = call i64 @bset_bkey_last(%struct.bset* %122)
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.bset*, %struct.bset** %15, align 8
  %126 = getelementptr inbounds %struct.bset, %struct.bset* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = ptrtoint i8* %124 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memcpy(i32 %118, i64 %121, i32 %132)
  br label %134

134:                                              ; preds = %96, %61
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.bset*, %struct.bset** %15, align 8
  %139 = call i32 @virt_to_page(%struct.bset* %138)
  %140 = load %struct.bset_sort_state*, %struct.bset_sort_state** %12, align 8
  %141 = getelementptr inbounds %struct.bset_sort_state, %struct.bset_sort_state* %140, i32 0, i32 2
  %142 = call i32 @mempool_free(i32 %139, i32* %141)
  br label %148

143:                                              ; preds = %134
  %144 = load %struct.bset*, %struct.bset** %15, align 8
  %145 = ptrtoint %struct.bset* %144 to i64
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @free_pages(i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %137
  %149 = load %struct.btree_keys*, %struct.btree_keys** %7, align 8
  %150 = call i32 @bch_bset_build_written_tree(%struct.btree_keys* %149)
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load %struct.bset_sort_state*, %struct.bset_sort_state** %12, align 8
  %155 = getelementptr inbounds %struct.bset_sort_state, %struct.bset_sort_state* %154, i32 0, i32 1
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @bch_time_stats_update(i32* %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %148
  ret void
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @mempool_alloc(i32*, i32) #1

declare dso_local %struct.bset* @page_address(%struct.page*) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @btree_mergesort(%struct.btree_keys*, %struct.bset*, %struct.btree_iter*, i32, i32) #1

declare dso_local i32 @swap(%struct.bset*, %struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i64 @bset_bkey_last(%struct.bset*) #1

declare dso_local i32 @mempool_free(i32, i32*) #1

declare dso_local i32 @virt_to_page(%struct.bset*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @bch_bset_build_written_tree(%struct.btree_keys*) #1

declare dso_local i32 @bch_time_stats_update(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
