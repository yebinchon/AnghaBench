; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dvb_frontend_check_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c_dvb_frontend_check_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, i32, %struct.TYPE_4__*, %struct.dtv_frontend_properties }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dtv_frontend_properties = type { i64, i32, i64 }

@.str = private unnamed_addr constant [64 x i8] c"DVB: adapter %i frontend %i frequency %u out of range (%u..%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"DVB: adapter %i frontend %i symbol rate %u out of range (%u..%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dvb_frontend_check_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_frontend_check_parameters(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 3
  store %struct.dtv_frontend_properties* %8, %struct.dtv_frontend_properties** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = call i32 @dvb_frontend_get_frequency_limits(%struct.dvb_frontend* %9, i64* %5, i64* %6, i32* null)
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %13, %1
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %19
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22, %13
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i64 %44, i64 %45, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %121

50:                                               ; preds = %22, %19
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %119 [
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
    i32 132, label %54
    i32 131, label %54
  ]

54:                                               ; preds = %50, %50, %50, %50, %50
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %64, %69
  br i1 %70, label %88, label %71

71:                                               ; preds = %61, %54
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %71
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %81, %86
  br i1 %87, label %88, label %118

88:                                               ; preds = %78, %61
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %100 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %106 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @dev_warn(i32 %93, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101, i64 %104, i64 %109, i64 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %121

118:                                              ; preds = %78, %71
  br label %119

119:                                              ; preds = %50, %118
  br label %120

120:                                              ; preds = %119
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %88, %28
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @dvb_frontend_get_frequency_limits(%struct.dvb_frontend*, i64*, i64*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
