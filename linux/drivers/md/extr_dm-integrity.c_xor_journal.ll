; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_xor_journal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_xor_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, %struct.TYPE_2__*, %struct.page_list*, %struct.page_list* }
%struct.TYPE_2__ = type { %struct.page* }
%struct.page = type { i32 }
%struct.page_list = type { %struct.page* }
%struct.journal_completion = type { i32 }
%struct.async_submit_ctl = type { i32 }

@SECTOR_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ASYNC_TX_XOR_ZERO_DST = common dso_local global i32 0, align 4
@complete_journal_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32, i32, %struct.journal_completion*)* @xor_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xor_journal(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i32 %3, %struct.journal_completion* %4) #0 {
  %6 = alloca %struct.dm_integrity_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.journal_completion*, align 8
  %11 = alloca %struct.async_submit_ctl, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page_list*, align 8
  %17 = alloca %struct.page_list*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x %struct.page*], align 16
  %20 = alloca %struct.page*, align 8
  %21 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.journal_completion* %4, %struct.journal_completion** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %24 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul i32 %22, %25
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @SECTOR_SHIFT, align 8
  %29 = shl i64 %27, %28
  store i64 %29, i64* %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %35 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %34, i32 0, i32 2
  %36 = load %struct.page_list*, %struct.page_list** %35, align 8
  store %struct.page_list* %36, %struct.page_list** %16, align 8
  %37 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %38 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %37, i32 0, i32 3
  %39 = load %struct.page_list*, %struct.page_list** %38, align 8
  store %struct.page_list* %39, %struct.page_list** %17, align 8
  br label %47

40:                                               ; preds = %5
  %41 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %42 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %41, i32 0, i32 3
  %43 = load %struct.page_list*, %struct.page_list** %42, align 8
  store %struct.page_list* %43, %struct.page_list** %16, align 8
  %44 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %45 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %44, i32 0, i32 2
  %46 = load %struct.page_list*, %struct.page_list** %45, align 8
  store %struct.page_list* %46, %struct.page_list** %17, align 8
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @page_list_location(%struct.dm_integrity_c* %48, i32 %49, i32 0, i32* %13, i32* %14)
  %51 = load i32, i32* %14, align 4
  %52 = zext i32 %51 to i64
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = call i32 @roundup(i32 %55, i64 %56)
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  %61 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %60, i32 0, i32 0
  %62 = call i32 @atomic_add(i32 %59, i32* %61)
  %63 = load i32, i32* @ASYNC_TX_XOR_ZERO_DST, align 4
  %64 = load i32, i32* @complete_journal_op, align 4
  %65 = load %struct.journal_completion*, %struct.journal_completion** %10, align 8
  %66 = call i32 @init_async_submit(%struct.async_submit_ctl* %11, i32 %63, i32* null, i32 %64, %struct.journal_completion* %65, i32* null)
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %135, %47
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @rw_section_mac(%struct.dm_integrity_c* %81, i32 %82, i32 1)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @page_list_location(%struct.dm_integrity_c* %93, i32 %94, i32 0, i32* %15, i32* %21)
  br label %69

96:                                               ; preds = %91, %69
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = load i32, i32* %14, align 4
  %100 = zext i32 %99 to i64
  %101 = sub i64 %98, %100
  %102 = call i64 @min(i64 %97, i64 %101)
  store i64 %102, i64* %18, align 8
  %103 = load %struct.page_list*, %struct.page_list** %17, align 8
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.page_list, %struct.page_list* %103, i64 %105
  %107 = getelementptr inbounds %struct.page_list, %struct.page_list* %106, i32 0, i32 0
  %108 = load %struct.page*, %struct.page** %107, align 8
  store %struct.page* %108, %struct.page** %20, align 8
  %109 = load %struct.page_list*, %struct.page_list** %16, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.page_list, %struct.page_list* %109, i64 %111
  %113 = getelementptr inbounds %struct.page_list, %struct.page_list* %112, i32 0, i32 0
  %114 = load %struct.page*, %struct.page** %113, align 8
  %115 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  store %struct.page* %114, %struct.page** %115, align 16
  %116 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %6, align 8
  %117 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.page*, %struct.page** %122, align 8
  %124 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 1
  store %struct.page* %123, %struct.page** %124, align 8
  %125 = load %struct.page*, %struct.page** %20, align 8
  %126 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %19, i64 0, i64 0
  %127 = load i32, i32* %14, align 4
  %128 = load i64, i64* %18, align 8
  %129 = call i32 @async_xor(%struct.page* %125, %struct.page** %126, i32 %127, i32 2, i64 %128, %struct.async_submit_ctl* %11)
  %130 = load i32, i32* %13, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* %12, align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %96
  %136 = load i64, i64* %12, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %68, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @BUG_ON(i32 %139)
  %141 = call i32 (...) @async_tx_issue_pending_all()
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @page_list_location(%struct.dm_integrity_c*, i32, i32, i32*, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @roundup(i32, i64) #1

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, i32*, i32, %struct.journal_completion*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rw_section_mac(%struct.dm_integrity_c*, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @async_xor(%struct.page*, %struct.page**, i32, i32, i64, %struct.async_submit_ctl*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @async_tx_issue_pending_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
