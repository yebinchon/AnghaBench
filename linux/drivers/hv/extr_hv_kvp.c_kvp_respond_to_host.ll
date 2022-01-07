; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_respond_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_respond_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__*, i32, %struct.vmbus_channel*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vmbus_channel = type { i32* }
%struct.hv_kvp_msg = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.hv_kvp_exchg_msg_value }
%struct.hv_kvp_exchg_msg_value = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_9__ = type { %struct.hv_kvp_exchg_msg_value }
%struct.icmsg_hdr = type { i32, i32 }
%struct.hv_kvp_ip_msg = type { i32 }

@kvp_transaction = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@recv_buffer = common dso_local global i32* null, align 8
@HV_E_FAIL = common dso_local global i8* null, align 8
@UTF16_HOST_ENDIAN = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_kvp_msg*, i32)* @kvp_respond_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_respond_to_host(%struct.hv_kvp_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.hv_kvp_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_kvp_msg*, align 8
  %6 = alloca %struct.hv_kvp_exchg_msg_value*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.icmsg_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmbus_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hv_kvp_msg* %0, %struct.hv_kvp_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 3), align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 2), align 8
  store %struct.vmbus_channel* %17, %struct.vmbus_channel** %13, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 1), align 8
  store i32 %18, i32* %14, align 4
  %19 = load i32*, i32** @recv_buffer, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = bitcast i32* %20 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %21, %struct.icmsg_hdr** %9, align 8
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %13, align 8
  %23 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %141

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %30 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %129

34:                                               ; preds = %27
  %35 = load i32*, i32** @recv_buffer, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 12
  %37 = bitcast i32* %36 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %37, %struct.hv_kvp_msg** %5, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %62 [
    i32 130, label %42
    i32 128, label %55
    i32 131, label %56
    i32 129, label %61
    i32 132, label %61
  ]

42:                                               ; preds = %34
  %43 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %44 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %45 = bitcast %struct.hv_kvp_msg* %44 to %struct.hv_kvp_ip_msg*
  %46 = call i32 @process_ob_ipinfo(%struct.hv_kvp_msg* %43, %struct.hv_kvp_ip_msg* %45, i32 130)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i8*, i8** @HV_E_FAIL, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %53 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %42
  br label %129

55:                                               ; preds = %34
  br label %129

56:                                               ; preds = %34
  %57 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %58 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store %struct.hv_kvp_exchg_msg_value* %60, %struct.hv_kvp_exchg_msg_value** %6, align 8
  br label %91

61:                                               ; preds = %34, %34
  br label %129

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %65 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store %struct.hv_kvp_exchg_msg_value* %67, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %68 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %69 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %78 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %79 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %83 = sdiv i32 %82, 2
  %84 = sub nsw i32 %83, 2
  %85 = call i32 @utf8s_to_utf16s(i8* %74, i32 %76, i32 %77, i32* %81, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  %88 = mul nsw i32 2, %87
  %89 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %90 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %63, %56
  %92 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %93 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %102 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %103 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %107 = sdiv i32 %106, 2
  %108 = sub nsw i32 %107, 2
  %109 = call i32 @utf8s_to_utf16s(i8* %98, i32 %100, i32 %101, i32* %105, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  %112 = mul nsw i32 2, %111
  %113 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %114 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %91
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117, %91
  %121 = load i8*, i8** @HV_E_FAIL, align 8
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %124 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* @REG_SZ, align 4
  %127 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %128 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %61, %55, %54, %33
  %130 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %131 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %134 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.vmbus_channel*, %struct.vmbus_channel** %13, align 8
  %136 = load i32*, i32** @recv_buffer, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %140 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %135, i32* %136, i32 %137, i32 %138, i32 %139, i32 0)
  br label %141

141:                                              ; preds = %129, %26
  ret void
}

declare dso_local i32 @process_ob_ipinfo(%struct.hv_kvp_msg*, %struct.hv_kvp_ip_msg*, i32) #1

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
