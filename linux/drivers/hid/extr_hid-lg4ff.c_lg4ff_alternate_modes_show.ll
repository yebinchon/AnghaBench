; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_alternate_modes_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_alternate_modes_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"NULL pointer to string\0A\00", align 1
@LG4FF_MODE_MAX_IDX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@lg4ff_alternate_modes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c" *\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lg4ff_alternate_modes_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg4ff_alternate_modes_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.lg4ff_device_entry*, align 8
  %10 = alloca %struct.lg_drv_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.hid_device* @to_hid_device(%struct.device* %13)
  store %struct.hid_device* %14, %struct.hid_device** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %16 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.lg_drv_data* %16, %struct.lg_drv_data** %10, align 8
  %17 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %18 = icmp ne %struct.lg_drv_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %21 = call i32 @hid_err(%struct.hid_device* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %164

22:                                               ; preds = %3
  %23 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %24 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %23, i32 0, i32 0
  %25 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %24, align 8
  store %struct.lg4ff_device_entry* %25, %struct.lg4ff_device_entry** %9, align 8
  %26 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %27 = icmp ne %struct.lg4ff_device_entry* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %30 = call i32 @hid_err(%struct.hid_device* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %164

31:                                               ; preds = %22
  %32 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %33 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %39 = call i32 @hid_err(%struct.hid_device* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %164

40:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %159, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @LG4FF_MODE_MAX_IDX, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %162

45:                                               ; preds = %41
  %46 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %47 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %158

54:                                               ; preds = %45
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %54
  %76 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %77 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  br label %87

80:                                               ; preds = %54
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  br label %87

87:                                               ; preds = %80, %75
  %88 = phi i32 [ %79, %75 ], [ %86, %80 ]
  %89 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %58, i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp sge i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %4, align 4
  br label %164

98:                                               ; preds = %87
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %106 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %104, %108
  br i1 %109, label %128, label %110

110:                                              ; preds = %98
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %110
  %119 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %120 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %9, align 8
  %124 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %122, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %118, %98
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %133, %134
  %136 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %132, i32 %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %150

139:                                              ; preds = %118, %110
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* @PAGE_SIZE, align 4
  %145 = load i32, i32* %11, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %143, i32 %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %139, %128
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp sge i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %4, align 4
  br label %164

157:                                              ; preds = %150
  br label %158

158:                                              ; preds = %157, %45
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %41

162:                                              ; preds = %41
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %155, %96, %37, %28, %19
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
