; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_portcntr_7220.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_portcntr_7220.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_4__*, %struct.qib_devdata* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.qib_devdata = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@qib_portcntr_7220.xlator = internal constant [195 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 65535, i32 149, i32 150, i32 151, i32 152, i32 153, i32 159, i32 154, i32 155, i32 156, i32 157, i32 158, i32 160], align 16
@.str = private unnamed_addr constant [30 x i8] c"Unimplemented portcounter %u\0A\00", align 1
@cr_portovfl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_pportdata*, i64)* @qib_portcntr_7220 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_portcntr_7220(%struct.qib_pportdata* %0, i64 %1) #0 {
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 1
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([195 x i32], [195 x i32]* @qib_portcntr_7220.xlator, i64 0, i64 0))
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i32 0, i32 1
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @qib_devinfo(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %138

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds [195 x i32], [195 x i32]* @qib_portcntr_7220.xlator, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %27, 182
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %33 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %38 = load i32, i32* @cr_portovfl, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i64 @read_7220_creg32(%struct.qib_devdata* %37, i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %30

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %138

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %64, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 129
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 146
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 147
  br i1 %63, label %64, label %68

64:                                               ; preds = %61, %58, %55, %52
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @read_7220_creg(%struct.qib_devdata* %65, i32 %66)
  store i64 %67, i64* %5, align 8
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @read_7220_creg32(%struct.qib_devdata* %69, i32 %70)
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 150
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %75
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %87 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %85, %90
  %92 = load i64, i64* %5, align 8
  %93 = sub i64 %92, %91
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %84, %75
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %96 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %5, align 8
  br label %137

104:                                              ; preds = %72
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 151
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %109 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %107
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %119 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub i64 %117, %122
  %124 = load i64, i64* %5, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %116, %107
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %128 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = sub i64 %134, %133
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %126, %104
  br label %137

137:                                              ; preds = %136, %94
  br label %138

138:                                              ; preds = %137, %51, %15
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i64) #1

declare dso_local i64 @read_7220_creg32(%struct.qib_devdata*, i32) #1

declare dso_local i64 @read_7220_creg(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
