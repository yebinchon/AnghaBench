; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_read_t100_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_read_t100_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.mxt_object = type { i64 }

@MXT_TOUCH_MULTITOUCHSCREEN_T100 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MXT_T100_XRANGE = common dso_local global i64 0, align 8
@MXT_T100_YRANGE = common dso_local global i64 0, align 8
@MXT_T100_XSIZE = common dso_local global i64 0, align 8
@MXT_T100_YSIZE = common dso_local global i64 0, align 8
@MXT_T100_CFG1 = common dso_local global i64 0, align 8
@MXT_T100_CFG_SWITCHXY = common dso_local global i32 0, align 4
@MXT_T100_CFG_INVERTX = common dso_local global i32 0, align 4
@MXT_T100_CFG_INVERTY = common dso_local global i32 0, align 4
@MXT_T100_TCHAUX = common dso_local global i64 0, align 8
@MXT_T100_TCHAUX_VECT = common dso_local global i32 0, align 4
@MXT_T100_TCHAUX_AMPL = common dso_local global i32 0, align 4
@MXT_T100_TCHAUX_AREA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"T100 aux mappings vect:%u ampl:%u area:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_read_t100_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_read_t100_config(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxt_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %12 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %13 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %12, i32 0, i32 10
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %16 = load i32, i32* @MXT_TOUCH_MULTITOUCHSCREEN_T100, align 4
  %17 = call %struct.mxt_object* @mxt_get_object(%struct.mxt_data* %15, i32 %16)
  store %struct.mxt_object* %17, %struct.mxt_object** %6, align 8
  %18 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %19 = icmp ne %struct.mxt_object* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %163

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %26 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MXT_T100_XRANGE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @__mxt_read_reg(%struct.i2c_client* %24, i64 %29, i32 4, i32* %7)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %163

35:                                               ; preds = %23
  %36 = call i8* @get_unaligned_le16(i32* %7)
  %37 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %38 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %41 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MXT_T100_YRANGE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @__mxt_read_reg(%struct.i2c_client* %39, i64 %44, i32 4, i32* %8)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %163

50:                                               ; preds = %35
  %51 = call i8* @get_unaligned_le16(i32* %8)
  %52 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %53 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %56 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MXT_T100_XSIZE, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %61 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %60, i32 0, i32 0
  %62 = call i32 @__mxt_read_reg(%struct.i2c_client* %54, i64 %59, i32 4, i32* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %163

67:                                               ; preds = %50
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %70 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MXT_T100_YSIZE, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %75 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %74, i32 0, i32 1
  %76 = call i32 @__mxt_read_reg(%struct.i2c_client* %68, i64 %73, i32 4, i32* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %163

81:                                               ; preds = %67
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %84 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MXT_T100_CFG1, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @__mxt_read_reg(%struct.i2c_client* %82, i64 %87, i32 1, i32* %9)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %163

93:                                               ; preds = %81
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @MXT_T100_CFG_SWITCHXY, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %98 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @MXT_T100_CFG_INVERTX, align 4
  %101 = and i32 %99, %100
  %102 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %103 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @MXT_T100_CFG_INVERTY, align 4
  %106 = and i32 %104, %105
  %107 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %108 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = load %struct.mxt_object*, %struct.mxt_object** %6, align 8
  %111 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MXT_T100_TCHAUX, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @__mxt_read_reg(%struct.i2c_client* %109, i64 %114, i32 1, i32* %10)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %93
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %163

120:                                              ; preds = %93
  store i32 6, i32* %11, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @MXT_T100_TCHAUX_VECT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  %128 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %129 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %128, i32 0, i32 7
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @MXT_T100_TCHAUX_AMPL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  %138 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %139 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %138, i32 0, i32 6
  store i32 %136, i32* %139, align 8
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @MXT_T100_TCHAUX_AREA, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  %148 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %149 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %148, i32 0, i32 5
  store i32 %146, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %154 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %157 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %160 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @dev_dbg(i32* %152, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %155, i32 %158, i32 %161)
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %150, %118, %91, %79, %65, %48, %33, %20
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.mxt_object* @mxt_get_object(%struct.mxt_data*, i32) #1

declare dso_local i32 @__mxt_read_reg(%struct.i2c_client*, i64, i32, i32*) #1

declare dso_local i8* @get_unaligned_le16(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
