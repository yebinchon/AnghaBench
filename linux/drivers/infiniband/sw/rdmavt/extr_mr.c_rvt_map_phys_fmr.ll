; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_map_phys_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_map_phys_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32 }
%struct.rvt_fmr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__**, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.rvt_lkey_table = type { i32 }
%struct.rvt_dev_info = type { %struct.rvt_lkey_table }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RVT_SEGSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_map_phys_fmr(%struct.ib_fmr* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_fmr*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rvt_fmr*, align 8
  %11 = alloca %struct.rvt_lkey_table*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.rvt_dev_info*, align 8
  store %struct.ib_fmr* %0, %struct.ib_fmr** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load %struct.ib_fmr*, %struct.ib_fmr** %6, align 8
  %19 = call %struct.rvt_fmr* @to_ifmr(%struct.ib_fmr* %18)
  store %struct.rvt_fmr* %19, %struct.rvt_fmr** %10, align 8
  %20 = load %struct.ib_fmr*, %struct.ib_fmr** %6, align 8
  %21 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %22)
  store %struct.rvt_dev_info* %23, %struct.rvt_dev_info** %17, align 8
  %24 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %25 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i64 @atomic_long_read(i32* %27)
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ugt i64 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %135

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %37 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %35, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %135

44:                                               ; preds = %34
  %45 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %17, align 8
  %46 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %45, i32 0, i32 0
  store %struct.rvt_lkey_table* %46, %struct.rvt_lkey_table** %11, align 8
  %47 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %11, align 8
  %48 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %47, i32 0, i32 0
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %53 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %57 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  store i8* %55, i8** %58, align 8
  %59 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %60 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %16, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %68 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %70

70:                                               ; preds = %127, %44
  %71 = load i64, i64* %15, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %130

75:                                               ; preds = %70
  %76 = load i8**, i8*** %7, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %81 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i8* %79, i8** %93, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %96 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %94, i32* %108, align 8
  %109 = load %struct.rvt_fmr*, %struct.rvt_fmr** %10, align 8
  %110 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %109, i32 0, i32 0
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i8**, i8*** %7, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @trace_rvt_mr_fmr_seg(%struct.TYPE_8__* %110, i32 %111, i32 %112, i8* %116, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* @RVT_SEGSZ, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %75
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %123, %75
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %15, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %15, align 8
  br label %70

130:                                              ; preds = %70
  %131 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %11, align 8
  %132 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %131, i32 0, i32 0
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @spin_unlock_irqrestore(i32* %132, i64 %133)
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %130, %41, %31
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.rvt_fmr* @to_ifmr(%struct.ib_fmr*) #1

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @trace_rvt_mr_fmr_seg(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
