; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_connection.c_vmbus_negotiate_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_connection.c_vmbus_negotiate_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.vmbus_channel_msginfo = type { %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.vmbus_channel_initiate_contact = type { i64, i8*, i8*, i8*, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CHANNELMSG_INITIATE_CONTACT = common dso_local global i32 0, align 4
@VERSION_WIN10_V5 = common dso_local global i64 0, align 8
@VMBUS_MESSAGE_SINT = common dso_local global i32 0, align 4
@VMBUS_MESSAGE_CONNECTION_ID_4 = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@VMBUS_MESSAGE_CONNECTION_ID = common dso_local global i32 0, align 4
@VERSION_WIN8_1 = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_channel_msginfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmbus_channel_initiate_contact*, align 8
  %9 = alloca i64, align 8
  store %struct.vmbus_channel_msginfo* %0, %struct.vmbus_channel_msginfo** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %10, i32 0, i32 2
  %12 = call i32 @init_completion(i32* %11)
  %13 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %14 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vmbus_channel_initiate_contact*
  store %struct.vmbus_channel_initiate_contact* %16, %struct.vmbus_channel_initiate_contact** %8, align 8
  %17 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %18 = call i32 @memset(%struct.vmbus_channel_initiate_contact* %17, i32 0, i32 56)
  %19 = load i32, i32* @CHANNELMSG_INITIATE_CONTACT, align 4
  %20 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %21 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %25 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %24, i32 0, i32 5
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @VERSION_WIN10_V5, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @VMBUS_MESSAGE_SINT, align 4
  %31 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %32 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @VMBUS_MESSAGE_CONNECTION_ID_4, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 1), align 4
  br label %40

34:                                               ; preds = %2
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 6), align 8
  %36 = call i8* @virt_to_phys(i32 %35)
  %37 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %38 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @VMBUS_MESSAGE_CONNECTION_ID, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 1), align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 5), align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @virt_to_phys(i32 %43)
  %45 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %46 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 5), align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @virt_to_phys(i32 %49)
  %51 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %52 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @VERSION_WIN8_1, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %40
  %57 = call i32 (...) @get_cpu()
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @hv_cpu_number_to_vp_number(i32 %58)
  %60 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %61 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 0), align 8
  %63 = call i32 (...) @put_cpu()
  br label %67

64:                                               ; preds = %40
  %65 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %66 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 0), align 8
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %68)
  %70 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %71 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %70, i32 0, i32 1
  %72 = call i32 @list_add_tail(i32* %71, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 4))
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %73)
  %75 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %76 = call i32 @vmbus_post_msg(%struct.vmbus_channel_initiate_contact* %75, i32 56, i32 1)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @trace_vmbus_negotiate_version(%struct.vmbus_channel_initiate_contact* %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %67
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %83)
  %85 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %86 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %85, i32 0, i32 1
  %87 = call i32 @list_del(i32* %86)
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %125

91:                                               ; preds = %67
  %92 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %93 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %92, i32 0, i32 2
  %94 = call i32 @wait_for_completion(i32* %93)
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %95)
  %97 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %98 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %97, i32 0, i32 1
  %99 = call i32 @list_del(i32* %98)
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %100)
  %102 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %103 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %91
  %109 = load i32, i32* @CONNECTED, align 4
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 2), align 8
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @VERSION_WIN10_V5, align 8
  %112 = icmp sge i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %115 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 1), align 4
  br label %119

119:                                              ; preds = %113, %108
  br label %123

120:                                              ; preds = %91
  %121 = load i32, i32* @ECONNREFUSED, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %120, %82
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @memset(%struct.vmbus_channel_initiate_contact*, i32, i32) #1

declare dso_local i8* @virt_to_phys(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @hv_cpu_number_to_vp_number(i32) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_initiate_contact*, i32, i32) #1

declare dso_local i32 @trace_vmbus_negotiate_version(%struct.vmbus_channel_initiate_contact*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
