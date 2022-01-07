; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_copy_from_journal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_copy_from_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, i32, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_7__ = type { i8*, i32 (i64, i8*)* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.dm_io_region = type { i32, i32, i32 }

@JOURNAL_BLOCK_SECTORS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@DM_IO_PAGE_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"asynchronous dm_io failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32, i32, i32, i32 (i64, i8*)*, i8*)* @copy_from_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_from_journal(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 (i64, i8*)* %5, i8* %6) #0 {
  %8 = alloca %struct.dm_integrity_c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (i64, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.dm_io_request, align 8
  %16 = alloca %struct.dm_io_region, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (i64, i8*)* %5, i32 (i64, i8*)** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %27 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %25, %29
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %33 = call i32 @dm_integrity_failed(%struct.dm_integrity_c* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %7
  %37 = load i32 (i64, i8*)*, i32 (i64, i8*)** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 %37(i64 -1, i8* %38)
  br label %109

40:                                               ; preds = %7
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %43 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul i32 %41, %44
  %46 = load i32, i32* @JOURNAL_BLOCK_SECTORS, align 4
  %47 = add i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %47, %48
  store i32 %49, i32* %18, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = load i32, i32* @SECTOR_SHIFT, align 4
  %53 = sub i32 %51, %52
  %54 = lshr i32 %50, %53
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @SECTOR_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %57, %59
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* @REQ_OP_WRITE, align 4
  %62 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @DM_IO_PAGE_LIST, align 4
  %65 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %68 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32* %72, i32** %75, align 8
  %76 = load i32, i32* %20, align 4
  %77 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32 (i64, i8*)*, i32 (i64, i8*)** %13, align 8
  %80 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 (i64, i8*)* %79, i32 (i64, i8*)** %81, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %86 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %15, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %90 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %16, i32 0, i32 2
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %16, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %16, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = call i32 @dm_io(%struct.dm_io_request* %15, i32 1, %struct.dm_io_region* %16, i32* null)
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %40
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32 (i64, i8*)*, i32 (i64, i8*)** %13, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 %106(i64 -1, i8* %107)
  br label %109

109:                                              ; preds = %36, %103, %40
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_integrity_failed(%struct.dm_integrity_c*) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
