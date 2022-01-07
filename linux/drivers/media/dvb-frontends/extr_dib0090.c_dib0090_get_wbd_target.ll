; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_get_wbd_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_get_wbd_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i32, i32, i32, i64, %struct.dib0090_wbd_slope*, %struct.TYPE_4__* }
%struct.dib0090_wbd_slope = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"using wbd-table-entry with max freq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"wbd-target: %d dB\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"wbd offset applied is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0090_get_wbd_target(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dib0090_wbd_slope*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %10, align 8
  store %struct.dib0090_state* %11, %struct.dib0090_state** %3, align 8
  %12 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %13 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 1000000
  store i32 %18, i32* %4, align 4
  %19 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %20 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %23 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %22, i32 0, i32 4
  %24 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %23, align 8
  store %struct.dib0090_wbd_slope* %24, %struct.dib0090_wbd_slope** %8, align 8
  br label %25

25:                                               ; preds = %31, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %28 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %33 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %32, i32 1
  store %struct.dib0090_wbd_slope* %33, %struct.dib0090_wbd_slope** %8, align 8
  br label %25

34:                                               ; preds = %25
  %35 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %36 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 128
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 128, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %48 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -57345
  store i32 %50, i32* %48, align 4
  %51 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %52 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %57 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 13
  %60 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %61 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %69

64:                                               ; preds = %46
  %65 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %66 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, 32768
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %55
  %70 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %71 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %72 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dib0090_write_reg(%struct.dib0090_state* %70, i32 16, i32 %73)
  %75 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %76 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %79 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %4, align 4
  %83 = mul nsw i32 %81, %82
  %84 = ashr i32 %83, 6
  %85 = sub nsw i32 %77, %84
  store i32 %85, i32* %6, align 4
  %86 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %87 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dib0090_wbd_slope*, %struct.dib0090_wbd_slope** %8, align 8
  %90 = getelementptr inbounds %struct.dib0090_wbd_slope, %struct.dib0090_wbd_slope* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %4, align 4
  %94 = mul nsw i32 %92, %93
  %95 = ashr i32 %94, 6
  %96 = sub nsw i32 %88, %95
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = mul nsw i32 %99, %100
  %102 = ashr i32 %101, 7
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %106 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %107 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i64 @dib0090_wbd_to_db(%struct.dib0090_state* %105, i32 %110)
  %112 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %113 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  %114 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %115 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %122 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %123, %124
  ret i32 %125
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i64 @dib0090_wbd_to_db(%struct.dib0090_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
