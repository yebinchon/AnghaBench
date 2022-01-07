; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_create_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_create_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, %struct.qedr_iw_listener*, %struct.TYPE_10__, i32 (%struct.iw_cm_id*)*, i32, i32 }
%struct.qedr_iw_listener = type { i32, i32, %struct.iw_cm_id*, %struct.qedr_dev* }
%struct.qedr_dev = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_out*)* }
%struct.qed_iwarp_listen_in = type { i32, i8**, i32, i8*, i32, i32, %struct.qedr_iw_listener* }
%struct.qed_iwarp_listen_out = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@QEDR_MSG_IWARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Create Listener address: %pISpc\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qedr_iw_event_handler = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@QED_TCP_IPV4 = common dso_local global i32 0, align 4
@QED_TCP_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_iw_create_listen(%struct.iw_cm_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qedr_iw_listener*, align 8
  %8 = alloca %struct.qed_iwarp_listen_in, align 8
  %9 = alloca %struct.qed_iwarp_listen_out, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %15 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.qedr_dev* @get_qedr_dev(i32 %16)
  store %struct.qedr_dev* %17, %struct.qedr_dev** %6, align 8
  %18 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %19 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %18, i32 0, i32 4
  %20 = bitcast i32* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %10, align 8
  %21 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %22 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %21, i32 0, i32 4
  %23 = bitcast i32* %22 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %23, %struct.sockaddr_in6** %11, align 8
  %24 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %25 = load i32, i32* @QEDR_MSG_IWARP, align 4
  %26 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %27 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %26, i32 0, i32 2
  %28 = call i32 @DP_DEBUG(%struct.qedr_dev* %24, i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.qedr_iw_listener* @kzalloc(i32 24, i32 %29)
  store %struct.qedr_iw_listener* %30, %struct.qedr_iw_listener** %7, align 8
  %31 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %32 = icmp ne %struct.qedr_iw_listener* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %157

36:                                               ; preds = %2
  %37 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %38 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %39 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %38, i32 0, i32 3
  store %struct.qedr_dev* %37, %struct.qedr_dev** %39, align 8
  %40 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %41 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %40, i32 0, i32 3
  %42 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %41, align 8
  %43 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %44 = call i32 %42(%struct.iw_cm_id* %43)
  %45 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %46 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %47 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %46, i32 0, i32 2
  store %struct.iw_cm_id* %45, %struct.iw_cm_id** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %50 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %52 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 6
  store %struct.qedr_iw_listener* %51, %struct.qedr_iw_listener** %52, align 8
  %53 = load i32, i32* @qedr_iw_event_handler, align 4
  %54 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @CONFIG_IPV6, align 4
  %58 = call i32 @IS_ENABLED(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %36
  %61 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %62 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AF_INET, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %60, %36
  %68 = load i32, i32* @QED_TCP_IPV4, align 4
  %69 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 4
  store i32 %68, i32* %69, align 8
  %70 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = call i32 @memset(i8** %71, i32 0, i32 8)
  %73 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @ntohl(i32 %76)
  %78 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %77, i8** %80, align 8
  %81 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @ntohs(i32 %83)
  %85 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 3
  store i8* %84, i8** %85, align 8
  %86 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %87 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = call i32 @qedr_iw_get_vlan_ipv4(%struct.qedr_dev* %86, i8** %88)
  %90 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  br label %126

91:                                               ; preds = %60
  %92 = load i32, i32* @QED_TCP_IPV6, align 4
  %93 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 4
  store i32 %92, i32* %93, align 8
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %113, %91
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @ntohl(i32 %106)
  %108 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 1
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %107, i8** %112, align 8
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %94

116:                                              ; preds = %94
  %117 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @ntohs(i32 %119)
  %121 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 3
  store i8* %120, i8** %121, align 8
  %122 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = call i32 @qedr_iw_get_vlan_ipv6(i8** %123)
  %125 = getelementptr inbounds %struct.qed_iwarp_listen_in, %struct.qed_iwarp_listen_in* %8, i32 0, i32 2
  store i32 %124, i32* %125, align 8
  br label %126

126:                                              ; preds = %116, %67
  %127 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %128 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %127, i32 0, i32 1
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32 (i32, %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_out*)*, i32 (i32, %struct.qed_iwarp_listen_in*, %struct.qed_iwarp_listen_out*)** %130, align 8
  %132 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %133 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %131(i32 %134, %struct.qed_iwarp_listen_in* %8, %struct.qed_iwarp_listen_out* %9)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %148

139:                                              ; preds = %126
  %140 = getelementptr inbounds %struct.qed_iwarp_listen_out, %struct.qed_iwarp_listen_out* %9, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %143 = getelementptr inbounds %struct.qedr_iw_listener, %struct.qedr_iw_listener* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %145 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %146 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %145, i32 0, i32 1
  store %struct.qedr_iw_listener* %144, %struct.qedr_iw_listener** %146, align 8
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %3, align 4
  br label %157

148:                                              ; preds = %138
  %149 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %150 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %149, i32 0, i32 0
  %151 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %150, align 8
  %152 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %153 = call i32 %151(%struct.iw_cm_id* %152)
  %154 = load %struct.qedr_iw_listener*, %struct.qedr_iw_listener** %7, align 8
  %155 = call i32 @kfree(%struct.qedr_iw_listener* %154)
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %148, %139, %33
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, %struct.TYPE_10__*) #1

declare dso_local %struct.qedr_iw_listener* @kzalloc(i32, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @qedr_iw_get_vlan_ipv4(%struct.qedr_dev*, i8**) #1

declare dso_local i32 @qedr_iw_get_vlan_ipv6(i8**) #1

declare dso_local i32 @kfree(%struct.qedr_iw_listener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
