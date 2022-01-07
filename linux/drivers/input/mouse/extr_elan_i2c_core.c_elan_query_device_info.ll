; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_query_device_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_query_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)* }

@.str = private unnamed_addr constant [78 x i8] c"unexpected iap version %#04x (ic type: %#04x), firmware update will not work\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @elan_query_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_query_device_info(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %6 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %7 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %6, i32 0, i32 6
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)** %9, align 8
  %11 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %12 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %15 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %14, i32 0, i32 9
  %16 = call i32 %10(%struct.TYPE_8__* %13, i32 0, i32* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %120

21:                                               ; preds = %1
  %22 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %23 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %22, i32 0, i32 6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)** %25, align 8
  %27 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %28 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %31 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %30, i32 0, i32 8
  %32 = call i32 %26(%struct.TYPE_8__* %29, i32 0, i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %120

37:                                               ; preds = %21
  %38 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %39 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %38, i32 0, i32 6
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_8__*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32, i32*)** %41, align 8
  %43 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %44 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %47 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %46, i32 0, i32 2
  %48 = call i32 %42(%struct.TYPE_8__* %45, i32 1, i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %120

53:                                               ; preds = %37
  %54 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %55 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %54, i32 0, i32 6
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %57, align 8
  %59 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %60 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %59, i32 0, i32 3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %63 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %62, i32 0, i32 7
  %64 = call i32 %58(%struct.TYPE_8__* %61, i32* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %120

69:                                               ; preds = %53
  %70 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %71 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %70, i32 0, i32 6
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %73, align 8
  %75 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %76 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %79 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %78, i32 0, i32 0
  %80 = call i32 %74(%struct.TYPE_8__* %77, i32* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %120

85:                                               ; preds = %69
  %86 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %87 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %92 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %5, align 4
  br label %98

94:                                               ; preds = %85
  %95 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %96 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %101 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %100, i32 0, i32 5
  %102 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %103 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %102, i32 0, i32 4
  %104 = call i32 @elan_get_fwinfo(i32 %99, i32* %101, i32* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %98
  %108 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %109 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %113 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %116 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_warn(i32* %111, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %107, %98
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %83, %67, %51, %35, %19
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @elan_get_fwinfo(i32, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
