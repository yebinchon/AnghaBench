; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_find_mad_agent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_find_mad_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_mad_port_private = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_class_table* }
%struct.ib_mad_mgmt_vendor_class_table = type { %struct.ib_mad_mgmt_vendor_class** }
%struct.ib_mad_mgmt_vendor_class = type { %struct.ib_mad_mgmt_method_table** }
%struct.ib_mad_mgmt_method_table = type { %struct.ib_mad_agent_private** }
%struct.ib_mad_mgmt_class_table = type { %struct.ib_mad_mgmt_method_table** }
%struct.ib_mad_hdr = type { i64, i64, i32, i32 }
%struct.ib_vendor_mad = type { i32 }

@ib_mad_clients = common dso_local global i32 0, align 4
@MAX_MGMT_VERSION = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_RESP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"No receive handler for client %p on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mad_agent_private* (%struct.ib_mad_port_private*, %struct.ib_mad_hdr*)* @find_mad_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mad_agent_private* @find_mad_agent(%struct.ib_mad_port_private* %0, %struct.ib_mad_hdr* %1) #0 {
  %3 = alloca %struct.ib_mad_port_private*, align 8
  %4 = alloca %struct.ib_mad_hdr*, align 8
  %5 = alloca %struct.ib_mad_agent_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_mgmt_class_table*, align 8
  %9 = alloca %struct.ib_mad_mgmt_method_table*, align 8
  %10 = alloca %struct.ib_mad_mgmt_vendor_class_table*, align 8
  %11 = alloca %struct.ib_mad_mgmt_vendor_class*, align 8
  %12 = alloca %struct.ib_vendor_mad*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_mad_port_private* %0, %struct.ib_mad_port_private** %3, align 8
  store %struct.ib_mad_hdr* %1, %struct.ib_mad_hdr** %4, align 8
  store %struct.ib_mad_agent_private* null, %struct.ib_mad_agent_private** %5, align 8
  %14 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %15 = call i64 @ib_response_mad(%struct.ib_mad_hdr* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be64_to_cpu(i32 %20)
  %22 = ashr i32 %21, 32
  store i32 %22, i32* %7, align 4
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.ib_mad_agent_private* @xa_load(i32* @ib_mad_clients, i32 %24)
  store %struct.ib_mad_agent_private* %25, %struct.ib_mad_agent_private** %5, align 8
  %26 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %27 = icmp ne %struct.ib_mad_agent_private* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %30 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %29, i32 0, i32 1
  %31 = call i32 @atomic_inc_not_zero(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store %struct.ib_mad_agent_private* null, %struct.ib_mad_agent_private** %5, align 8
  br label %34

34:                                               ; preds = %33, %28, %17
  %35 = call i32 (...) @rcu_read_unlock()
  br label %175

36:                                               ; preds = %2
  %37 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %38 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %37, i32 0, i32 2
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %42 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MAX_MGMT_VERSION, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %170

47:                                               ; preds = %36
  %48 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %49 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @is_vendor_class(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %102, label %53

53:                                               ; preds = %47
  %54 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %55 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %58 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %61, align 8
  store %struct.ib_mad_mgmt_class_table* %62, %struct.ib_mad_mgmt_class_table** %8, align 8
  %63 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %8, align 8
  %64 = icmp ne %struct.ib_mad_mgmt_class_table* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %170

66:                                               ; preds = %53
  %67 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %68 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @convert_mgmt_class(i32 %69)
  %71 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %8, align 8
  %72 = getelementptr inbounds %struct.ib_mad_mgmt_class_table, %struct.ib_mad_mgmt_class_table* %71, i32 0, i32 0
  %73 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %72, align 8
  %74 = call i64 @ARRAY_SIZE(%struct.ib_mad_mgmt_method_table** %73)
  %75 = icmp uge i64 %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %170

77:                                               ; preds = %66
  %78 = load %struct.ib_mad_mgmt_class_table*, %struct.ib_mad_mgmt_class_table** %8, align 8
  %79 = getelementptr inbounds %struct.ib_mad_mgmt_class_table, %struct.ib_mad_mgmt_class_table* %78, i32 0, i32 0
  %80 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %79, align 8
  %81 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %82 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @convert_mgmt_class(i32 %83)
  %85 = getelementptr inbounds %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %80, i64 %84
  %86 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %85, align 8
  store %struct.ib_mad_mgmt_method_table* %86, %struct.ib_mad_mgmt_method_table** %9, align 8
  %87 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %9, align 8
  %88 = icmp ne %struct.ib_mad_mgmt_method_table* %87, null
  br i1 %88, label %89, label %101

89:                                               ; preds = %77
  %90 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %9, align 8
  %91 = getelementptr inbounds %struct.ib_mad_mgmt_method_table, %struct.ib_mad_mgmt_method_table* %90, i32 0, i32 0
  %92 = load %struct.ib_mad_agent_private**, %struct.ib_mad_agent_private*** %91, align 8
  %93 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %94 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IB_MGMT_METHOD_RESP, align 8
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = getelementptr inbounds %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %92, i64 %98
  %100 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %99, align 8
  store %struct.ib_mad_agent_private* %100, %struct.ib_mad_agent_private** %5, align 8
  br label %101

101:                                              ; preds = %89, %77
  br label %162

102:                                              ; preds = %47
  %103 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %104 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %107 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %110, align 8
  store %struct.ib_mad_mgmt_vendor_class_table* %111, %struct.ib_mad_mgmt_vendor_class_table** %10, align 8
  %112 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %10, align 8
  %113 = icmp ne %struct.ib_mad_mgmt_vendor_class_table* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %102
  br label %170

115:                                              ; preds = %102
  %116 = load %struct.ib_mad_mgmt_vendor_class_table*, %struct.ib_mad_mgmt_vendor_class_table** %10, align 8
  %117 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class_table, %struct.ib_mad_mgmt_vendor_class_table* %116, i32 0, i32 0
  %118 = load %struct.ib_mad_mgmt_vendor_class**, %struct.ib_mad_mgmt_vendor_class*** %117, align 8
  %119 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %120 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @vendor_class_index(i32 %121)
  %123 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %118, i64 %122
  %124 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %123, align 8
  store %struct.ib_mad_mgmt_vendor_class* %124, %struct.ib_mad_mgmt_vendor_class** %11, align 8
  %125 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %11, align 8
  %126 = icmp ne %struct.ib_mad_mgmt_vendor_class* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %115
  br label %170

128:                                              ; preds = %115
  %129 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %130 = bitcast %struct.ib_mad_hdr* %129 to %struct.ib_vendor_mad*
  store %struct.ib_vendor_mad* %130, %struct.ib_vendor_mad** %12, align 8
  %131 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %11, align 8
  %132 = load %struct.ib_vendor_mad*, %struct.ib_vendor_mad** %12, align 8
  %133 = getelementptr inbounds %struct.ib_vendor_mad, %struct.ib_vendor_mad* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @find_vendor_oui(%struct.ib_mad_mgmt_vendor_class* %131, i32 %134)
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %170

139:                                              ; preds = %128
  %140 = load %struct.ib_mad_mgmt_vendor_class*, %struct.ib_mad_mgmt_vendor_class** %11, align 8
  %141 = getelementptr inbounds %struct.ib_mad_mgmt_vendor_class, %struct.ib_mad_mgmt_vendor_class* %140, i32 0, i32 0
  %142 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %142, i64 %144
  %146 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %145, align 8
  store %struct.ib_mad_mgmt_method_table* %146, %struct.ib_mad_mgmt_method_table** %9, align 8
  %147 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %9, align 8
  %148 = icmp ne %struct.ib_mad_mgmt_method_table* %147, null
  br i1 %148, label %149, label %161

149:                                              ; preds = %139
  %150 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %9, align 8
  %151 = getelementptr inbounds %struct.ib_mad_mgmt_method_table, %struct.ib_mad_mgmt_method_table* %150, i32 0, i32 0
  %152 = load %struct.ib_mad_agent_private**, %struct.ib_mad_agent_private*** %151, align 8
  %153 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %154 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IB_MGMT_METHOD_RESP, align 8
  %157 = xor i64 %156, -1
  %158 = and i64 %155, %157
  %159 = getelementptr inbounds %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %152, i64 %158
  %160 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %159, align 8
  store %struct.ib_mad_agent_private* %160, %struct.ib_mad_agent_private** %5, align 8
  br label %161

161:                                              ; preds = %149, %139
  br label %162

162:                                              ; preds = %161, %101
  %163 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %164 = icmp ne %struct.ib_mad_agent_private* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %167 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %166, i32 0, i32 1
  %168 = call i32 @atomic_inc(i32* %167)
  br label %169

169:                                              ; preds = %165, %162
  br label %170

170:                                              ; preds = %169, %138, %127, %114, %76, %65, %46
  %171 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %172 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %171, i32 0, i32 2
  %173 = load i64, i64* %6, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  br label %175

175:                                              ; preds = %170, %34
  %176 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %177 = icmp ne %struct.ib_mad_agent_private* %176, null
  br i1 %177, label %178, label %197

178:                                              ; preds = %175
  %179 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %180 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %178
  %185 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %186 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %185, i32 0, i32 1
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %190 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %189, i32 0, i32 0
  %191 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %3, align 8
  %192 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @dev_notice(i32* %188, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %190, i32 %193)
  %195 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %196 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %195)
  store %struct.ib_mad_agent_private* null, %struct.ib_mad_agent_private** %5, align 8
  br label %197

197:                                              ; preds = %184, %178, %175
  %198 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  ret %struct.ib_mad_agent_private* %198
}

declare dso_local i64 @ib_response_mad(%struct.ib_mad_hdr*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ib_mad_agent_private* @xa_load(i32*, i32) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @is_vendor_class(i32) #1

declare dso_local i64 @convert_mgmt_class(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.ib_mad_mgmt_method_table**) #1

declare dso_local i64 @vendor_class_index(i32) #1

declare dso_local i32 @find_vendor_oui(%struct.ib_mad_mgmt_vendor_class*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_notice(i32*, i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
