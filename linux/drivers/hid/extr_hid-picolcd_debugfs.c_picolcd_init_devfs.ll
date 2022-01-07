; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c_picolcd_init_devfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_debugfs.c_picolcd_init_devfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32, i8*, i8*, i8*, i32, %struct.hid_device* }
%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@picolcd_debug_reset_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@picolcd_debug_eeprom_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@picolcd_debug_flash_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Unexpected FLASH access reports, please submit rdesc for review\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @picolcd_init_devfs(%struct.picolcd_data* %0, %struct.hid_report* %1, %struct.hid_report* %2, %struct.hid_report* %3, %struct.hid_report* %4, %struct.hid_report* %5) #0 {
  %7 = alloca %struct.picolcd_data*, align 8
  %8 = alloca %struct.hid_report*, align 8
  %9 = alloca %struct.hid_report*, align 8
  %10 = alloca %struct.hid_report*, align 8
  %11 = alloca %struct.hid_report*, align 8
  %12 = alloca %struct.hid_report*, align 8
  %13 = alloca %struct.hid_device*, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %7, align 8
  store %struct.hid_report* %1, %struct.hid_report** %8, align 8
  store %struct.hid_report* %2, %struct.hid_report** %9, align 8
  store %struct.hid_report* %3, %struct.hid_report** %10, align 8
  store %struct.hid_report* %4, %struct.hid_report** %11, align 8
  store %struct.hid_report* %5, %struct.hid_report** %12, align 8
  %14 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %15 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %14, i32 0, i32 5
  %16 = load %struct.hid_device*, %struct.hid_device** %15, align 8
  store %struct.hid_device* %16, %struct.hid_device** %13, align 8
  %17 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %18 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %17, i32 0, i32 4
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %21 = icmp ne %struct.hid_report* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load %struct.hid_device*, %struct.hid_device** %13, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %27 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 384, i32 %25, %struct.picolcd_data* %26, i32* @picolcd_debug_reset_fops)
  %28 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %29 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %22, %6
  %31 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %32 = icmp ne %struct.hid_report* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %35 = icmp ne %struct.hid_report* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %33, %30
  %37 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %38 = icmp ne %struct.hid_report* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @S_IWUSR, align 4
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %45 = icmp ne %struct.hid_report* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @S_IRUSR, align 4
  br label %49

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = or i32 %43, %50
  %52 = load %struct.hid_device*, %struct.hid_device** %13, align 8
  %53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %56 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54, %struct.picolcd_data* %55, i32* @picolcd_debug_eeprom_fops)
  %57 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %58 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %49, %33
  %60 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %61 = icmp ne %struct.hid_report* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %64 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %69 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %70, i64 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %87

76:                                               ; preds = %67
  %77 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %78 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %86 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %90

87:                                               ; preds = %67, %62, %59
  %88 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %89 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %76
  %91 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %92 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %97 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %123

100:                                              ; preds = %95, %90
  %101 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %102 = icmp ne %struct.hid_report* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @S_IWUSR, align 4
  br label %106

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  %108 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %109 = icmp ne %struct.hid_report* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @S_IRUSR, align 4
  br label %113

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = or i32 %107, %114
  %116 = load %struct.hid_device*, %struct.hid_device** %13, align 8
  %117 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %120 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %118, %struct.picolcd_data* %119, i32* @picolcd_debug_flash_fops)
  %121 = load %struct.picolcd_data*, %struct.picolcd_data** %7, align 8
  %122 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %133

123:                                              ; preds = %95
  %124 = load %struct.hid_report*, %struct.hid_report** %10, align 8
  %125 = icmp ne %struct.hid_report* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %128 = icmp ne %struct.hid_report* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %123
  %130 = load %struct.hid_device*, %struct.hid_device** %13, align 8
  %131 = call i32 @hid_warn(%struct.hid_device* %130, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %113
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i32, %struct.picolcd_data*, i32*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
