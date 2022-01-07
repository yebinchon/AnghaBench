; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c__opcode_stats_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_debugfs.c__opcode_stats_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.hfi1_ibdev = type { i32 }
%struct.hfi1_devdata = type { i64 }
%struct.hfi1_ctxtdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @_opcode_stats_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_opcode_stats_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfi1_ibdev*, align 8
  %11 = alloca %struct.hfi1_devdata*, align 8
  %12 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %5, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.hfi1_ibdev*
  store %struct.hfi1_ibdev* %20, %struct.hfi1_ibdev** %10, align 8
  %21 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %10, align 8
  %22 = call %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev* %21)
  store %struct.hfi1_devdata* %22, %struct.hfi1_devdata** %11, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %65, %2
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %23
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %30, i64 %31)
  store %struct.hfi1_ctxtdata* %32, %struct.hfi1_ctxtdata** %12, align 8
  %33 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %34 = icmp ne %struct.hfi1_ctxtdata* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %50 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %35, %29
  %63 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %12, align 8
  %64 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %63)
  br label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %23

68:                                               ; preds = %23
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @opcode_stats_show(%struct.seq_file* %69, i64 %70, i32 %71, i32 %72)
  ret i32 %73
}

declare dso_local %struct.hfi1_devdata* @dd_from_dev(%struct.hfi1_ibdev*) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @opcode_stats_show(%struct.seq_file*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
