; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_rw_journal_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_rw_journal_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.journal_completion = type { i32 }
%struct.dm_io_request = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 (i64, %struct.journal_completion*)*, %struct.journal_completion* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.dm_io_region = type { i32, i64, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DM_IO_PAGE_LIST = common dso_local global i32 0, align 4
@SB_SECTORS = common dso_local global i64 0, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"reading journal\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"writing journal\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"asynchronous dm_io failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32, i32, i32, %struct.journal_completion*)* @rw_journal_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rw_journal_sectors(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.journal_completion* %5) #0 {
  %7 = alloca %struct.dm_integrity_c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.journal_completion*, align 8
  %13 = alloca %struct.dm_io_request, align 8
  %14 = alloca %struct.dm_io_region, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.journal_completion* %5, %struct.journal_completion** %12, align 8
  %18 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %19 = call i32 @dm_integrity_failed(%struct.dm_integrity_c* %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load %struct.journal_completion*, %struct.journal_completion** %12, align 8
  %24 = icmp ne %struct.journal_completion* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.journal_completion*, %struct.journal_completion** %12, align 8
  %27 = call i32 @complete_journal_io(i64 -1, %struct.journal_completion* %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %146

29:                                               ; preds = %6
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = load i32, i32* @SECTOR_SHIFT, align 4
  %33 = sub i32 %31, %32
  %34 = lshr i32 %30, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @SECTOR_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %8, align 4
  %42 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @DM_IO_PAGE_LIST, align 4
  %46 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %49 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %29
  %53 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %54 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32* %58, i32** %61, align 8
  br label %72

62:                                               ; preds = %29
  %63 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %64 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32* %68, i32** %71, align 8
  br label %72

72:                                               ; preds = %62, %52
  %73 = load i32, i32* %16, align 4
  %74 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.journal_completion*, %struct.journal_completion** %12, align 8
  %77 = icmp ne %struct.journal_completion* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 (i64, %struct.journal_completion*)* @complete_journal_io, i32 (i64, %struct.journal_completion*)** %83, align 8
  %84 = load %struct.journal_completion*, %struct.journal_completion** %12, align 8
  %85 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store %struct.journal_completion* %84, %struct.journal_completion** %86, align 8
  br label %90

87:                                               ; preds = %72
  %88 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 (i64, %struct.journal_completion*)* null, i32 (i64, %struct.journal_completion*)** %89, align 8
  br label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %92 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %13, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %96 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %101 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %100, i32 0, i32 2
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  br label %111

105:                                              ; preds = %90
  %106 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %107 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = phi i32 [ %104, %99 ], [ %110, %105 ]
  %113 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %14, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %115 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SB_SECTORS, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %14, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %14, i32 0, i32 0
  store i32 %123, i32* %124, align 8
  %125 = call i32 @dm_io(%struct.dm_io_request* %13, i32 1, %struct.dm_io_region* %14, i32* null)
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %111
  %130 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @REQ_OP_READ, align 4
  %133 = icmp eq i32 %131, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %130, i8* %135, i32 %136)
  %138 = load %struct.journal_completion*, %struct.journal_completion** %12, align 8
  %139 = icmp ne %struct.journal_completion* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %129
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load %struct.journal_completion*, %struct.journal_completion** %12, align 8
  %144 = call i32 @complete_journal_io(i64 -1, %struct.journal_completion* %143)
  br label %145

145:                                              ; preds = %140, %129
  br label %146

146:                                              ; preds = %28, %145, %111
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_integrity_failed(%struct.dm_integrity_c*) #1

declare dso_local i32 @complete_journal_io(i64, %struct.journal_completion*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

declare dso_local i32 @dm_integrity_io_error(%struct.dm_integrity_c*, i8*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
