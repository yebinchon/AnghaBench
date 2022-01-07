; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_query_device_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_query_device_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.i2c_client*, %struct.TYPE_2__* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.i2c_client*, i32*, i32*)*, i32 (%struct.i2c_client*, i32*, i32*)*, i32 (%struct.i2c_client*, i32*, i32*)* }

@.str = private unnamed_addr constant [19 x i8] c"touchscreen-size-x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"touchscreen-size-y\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"elan,x_traces\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"elan,y_traces\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"touchscreen-x-mm\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"touchscreen-y-mm\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"elan,clickpad\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"elan,middle-button\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @elan_query_device_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_query_device_parameters(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %12 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %13 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %12, i32 0, i32 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %18 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %17, i32 0, i32 0
  %19 = call i64 @device_property_read_u32(i32* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %25 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %24, i32 0, i32 1
  %26 = call i64 @device_property_read_u32(i32* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21, %1
  %29 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %30 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %29, i32 0, i32 9
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.i2c_client*, i32*, i32*)*, i32 (%struct.i2c_client*, i32*, i32*)** %32, align 8
  %34 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %35 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %34, i32 0, i32 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %35, align 8
  %37 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %38 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %37, i32 0, i32 0
  %39 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %40 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %39, i32 0, i32 1
  %41 = call i32 %33(%struct.i2c_client* %36, i32* %38, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %2, align 4
  br label %164

46:                                               ; preds = %28
  br label %56

47:                                               ; preds = %21
  %48 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %49 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add i32 %50, -1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %53 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %47, %46
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i64 @device_property_read_u32(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i64 @device_property_read_u32(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61, %56
  %67 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %68 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %67, i32 0, i32 9
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.i2c_client*, i32*, i32*)*, i32 (%struct.i2c_client*, i32*, i32*)** %70, align 8
  %72 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %73 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %72, i32 0, i32 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %73, align 8
  %75 = call i32 %71(%struct.i2c_client* %74, i32* %5, i32* %6)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %2, align 4
  br label %164

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %83 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = udiv i32 %84, %85
  %87 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %88 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %90 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = udiv i32 %91, %92
  %94 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %95 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i64 @device_property_read_u32(i32* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %81
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = call i64 @device_property_read_u32(i32* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %100, %81
  %106 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %107 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %106, i32 0, i32 9
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32 (%struct.i2c_client*, i32*, i32*)*, i32 (%struct.i2c_client*, i32*, i32*)** %109, align 8
  %111 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %112 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %111, i32 0, i32 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %112, align 8
  %114 = call i32 %110(%struct.i2c_client* %113, i32* %9, i32* %10)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %2, align 4
  br label %164

119:                                              ; preds = %105
  %120 = load i32, i32* %9, align 4
  %121 = call i8* @elan_convert_resolution(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %124 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i8* @elan_convert_resolution(i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %129 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  br label %147

130:                                              ; preds = %100
  %131 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %132 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add i32 %133, 1
  %135 = load i32, i32* %7, align 4
  %136 = udiv i32 %134, %135
  %137 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %138 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %140 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  %143 = load i32, i32* %8, align 4
  %144 = udiv i32 %142, %143
  %145 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %146 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %130, %119
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = call i64 @device_property_read_bool(i32* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %154 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %153, i32 0, i32 6
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %152, %147
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = call i64 @device_property_read_bool(i32* %157, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %162 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %161, i32 0, i32 7
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %155
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %117, %78, %44
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i8* @elan_convert_resolution(i32) #1

declare dso_local i64 @device_property_read_bool(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
