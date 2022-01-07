; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_set_num_expected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_set_num_expected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.hid_report = type { i32, i64, %struct.hid_field** }
%struct.hid_field = type { i32, i32*, %struct.hid_usage* }
%struct.hid_usage = type { i64, i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_4__, %struct.hid_data }
%struct.TYPE_4__ = type { i32 }
%struct.hid_data = type { i32, i64, i32, i32 }

@HID_DG_CONTACTCOUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*, i32, %struct.hid_field*, i32)* @wacom_set_num_expected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_set_num_expected(%struct.hid_device* %0, %struct.hid_report* %1, i32 %2, %struct.hid_field* %3, i32 %4) #0 {
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wacom*, align 8
  %12 = alloca %struct.wacom_wac*, align 8
  %13 = alloca %struct.hid_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hid_field*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.hid_usage*, align 8
  %21 = alloca %struct.hid_field*, align 8
  %22 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.hid_field* %3, %struct.hid_field** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %24 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %23)
  store %struct.wacom* %24, %struct.wacom** %11, align 8
  %25 = load %struct.wacom*, %struct.wacom** %11, align 8
  %26 = getelementptr inbounds %struct.wacom, %struct.wacom* %25, i32 0, i32 0
  store %struct.wacom_wac* %26, %struct.wacom_wac** %12, align 8
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %12, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 1
  store %struct.hid_data* %28, %struct.hid_data** %13, align 8
  %29 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %37 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %38 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  br label %181

42:                                               ; preds = %5
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %161, %42
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %47 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i1 [ false, %44 ], [ %53, %50 ]
  br i1 %55, label %56, label %164

56:                                               ; preds = %54
  %57 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %58 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %57, i32 0, i32 2
  %59 = load %struct.hid_field**, %struct.hid_field*** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %59, i64 %61
  %63 = load %struct.hid_field*, %struct.hid_field** %62, align 8
  store %struct.hid_field* %63, %struct.hid_field** %17, align 8
  %64 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %65 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load %struct.hid_field*, %struct.hid_field** %17, align 8
  %68 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %67, i32 0, i32 2
  %69 = load %struct.hid_usage*, %struct.hid_usage** %68, align 8
  %70 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %69, i64 0
  %71 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %56
  br label %161

80:                                               ; preds = %56
  store i32 0, i32* %19, align 4
  br label %81

81:                                               ; preds = %157, %80
  %82 = load i32, i32* %19, align 4
  %83 = load %struct.hid_field*, %struct.hid_field** %17, align 8
  %84 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %160

87:                                               ; preds = %81
  %88 = load %struct.hid_field*, %struct.hid_field** %17, align 8
  %89 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %88, i32 0, i32 2
  %90 = load %struct.hid_usage*, %struct.hid_usage** %89, align 8
  %91 = load i32, i32* %19, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %90, i64 %92
  store %struct.hid_usage* %93, %struct.hid_usage** %20, align 8
  %94 = load %struct.hid_usage*, %struct.hid_usage** %20, align 8
  %95 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  store i32 1, i32* %15, align 4
  br label %160

101:                                              ; preds = %87
  %102 = load %struct.hid_usage*, %struct.hid_usage** %20, align 8
  %103 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @wacom_equivalent_usage(i32 %104)
  %106 = load i64, i64* @HID_DG_CONTACTCOUNT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %156

108:                                              ; preds = %101
  %109 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %110 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %113 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %116 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %119 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %121 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %155

124:                                              ; preds = %108
  %125 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %126 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %155

129:                                              ; preds = %124
  %130 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %131 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %130, i32 0, i32 2
  %132 = load %struct.hid_field**, %struct.hid_field*** %131, align 8
  %133 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %134 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %132, i64 %136
  %138 = load %struct.hid_field*, %struct.hid_field** %137, align 8
  store %struct.hid_field* %138, %struct.hid_field** %21, align 8
  %139 = load %struct.hid_field*, %struct.hid_field** %21, align 8
  %140 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %143 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %22, align 4
  %148 = load i32, i32* %22, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %129
  %151 = load i32, i32* %22, align 4
  %152 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %153 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %129
  br label %155

155:                                              ; preds = %154, %124, %108
  br label %156

156:                                              ; preds = %155, %101
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %19, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %19, align 4
  br label %81

160:                                              ; preds = %100, %81
  br label %161

161:                                              ; preds = %160, %79
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  br label %44

164:                                              ; preds = %54
  %165 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %166 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %171 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169, %164
  %175 = load %struct.wacom_wac*, %struct.wacom_wac** %12, align 8
  %176 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.hid_data*, %struct.hid_data** %13, align 8
  %180 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %41, %174, %169
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @wacom_equivalent_usage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
