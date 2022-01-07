; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c__ctx_stats_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c__ctx_stats_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.hfi1_ibdev = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ctxtdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

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
  %10 = alloca %struct.hfi1_ibdev*, align 8
  %11 = alloca %struct.hfi1_devdata*, align 8
  %12 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.hfi1_ibdev*
  store %struct.hfi1_ibdev* %16, %struct.hfi1_ibdev** %10, align 8
  %17 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %10, align 8
  %18 = call %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev* %17)
  store %struct.hfi1_devdata* %18, %struct.hfi1_devdata** %11, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = call i32 @seq_puts(%struct.seq_file* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %6, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index_safe(%struct.hfi1_devdata* %30, i64 %31)
  store %struct.hfi1_ctxtdata* %32, %struct.hfi1_ctxtdata** %12, align 8
  %33 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %34 = icmp ne %struct.hfi1_ctxtdata* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @SEQ_SKIP, align 4
  store i32 %36, i32* %3, align 4
  br label %74

37:                                               ; preds = %25
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %41 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %44)
  %46 = icmp ult i64 %39, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %38
  %48 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %49 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %47
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %64 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %63)
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @SEQ_SKIP, align 4
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %62
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %67, %35, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index_safe(%struct.hfi1_devdata*, i64) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
