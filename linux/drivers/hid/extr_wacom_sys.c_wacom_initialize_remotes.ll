; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_initialize_remotes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_initialize_remotes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.TYPE_14__*, %struct.TYPE_12__, %struct.wacom_remote*, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.wacom_remote = type { %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@REMOTE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed allocating remote_fifo\0A\00", align 1
@remote0_serial_group = common dso_local global i32 0, align 4
@remote1_serial_group = common dso_local global i32 0, align 4
@remote2_serial_group = common dso_local global i32 0, align 4
@remote3_serial_group = common dso_local global i32 0, align 4
@remote4_serial_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"wacom_remote\00", align 1
@remote_unpair_attrs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot create sysfs group err: %d\0A\00", align 1
@WACOM_MAX_REMOTES = common dso_local global i32 0, align 4
@WACOM_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@wacom_remotes_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*)* @wacom_initialize_remotes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_initialize_remotes(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wacom_remote*, align 8
  %6 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.wacom*, %struct.wacom** %3, align 8
  %8 = getelementptr inbounds %struct.wacom, %struct.wacom* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REMOTE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %146

15:                                               ; preds = %1
  %16 = load %struct.wacom*, %struct.wacom** %3, align 8
  %17 = getelementptr inbounds %struct.wacom, %struct.wacom* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.wacom_remote* @devm_kzalloc(%struct.TYPE_15__* %19, i32 24, i32 %20)
  store %struct.wacom_remote* %21, %struct.wacom_remote** %5, align 8
  %22 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %23 = icmp ne %struct.wacom_remote* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %146

27:                                               ; preds = %15
  %28 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %29 = load %struct.wacom*, %struct.wacom** %3, align 8
  %30 = getelementptr inbounds %struct.wacom, %struct.wacom* %29, i32 0, i32 2
  store %struct.wacom_remote* %28, %struct.wacom_remote** %30, align 8
  %31 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %32 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %35 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %34, i32 0, i32 2
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kfifo_alloc(i32* %35, i32 20, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.wacom*, %struct.wacom** %3, align 8
  %42 = getelementptr inbounds %struct.wacom, %struct.wacom* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = call i32 (%struct.TYPE_14__*, i8*, ...) @hid_err(%struct.TYPE_14__* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %146

47:                                               ; preds = %27
  %48 = load i32, i32* @remote0_serial_group, align 4
  %49 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %50 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 8
  %54 = load i32, i32* @remote1_serial_group, align 4
  %55 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %56 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 %54, i32* %59, align 8
  %60 = load i32, i32* @remote2_serial_group, align 4
  %61 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %62 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i64 2
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 8
  %66 = load i32, i32* @remote3_serial_group, align 4
  %67 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %68 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 3
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  store i32 %66, i32* %71, align 8
  %72 = load i32, i32* @remote4_serial_group, align 4
  %73 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %74 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i32 %72, i32* %77, align 8
  %78 = load %struct.wacom*, %struct.wacom** %3, align 8
  %79 = getelementptr inbounds %struct.wacom, %struct.wacom* %78, i32 0, i32 0
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %82)
  %84 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %85 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %87 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %47
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %146

93:                                               ; preds = %47
  %94 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %95 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @remote_unpair_attrs, align 4
  %98 = call i32 @sysfs_create_files(i32 %96, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load %struct.wacom*, %struct.wacom** %3, align 8
  %103 = getelementptr inbounds %struct.wacom, %struct.wacom* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 (%struct.TYPE_14__*, i8*, ...) @hid_err(%struct.TYPE_14__* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %146

108:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %130, %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @WACOM_MAX_REMOTES, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  %114 = load i32, i32* @WACOM_STATUS_UNKNOWN, align 4
  %115 = load %struct.wacom*, %struct.wacom** %3, align 8
  %116 = getelementptr inbounds %struct.wacom, %struct.wacom* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i32 %114, i32* %122, align 4
  %123 = load %struct.wacom_remote*, %struct.wacom_remote** %5, align 8
  %124 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %109

133:                                              ; preds = %109
  %134 = load %struct.wacom*, %struct.wacom** %3, align 8
  %135 = getelementptr inbounds %struct.wacom, %struct.wacom* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load i32, i32* @wacom_remotes_destroy, align 4
  %139 = load %struct.wacom*, %struct.wacom** %3, align 8
  %140 = call i32 @devm_add_action_or_reset(%struct.TYPE_15__* %137, i32 %138, %struct.wacom* %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %146

145:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %143, %101, %90, %40, %24, %14
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.wacom_remote* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32 @sysfs_create_files(i32, i32) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_15__*, i32, %struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
