; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_portcntr_6120.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_portcntr_6120.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@qib_portcntr_6120.xlator = internal constant [182 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 129, i32 65535, i32 130, i32 131, i32 65535, i32 65535, i32 132, i32 133, i32 134, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 135, i32 136, i32 65535, i32 65535, i32 137, i32 138, i32 139, i32 140, i32 65535, i32 146, i32 141, i32 142, i32 143, i32 144, i32 145, i32 147], align 16
@.str = private unnamed_addr constant [30 x i8] c"Unimplemented portcounter %u\0A\00", align 1
@cr_portovfl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qib_pportdata*, i64)* @qib_portcntr_6120 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qib_portcntr_6120(%struct.qib_pportdata* %0, i64 %1) #0 {
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
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 0
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %10, align 8
  store %struct.qib_devdata* %11, %struct.qib_devdata** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([182 x i32], [182 x i32]* @qib_portcntr_6120.xlator, i64 0, i64 0))
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %17 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %16, i32 0, i32 0
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @qib_devinfo(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %171

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds [182 x i32], [182 x i32]* @qib_portcntr_6120.xlator, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %27, 168
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %31 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  br label %78

35:                                               ; preds = %23
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %36, 174
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %5, align 8
  br label %77

44:                                               ; preds = %35
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 169
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %56 = load i32, i32* @cr_portovfl, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i64 @read_6120_creg32(%struct.qib_devdata* %55, i32 %58)
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %48

65:                                               ; preds = %48
  br label %76

66:                                               ; preds = %44
  %67 = load i64, i64* %4, align 8
  %68 = icmp eq i64 %67, 161
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75, %65
  br label %77

77:                                               ; preds = %76, %38
  br label %78

78:                                               ; preds = %77, %29
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 65535
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %171

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 129
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 135
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 136
  br i1 %93, label %94, label %98

94:                                               ; preds = %91, %88, %85, %82
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @read_6120_creg(%struct.qib_devdata* %95, i32 %96)
  store i64 %97, i64* %5, align 8
  br label %102

98:                                               ; preds = %91
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @read_6120_creg32(%struct.qib_devdata* %99, i32 %100)
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 138
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %107 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %105
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %115 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %113, %118
  %120 = load i64, i64* %5, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %112, %105
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %124 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = sub i64 %128, %127
  store i64 %129, i64* %5, align 8
  br label %159

130:                                              ; preds = %102
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 139
  br i1 %132, label %133, label %158

133:                                              ; preds = %130
  %134 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %135 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %133
  %141 = load i64, i64* %5, align 8
  %142 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %143 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = sub i64 %141, %146
  %148 = load i64, i64* %5, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %5, align 8
  br label %150

150:                                              ; preds = %140, %133
  %151 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %152 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = sub i64 %156, %155
  store i64 %157, i64* %5, align 8
  br label %158

158:                                              ; preds = %150, %130
  br label %159

159:                                              ; preds = %158, %122
  %160 = load i64, i64* %4, align 8
  %161 = icmp eq i64 %160, 155
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %164 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %5, align 8
  br label %170

170:                                              ; preds = %162, %159
  br label %171

171:                                              ; preds = %170, %81, %15
  %172 = load i64, i64* %5, align 8
  ret i64 %172
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i64) #1

declare dso_local i64 @read_6120_creg32(%struct.qib_devdata*, i32) #1

declare dso_local i64 @read_6120_creg(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
