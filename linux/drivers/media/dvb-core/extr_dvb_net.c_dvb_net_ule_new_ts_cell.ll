; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_new_ts_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_new_ts_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net_ule_handle = type { i32*, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@TS_SYNC = common dso_local global i32 0, align 4
@TS_TEI = common dso_local global i32 0, align 4
@TS_SC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"%lu: Invalid TS cell: SYNC %#x, TEI %u, SC %#x.\0A\00", align 1
@TS_SZ = common dso_local global i32 0, align 4
@ule_dump = common dso_local global i64 0, align 8
@ule_hist = common dso_local global i32* null, align 8
@ule_where = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net_ule_handle*)* @dvb_net_ule_new_ts_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_ule_new_ts_cell(%struct.dvb_net_ule_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_net_ule_handle*, align 8
  store %struct.dvb_net_ule_handle* %0, %struct.dvb_net_ule_handle** %3, align 8
  %4 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %5 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TS_SYNC, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TS_TEI, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TS_SC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %105

29:                                               ; preds = %20, %11, %1
  %30 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %31 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %36 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TS_TEI, align 4
  %46 = and i32 %44, %45
  %47 = ashr i32 %46, 7
  %48 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TS_SC, align 4
  %54 = and i32 %52, %53
  %55 = ashr i32 %54, 6
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39, i32 %47, i32 %55)
  %57 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %29
  %64 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_kfree_skb(i64 %68)
  %70 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %70, i32 0, i32 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %77, i32 0, i32 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %63, %29
  %85 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %86 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %85, i32 0, i32 3
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @reset_ule(%struct.TYPE_6__* %87)
  %89 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load i32, i32* @TS_SZ, align 4
  %94 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = sext i32 %93 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %95, align 8
  %99 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %100 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  store i32 1, i32* %2, align 4
  br label %114

105:                                              ; preds = %20
  %106 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %107 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %106, i32 0, i32 1
  store i32 184, i32* %107, align 8
  %108 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %113 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %105, %84
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @reset_ule(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
