; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_debugfs.c__ctx_stats_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_debugfs.c__ctx_stats_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.qib_ibdev = type { i32 }
%struct.qib_devdata = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Ctx:npkts\0A\00", align 1
@SEQ_SKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"  %llu:%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @_ctx_stats_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ctx_stats_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qib_ibdev*, align 8
  %11 = alloca %struct.qib_devdata*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.qib_ibdev*
  store %struct.qib_ibdev* %15, %struct.qib_ibdev** %10, align 8
  %16 = load %struct.qib_ibdev*, %struct.qib_ibdev** %10, align 8
  %17 = call %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev* %16)
  store %struct.qib_devdata* %17, %struct.qib_devdata** %11, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %83

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %6, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %31, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* @SEQ_SKIP, align 4
  store i32 %37, i32* %3, align 4
  br label %83

38:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  br label %39

39:                                               ; preds = %70, %38
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i64 @ARRAY_SIZE(%struct.TYPE_6__* %50)
  %52 = icmp ult i64 %40, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %39
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %11, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %53
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %39

73:                                               ; preds = %39
  %74 = load i64, i64* %9, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @SEQ_SKIP, align 4
  store i32 %77, i32* %3, align 4
  br label %83

78:                                               ; preds = %73
  %79 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %80, i64 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %76, %36, %21
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.qib_devdata* @dd_from_dev(%struct.qib_ibdev*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
