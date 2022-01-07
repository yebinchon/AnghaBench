; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c__gb_connection_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_connection.c__gb_connection_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.gb_bundle*, %struct.gb_interface*, %struct.gb_host_device* }
%struct.gb_host_device = type { i32, i32 }
%struct.gb_interface = type { i32, i32 }
%struct.gb_bundle = type { i32 }

@gb_connection_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cport %u already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to allocate cport: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_INTERFACE_QUIRK_NO_CPORT_FEATURES = common dso_local global i32 0, align 4
@GB_CONNECTION_FLAG_NO_FLOWCTRL = common dso_local global i64 0, align 8
@GB_CONNECTION_STATE_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@gb_connections_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_connection* (%struct.gb_host_device*, i32, %struct.gb_interface*, %struct.gb_bundle*, i32, i32, i64)* @_gb_connection_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_connection* @_gb_connection_create(%struct.gb_host_device* %0, i32 %1, %struct.gb_interface* %2, %struct.gb_bundle* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca %struct.gb_host_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gb_interface*, align 8
  %12 = alloca %struct.gb_bundle*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.gb_connection*, align 8
  %17 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.gb_interface* %2, %struct.gb_interface** %11, align 8
  store %struct.gb_bundle* %3, %struct.gb_bundle** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %18 = call i32 @mutex_lock(i32* @gb_connection_mutex)
  %19 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %20 = icmp ne %struct.gb_interface* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %7
  %22 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @gb_connection_cport_in_use(%struct.gb_interface* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %28 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %27, i32 0, i32 1
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %17, align 4
  br label %159

33:                                               ; preds = %21, %7
  %34 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i64, i64* %15, align 8
  %37 = call i32 @gb_hd_cport_allocate(%struct.gb_host_device* %34, i32 %35, i64 %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  %42 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %41, i32 0, i32 1
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %159

45:                                               ; preds = %33
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.gb_connection* @kzalloc(i32 80, i32 %47)
  store %struct.gb_connection* %48, %struct.gb_connection** %16, align 8
  %49 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %50 = icmp ne %struct.gb_connection* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %17, align 4
  br label %155

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %57 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %60 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  %62 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %63 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %62, i32 0, i32 15
  store %struct.gb_host_device* %61, %struct.gb_host_device** %63, align 8
  %64 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %65 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %66 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %65, i32 0, i32 14
  store %struct.gb_interface* %64, %struct.gb_interface** %66, align 8
  %67 = load %struct.gb_bundle*, %struct.gb_bundle** %12, align 8
  %68 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %69 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %68, i32 0, i32 13
  store %struct.gb_bundle* %67, %struct.gb_bundle** %69, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %72 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 4
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %75 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %77 = icmp ne %struct.gb_interface* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %54
  %79 = load %struct.gb_interface*, %struct.gb_interface** %11, align 8
  %80 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GB_INTERFACE_QUIRK_NO_CPORT_FEATURES, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i64, i64* @GB_CONNECTION_FLAG_NO_FLOWCTRL, align 8
  %87 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %88 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = or i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %85, %78, %54
  %92 = load i32, i32* @GB_CONNECTION_STATE_DISABLED, align 4
  %93 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %94 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 8
  %95 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %96 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %95, i32 0, i32 10
  %97 = call i32 @atomic_set(i32* %96, i32 0)
  %98 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %99 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %98, i32 0, i32 9
  %100 = call i32 @mutex_init(i32* %99)
  %101 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %102 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %101, i32 0, i32 8
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %105 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %104, i32 0, i32 7
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load i32, i32* @WQ_UNBOUND, align 4
  %108 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  %109 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %108, i32 0, i32 1
  %110 = call i32 @dev_name(i32* %109)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 1, i32 %110, i32 %111)
  %113 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %114 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %116 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %91
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %17, align 4
  br label %152

122:                                              ; preds = %91
  %123 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %124 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %123, i32 0, i32 5
  %125 = call i32 @kref_init(i32* %124)
  %126 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %127 = call i32 @gb_connection_init_name(%struct.gb_connection* %126)
  %128 = call i32 @spin_lock_irq(i32* @gb_connections_lock)
  %129 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %130 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %129, i32 0, i32 4
  %131 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  %132 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %131, i32 0, i32 0
  %133 = call i32 @list_add(i32* %130, i32* %132)
  %134 = load %struct.gb_bundle*, %struct.gb_bundle** %12, align 8
  %135 = icmp ne %struct.gb_bundle* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %138 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %137, i32 0, i32 3
  %139 = load %struct.gb_bundle*, %struct.gb_bundle** %12, align 8
  %140 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %139, i32 0, i32 0
  %141 = call i32 @list_add(i32* %138, i32* %140)
  br label %146

142:                                              ; preds = %122
  %143 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %144 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %143, i32 0, i32 3
  %145 = call i32 @INIT_LIST_HEAD(i32* %144)
  br label %146

146:                                              ; preds = %142, %136
  %147 = call i32 @spin_unlock_irq(i32* @gb_connections_lock)
  %148 = call i32 @mutex_unlock(i32* @gb_connection_mutex)
  %149 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %150 = call i32 @trace_gb_connection_create(%struct.gb_connection* %149)
  %151 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  store %struct.gb_connection* %151, %struct.gb_connection** %8, align 8
  br label %163

152:                                              ; preds = %119
  %153 = load %struct.gb_connection*, %struct.gb_connection** %16, align 8
  %154 = call i32 @kfree(%struct.gb_connection* %153)
  br label %155

155:                                              ; preds = %152, %51
  %156 = load %struct.gb_host_device*, %struct.gb_host_device** %9, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @gb_hd_cport_release(%struct.gb_host_device* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %40, %26
  %160 = call i32 @mutex_unlock(i32* @gb_connection_mutex)
  %161 = load i32, i32* %17, align 4
  %162 = call %struct.gb_connection* @ERR_PTR(i32 %161)
  store %struct.gb_connection* %162, %struct.gb_connection** %8, align 8
  br label %163

163:                                              ; preds = %159, %146
  %164 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  ret %struct.gb_connection* %164
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @gb_connection_cport_in_use(%struct.gb_interface*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @gb_hd_cport_allocate(%struct.gb_host_device*, i32, i64) #1

declare dso_local %struct.gb_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @gb_connection_init_name(%struct.gb_connection*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @trace_gb_connection_create(%struct.gb_connection*) #1

declare dso_local i32 @kfree(%struct.gb_connection*) #1

declare dso_local i32 @gb_hd_cport_release(%struct.gb_host_device*, i32) #1

declare dso_local %struct.gb_connection* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
