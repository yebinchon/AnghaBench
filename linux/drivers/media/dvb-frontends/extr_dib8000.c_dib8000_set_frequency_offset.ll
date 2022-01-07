; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_frequency_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_frequency_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_9__, i32, %struct.TYPE_10__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.dtv_frontend_properties }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, i32*)* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [84 x i8] c"%dkhz tuner offset (frequency = %dHz & current_rf = %dHz) total_dds_offset_hz = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_set_frequency_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_frequency_offset(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %7 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %8 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %9, i64 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %3, align 8
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %14 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %15, i64 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.TYPE_10__*, i32*)* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %1
  %24 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %25 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %31, align 8
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %34 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %35, i64 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = call i32 %32(%struct.TYPE_10__* %37, i32* %5)
  br label %43

39:                                               ; preds = %1
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %23
  %44 = load i32, i32* %5, align 4
  %45 = sdiv i32 %44, 1000
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %48 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %49, 1000
  %51 = sub nsw i32 %46, %50
  store i32 %51, i32* %6, align 4
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %105

56:                                               ; preds = %43
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %61 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %63 = call i32 @dib8000_read_word(%struct.dib8000_state* %62, i32 26)
  %64 = and i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = xor i32 %68, %69
  %71 = call i32 @dib8000_write_word(%struct.dib8000_state* %65, i32 26, i32 %70)
  %72 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %73 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %56
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = xor i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %88 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %89 = call i32 @dib8000_read_word(%struct.dib8000_state* %88, i32 26)
  %90 = or i32 %89, 1
  %91 = call i32 @dib8000_write_word(%struct.dib8000_state* %87, i32 26, i32 %90)
  br label %92

92:                                               ; preds = %86, %79
  br label %104

93:                                               ; preds = %56
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = xor i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %101, -1
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %93
  br label %104

104:                                              ; preds = %103, %92
  br label %105

105:                                              ; preds = %104, %43
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @dprintk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %114, i32 %115)
  %117 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @dib8000_set_dds(%struct.dib8000_state* %117, i32 %118)
  ret void
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dib8000_set_dds(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
