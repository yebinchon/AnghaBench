; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_reset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drxj_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxj_data = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i8*, i8* }

@DRX_STANDARD_ITU_B = common dso_local global i8* null, align 8
@DRX_AGC_CTRL_OFF = common dso_local global i8* null, align 8
@DRX_STANDARD_8VSB = common dso_local global i8* null, align 8
@DRX_AGC_CTRL_AUTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drxj_data*)* @drxj_reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drxj_reset_mode(%struct.drxj_data* %0) #0 {
  %2 = alloca %struct.drxj_data*, align 8
  store %struct.drxj_data* %0, %struct.drxj_data** %2, align 8
  %3 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %4 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %3, i32 0, i32 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = load i8*, i8** @DRX_STANDARD_ITU_B, align 8
  %9 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %10 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 5
  store i8* %8, i8** %11, align 8
  %12 = load i8*, i8** @DRX_AGC_CTRL_OFF, align 8
  %13 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %14 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i8* %12, i8** %15, align 8
  %16 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %17 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %16, i32 0, i32 0
  store i32 283, i32* %17, align 8
  %18 = load i8*, i8** @DRX_STANDARD_8VSB, align 8
  %19 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %20 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** @DRX_AGC_CTRL_OFF, align 8
  %23 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %24 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  store i8* %22, i8** %25, align 8
  %26 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %27 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %26, i32 0, i32 1
  store i32 283, i32* %27, align 4
  br label %73

28:                                               ; preds = %1
  %29 = load i8*, i8** @DRX_STANDARD_ITU_B, align 8
  %30 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %31 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** @DRX_AGC_CTRL_AUTO, align 8
  %34 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %35 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  store i8* %33, i8** %36, align 8
  %37 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %38 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %41 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 32767, i32* %42, align 8
  %43 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %44 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 3, i32* %45, align 4
  %46 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %47 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i32 1297, i32* %48, align 8
  %49 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %50 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %49, i32 0, i32 0
  store i32 140, i32* %50, align 8
  %51 = load i8*, i8** @DRX_STANDARD_8VSB, align 8
  %52 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %53 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 5
  store i8* %51, i8** %54, align 8
  %55 = load i8*, i8** @DRX_AGC_CTRL_AUTO, align 8
  %56 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %57 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  store i8* %55, i8** %58, align 8
  %59 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %60 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %63 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 32767, i32* %64, align 8
  %65 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %66 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 3, i32* %67, align 4
  %68 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %69 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 1024, i32* %70, align 8
  %71 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %72 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %71, i32 0, i32 1
  store i32 140, i32* %72, align 4
  br label %73

73:                                               ; preds = %28, %7
  %74 = load i8*, i8** @DRX_STANDARD_ITU_B, align 8
  %75 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %76 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 6
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** @DRX_AGC_CTRL_AUTO, align 8
  %79 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %80 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  store i8* %78, i8** %81, align 8
  %82 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %83 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %86 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 32767, i32* %87, align 8
  %88 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %89 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32 3, i32* %90, align 4
  %91 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %92 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store i32 9500, i32* %93, align 8
  %94 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %95 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  store i32 4000, i32* %96, align 4
  %97 = load i8*, i8** @DRX_STANDARD_ITU_B, align 8
  %98 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %99 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i8* %97, i8** %100, align 8
  %101 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %102 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 7, i32* %103, align 8
  %104 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %105 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load i8*, i8** @DRX_STANDARD_8VSB, align 8
  %108 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %109 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 6
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** @DRX_AGC_CTRL_AUTO, align 8
  %112 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %113 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 5
  store i8* %111, i8** %114, align 8
  %115 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %116 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 4
  store i64 0, i64* %117, align 8
  %118 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %119 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  store i32 32767, i32* %120, align 8
  %121 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %122 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  store i32 3, i32* %123, align 4
  %124 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %125 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  store i32 9500, i32* %126, align 8
  %127 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %128 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  store i32 4000, i32* %129, align 4
  %130 = load i8*, i8** @DRX_STANDARD_8VSB, align 8
  %131 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %132 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  store i8* %130, i8** %133, align 8
  %134 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %135 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 7, i32* %136, align 8
  %137 = load %struct.drxj_data*, %struct.drxj_data** %2, align 8
  %138 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
