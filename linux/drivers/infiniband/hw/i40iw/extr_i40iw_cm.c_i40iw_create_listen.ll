; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_create_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_create_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32, %struct.i40iw_cm_listener*, i32, i32 }
%struct.i40iw_cm_listener = type { i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i40iw_device = type { i32 }
%struct.i40iw_cm_info = type { i32, i32, i8*, i32, %struct.iw_cm_id*, i32, i32* }
%struct.sockaddr_in = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i64 0, align 8
@IPV6_ADDR_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cm_listen_node == NULL\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I40IW_MANAGE_APBVT_ADD = common dso_local global i32 0, align 4
@I40IW_QHASH_TYPE_TCP_SYN = common dso_local global i32 0, align 4
@I40IW_QHASH_MANAGE_TYPE_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_create_listen(%struct.iw_cm_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_cm_listener*, align 8
  %8 = alloca %struct.i40iw_cm_info, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %14 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.i40iw_device* @to_iwdev(i32 %15)
  store %struct.i40iw_device* %16, %struct.i40iw_device** %6, align 8
  %17 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %18 = icmp ne %struct.i40iw_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %198

22:                                               ; preds = %2
  %23 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %24 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %23, i32 0, i32 3
  %25 = bitcast i32* %24 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %25, %struct.sockaddr_in** %10, align 8
  %26 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %27 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %26, i32 0, i32 3
  %28 = bitcast i32* %27 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %28, %struct.sockaddr_in6** %11, align 8
  %29 = call i32 @memset(%struct.i40iw_cm_info* %8, i32 0, i32 48)
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ntohl(i64 %40)
  %42 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @ntohs(i32 %47)
  %49 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INADDR_ANY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @i40iw_get_vlan_ipv4(i32* %58)
  %60 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 5
  store i32 %59, i32* %60, align 8
  br label %62

61:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %56
  br label %90

63:                                               ; preds = %22
  %64 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %68 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @i40iw_copy_ip_ntohl(i32* %66, i32 %71)
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ntohs(i32 %75)
  %77 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 2
  store i8* %76, i8** %77, align 8
  %78 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %78, i32 0, i32 0
  %80 = call i64 @ipv6_addr_type(%struct.TYPE_8__* %79)
  %81 = load i64, i64* @IPV6_ADDR_ANY, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %63
  %84 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 5
  %87 = call i32 @i40iw_netdev_vlan_ipv6(i32* %85, i32* %86)
  br label %89

88:                                               ; preds = %63
  store i32 1, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %94 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 4
  store %struct.iw_cm_id* %93, %struct.iw_cm_id** %94, align 8
  %95 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %96 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %95, i32 0, i32 0
  %97 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %98 = call %struct.i40iw_cm_listener* @i40iw_make_listen_node(i32* %96, %struct.i40iw_device* %97, %struct.i40iw_cm_info* %8)
  store %struct.i40iw_cm_listener* %98, %struct.i40iw_cm_listener** %7, align 8
  %99 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %100 = icmp ne %struct.i40iw_cm_listener* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %90
  %102 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %198

105:                                              ; preds = %90
  %106 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %107 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %108 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %107, i32 0, i32 2
  store %struct.i40iw_cm_listener* %106, %struct.i40iw_cm_listener** %108, align 8
  %109 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %110 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %113 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %115 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @rt_tos2priority(i32 %116)
  %118 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %119 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %121 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 3
  store i32 %122, i32* %123, align 8
  %124 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %125 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %178, label %128

128:                                              ; preds = %105
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %137 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %138 = call i32 @i40iw_add_mqh_4(%struct.i40iw_device* %136, %struct.i40iw_cm_info* %8, %struct.i40iw_cm_listener* %137)
  store i32 %138, i32* %9, align 4
  br label %143

139:                                              ; preds = %131
  %140 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %141 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %142 = call i32 @i40iw_add_mqh_6(%struct.i40iw_device* %140, %struct.i40iw_cm_info* %8, %struct.i40iw_cm_listener* %141)
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %190

147:                                              ; preds = %143
  %148 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %149 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* @I40IW_MANAGE_APBVT_ADD, align 4
  %152 = call i32 @i40iw_manage_apbvt(%struct.i40iw_device* %148, i8* %150, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  br label %190

156:                                              ; preds = %147
  br label %177

157:                                              ; preds = %128
  %158 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %159 = load i32, i32* @I40IW_QHASH_TYPE_TCP_SYN, align 4
  %160 = load i32, i32* @I40IW_QHASH_MANAGE_TYPE_ADD, align 4
  %161 = call i32 @i40iw_manage_qhash(%struct.i40iw_device* %158, %struct.i40iw_cm_info* %8, i32 %159, i32 %160, i32* null, i32 1)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %190

165:                                              ; preds = %157
  %166 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %167 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %169 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %8, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* @I40IW_MANAGE_APBVT_ADD, align 4
  %172 = call i32 @i40iw_manage_apbvt(%struct.i40iw_device* %168, i8* %170, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %190

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176, %156
  br label %178

178:                                              ; preds = %177, %105
  %179 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %180 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %179, i32 0, i32 0
  %181 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %180, align 8
  %182 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %183 = call i32 %181(%struct.iw_cm_id* %182)
  %184 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %185 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %184, i32 0, i32 1
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  store i32 0, i32* %3, align 4
  br label %198

190:                                              ; preds = %175, %164, %155, %146
  %191 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %192 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %191, i32 0, i32 0
  %193 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %7, align 8
  %194 = bitcast %struct.i40iw_cm_listener* %193 to i8*
  %195 = call i32 @i40iw_cm_del_listen(i32* %192, i8* %194, i32 0)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %190, %178, %101, %19
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.i40iw_device* @to_iwdev(i32) #1

declare dso_local i32 @memset(%struct.i40iw_cm_info*, i32, i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @i40iw_get_vlan_ipv4(i32*) #1

declare dso_local i32 @i40iw_copy_ip_ntohl(i32*, i32) #1

declare dso_local i64 @ipv6_addr_type(%struct.TYPE_8__*) #1

declare dso_local i32 @i40iw_netdev_vlan_ipv6(i32*, i32*) #1

declare dso_local %struct.i40iw_cm_listener* @i40iw_make_listen_node(i32*, %struct.i40iw_device*, %struct.i40iw_cm_info*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @rt_tos2priority(i32) #1

declare dso_local i32 @i40iw_add_mqh_4(%struct.i40iw_device*, %struct.i40iw_cm_info*, %struct.i40iw_cm_listener*) #1

declare dso_local i32 @i40iw_add_mqh_6(%struct.i40iw_device*, %struct.i40iw_cm_info*, %struct.i40iw_cm_listener*) #1

declare dso_local i32 @i40iw_manage_apbvt(%struct.i40iw_device*, i8*, i32) #1

declare dso_local i32 @i40iw_manage_qhash(%struct.i40iw_device*, %struct.i40iw_cm_info*, i32, i32, i32*, i32) #1

declare dso_local i32 @i40iw_cm_del_listen(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
