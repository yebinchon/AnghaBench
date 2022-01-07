; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_ts_pusi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_ts_pusi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net_ule_handle = type { i32*, i32, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@TS_PUSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%lu: Invalid ULE packet (pointer field %d)\0A\00", align 1
@TS_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net_ule_handle*)* @dvb_net_ule_ts_pusi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_ule_ts_pusi(%struct.dvb_net_ule_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_net_ule_handle*, align 8
  store %struct.dvb_net_ule_handle* %0, %struct.dvb_net_ule_handle** %3, align 8
  %4 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %5 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TS_PUSI, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %1
  %13 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 15
  %19 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %12
  %33 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %39 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  %44 = load i32, i32* @TS_SZ, align 4
  %45 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = sext i32 %44 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %46, align 8
  %50 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %51 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  store i32 1, i32* %2, align 4
  br label %100

56:                                               ; preds = %12
  %57 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %69 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 1, %74
  %76 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %77 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  br label %99

82:                                               ; preds = %1
  %83 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* @TS_SZ, align 4
  %88 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %89 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = sext i32 %87 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %89, align 8
  %93 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %94 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  store i32 1, i32* %2, align 4
  br label %100

99:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %82, %32
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
