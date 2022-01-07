; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-cache.c_pblk_write_gc_to_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-cache.c_pblk_write_gc_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32, i32 }
%struct.pblk_gc_rq = type { i32, i32, i64*, i32*, i32, i8* }
%struct.pblk_w_ctx = type { i64, i32, i32 }

@PBLK_IOTYPE_GC = common dso_local global i32 0, align 4
@ADDR_EMPTY = common dso_local global i64 0, align 8
@PBLK_EXPOSED_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pblk: inconsistent GC write\0A\00", align 1
@NVM_IO_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_write_gc_to_cache(%struct.pblk* %0, %struct.pblk_gc_rq* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_gc_rq*, align 8
  %5 = alloca %struct.pblk_w_ctx, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.pblk_gc_rq* %1, %struct.pblk_gc_rq** %4, align 8
  %11 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %12 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %11, i32 0, i32 5
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  br label %14

14:                                               ; preds = %22, %2
  %15 = load %struct.pblk*, %struct.pblk** %3, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 3
  %17 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %18 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pblk_rb_may_write_gc(i32* %16, i32 %19, i32* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = call i32 (...) @io_schedule()
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* @PBLK_IOTYPE_GC, align 4
  %26 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %5, i32 0, i32 1
  %28 = call i32 @pblk_ppa_set_empty(i32* %27)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %87, %24
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %32 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %29
  %36 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %37 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ADDR_EMPTY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %87

46:                                               ; preds = %35
  %47 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %48 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %5, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.pblk*, %struct.pblk** %3, align 8
  %56 = getelementptr inbounds %struct.pblk, %struct.pblk* %55, i32 0, i32 3
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %57, %58
  %60 = call i32 @pblk_rb_wrap_pos(i32* %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.pblk*, %struct.pblk** %3, align 8
  %62 = getelementptr inbounds %struct.pblk, %struct.pblk* %61, i32 0, i32 3
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %65 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %68 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = bitcast %struct.pblk_w_ctx* %5 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @pblk_rb_write_entry_gc(i32* %62, i8* %63, i64 %77, i64 %79, i32 %66, i32 %73, i32 %74)
  %81 = load i32, i32* @PBLK_EXPOSED_PAGE_SIZE, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr i8, i8* %82, i64 %83
  store i8* %84, i8** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %46, %45
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %29

90:                                               ; preds = %29
  %91 = load %struct.pblk_gc_rq*, %struct.pblk_gc_rq** %4, align 8
  %92 = getelementptr inbounds %struct.pblk_gc_rq, %struct.pblk_gc_rq* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @WARN_ONCE(i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.pblk*, %struct.pblk** %3, align 8
  %100 = getelementptr inbounds %struct.pblk, %struct.pblk* %99, i32 0, i32 2
  %101 = call i32 @atomic64_add(i32 %98, i32* %100)
  %102 = load %struct.pblk*, %struct.pblk** %3, align 8
  %103 = call i32 @pblk_write_should_kick(%struct.pblk* %102)
  %104 = load i32, i32* @NVM_IO_OK, align 4
  ret i32 %104
}

declare dso_local i32 @pblk_rb_may_write_gc(i32*, i32, i32*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @pblk_ppa_set_empty(i32*) #1

declare dso_local i32 @pblk_rb_wrap_pos(i32*, i32) #1

declare dso_local i32 @pblk_rb_write_entry_gc(i32*, i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @pblk_write_should_kick(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
