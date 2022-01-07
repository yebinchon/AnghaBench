; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_create_sysfs_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_create_sysfs_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_9__, %struct.i7core_pvt* }
%struct.TYPE_9__ = type { i32 }
%struct.i7core_pvt = type { %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@addrmatch_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"inject_addrmatch\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"creating %s\0A\00", align 1
@all_channel_counts_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"all_channel_counts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @i7core_create_sysfs_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i7core_create_sysfs_devices(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7core_pvt*, align 8
  %5 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 1
  %8 = load %struct.i7core_pvt*, %struct.i7core_pvt** %7, align 8
  store %struct.i7core_pvt* %8, %struct.i7core_pvt** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kzalloc(i32 24, i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  %12 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %13 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %12, i32 0, i32 0
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %13, align 8
  %14 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %15 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %145

21:                                               ; preds = %1
  %22 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %23 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  store i32* @addrmatch_type, i32** %25, align 8
  %26 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %27 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %31 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %35 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = call i32 @device_initialize(%struct.TYPE_10__* %36)
  %38 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %39 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %38, i32 0, i32 0
  %40 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %41 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %43, align 8
  %44 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %45 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = call i32 @dev_set_name(%struct.TYPE_10__* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %49 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %52 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %50, %struct.mem_ctl_info* %51)
  %53 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %54 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = call i32 @dev_name(%struct.TYPE_10__* %55)
  %57 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %59 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = call i32 @device_add(%struct.TYPE_10__* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %21
  br label %139

65:                                               ; preds = %21
  %66 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %67 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %128, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kzalloc(i32 24, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_10__*
  %74 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %75 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %74, i32 0, i32 1
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %75, align 8
  %76 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %77 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %134

83:                                               ; preds = %70
  %84 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %85 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i32* @all_channel_counts_type, i32** %87, align 8
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %89 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %93 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 8
  %96 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %97 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = call i32 @device_initialize(%struct.TYPE_10__* %98)
  %100 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %101 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %100, i32 0, i32 0
  %102 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %103 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %105, align 8
  %106 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %107 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @dev_set_name(%struct.TYPE_10__* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %111 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %114 = call i32 @dev_set_drvdata(%struct.TYPE_10__* %112, %struct.mem_ctl_info* %113)
  %115 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %116 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = call i32 @dev_name(%struct.TYPE_10__* %117)
  %119 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %121 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = call i32 @device_add(%struct.TYPE_10__* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %83
  br label %129

127:                                              ; preds = %83
  br label %128

128:                                              ; preds = %127, %65
  store i32 0, i32* %2, align 4
  br label %145

129:                                              ; preds = %126
  %130 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %131 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = call i32 @put_device(%struct.TYPE_10__* %132)
  br label %134

134:                                              ; preds = %129, %80
  %135 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %136 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = call i32 @device_del(%struct.TYPE_10__* %137)
  br label %139

139:                                              ; preds = %134, %64
  %140 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %141 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = call i32 @put_device(%struct.TYPE_10__* %142)
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %128, %18
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_10__*, %struct.mem_ctl_info*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @device_add(%struct.TYPE_10__*) #1

declare dso_local i32 @put_device(%struct.TYPE_10__*) #1

declare dso_local i32 @device_del(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
