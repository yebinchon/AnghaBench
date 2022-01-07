; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_switch_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_switch_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i8*, i8*, i32, %struct.psmouse_protocol*, i32, i32, i64, i64 (%struct.psmouse*)*, %struct.TYPE_7__, %struct.input_dev* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.input_dev = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.psmouse_protocol = type { i64 (%struct.psmouse.0*, i32)*, i64 (%struct.psmouse.1*)*, i8*, i32 }
%struct.psmouse.0 = type opaque
%struct.psmouse.1 = type opaque

@psmouse_max_proto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@BUS_I8042 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.psmouse_protocol*)* @psmouse_switch_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_switch_protocol(%struct.psmouse* %0, %struct.psmouse_protocol* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.psmouse_protocol*, align 8
  %6 = alloca %struct.psmouse_protocol*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.psmouse_protocol* %1, %struct.psmouse_protocol** %5, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 10
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %7, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  %20 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  %21 = icmp ne %struct.psmouse_protocol* %20, null
  br i1 %21, label %22, label %64

22:                                               ; preds = %2
  %23 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  %24 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %23, i32 0, i32 0
  %25 = load i64 (%struct.psmouse.0*, i32)*, i64 (%struct.psmouse.0*, i32)** %24, align 8
  %26 = icmp ne i64 (%struct.psmouse.0*, i32)* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  %29 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %28, i32 0, i32 1
  %30 = load i64 (%struct.psmouse.1*)*, i64 (%struct.psmouse.1*)** %29, align 8
  %31 = icmp ne i64 (%struct.psmouse.1*)* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %27, %22
  %33 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %34 = call i32 @psmouse_apply_defaults(%struct.psmouse* %33)
  %35 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  %36 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %35, i32 0, i32 0
  %37 = load i64 (%struct.psmouse.0*, i32)*, i64 (%struct.psmouse.0*, i32)** %36, align 8
  %38 = icmp ne i64 (%struct.psmouse.0*, i32)* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  %41 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %40, i32 0, i32 0
  %42 = load i64 (%struct.psmouse.0*, i32)*, i64 (%struct.psmouse.0*, i32)** %41, align 8
  %43 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %44 = bitcast %struct.psmouse* %43 to %struct.psmouse.0*
  %45 = call i64 %42(%struct.psmouse.0* %44, i32 1)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %141

48:                                               ; preds = %39, %32
  %49 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  %50 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %49, i32 0, i32 1
  %51 = load i64 (%struct.psmouse.1*)*, i64 (%struct.psmouse.1*)** %50, align 8
  %52 = icmp ne i64 (%struct.psmouse.1*)* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  %55 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %54, i32 0, i32 1
  %56 = load i64 (%struct.psmouse.1*)*, i64 (%struct.psmouse.1*)** %55, align 8
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = bitcast %struct.psmouse* %57 to %struct.psmouse.1*
  %59 = call i64 %56(%struct.psmouse.1* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %141

62:                                               ; preds = %53, %48
  %63 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %5, align 8
  store %struct.psmouse_protocol* %63, %struct.psmouse_protocol** %6, align 8
  br label %70

64:                                               ; preds = %27, %2
  %65 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %66 = load i32, i32* @psmouse_max_proto, align 4
  %67 = call i32 @psmouse_extensions(%struct.psmouse* %65, i32 %66, i32 1)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call %struct.psmouse_protocol* @psmouse_protocol_by_type(i32 %68)
  store %struct.psmouse_protocol* %69, %struct.psmouse_protocol** %6, align 8
  br label %70

70:                                               ; preds = %64, %62
  %71 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %6, align 8
  %72 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %73 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %72, i32 0, i32 4
  store %struct.psmouse_protocol* %71, %struct.psmouse_protocol** %73, align 8
  %74 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %75 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %80 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %83 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %82, i32 0, i32 7
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %88 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %87, i32 0, i32 8
  %89 = load i64 (%struct.psmouse*)*, i64 (%struct.psmouse*)** %88, align 8
  %90 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %91 = call i64 %89(%struct.psmouse* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %95 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %86, %81
  %97 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %98 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %6, align 8
  %101 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %104 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %107 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @snprintf(i32 %99, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %102, i8* %105, i8* %108)
  %110 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %111 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  %115 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %116 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @BUS_I8042, align 4
  %121 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %122 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  store i32 %120, i32* %123, align 4
  %124 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %125 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 2, i32* %126, align 8
  %127 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %128 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %127, i32 0, i32 4
  %129 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %128, align 8
  %130 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %136 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %96, %61, %47
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @psmouse_apply_defaults(%struct.psmouse*) #1

declare dso_local i32 @psmouse_extensions(%struct.psmouse*, i32, i32) #1

declare dso_local %struct.psmouse_protocol* @psmouse_protocol_by_type(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
