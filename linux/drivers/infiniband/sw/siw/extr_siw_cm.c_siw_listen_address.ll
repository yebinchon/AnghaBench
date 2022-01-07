; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_listen_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_listen_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32, i64, i32 (%struct.iw_cm_id*)* }
%struct.sockaddr = type { i32 }
%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, i32)* }
%struct.siw_cep = type { i32, i32*, %struct.iw_cm_id*, i32 }
%struct.siw_device = type { i32 }
%struct.list_head = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"setsockopt error: %d\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"socket bind error: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"alloc_work error %d, backlog %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"listen error %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIW_EPSTATE_LISTENING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Listen at laddr %pI4 %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Listen at laddr %pI6 %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"failed: %d\0A\00", align 1
@SIW_EPSTATE_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iw_cm_id*, i32, %struct.sockaddr*, i32)* @siw_listen_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_listen_address(%struct.iw_cm_id* %0, i32 %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iw_cm_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.siw_cep*, align 8
  %12 = alloca %struct.siw_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.siw_cep* null, %struct.siw_cep** %11, align 8
  %15 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %16 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.siw_device* @to_siw_dev(i32 %17)
  store %struct.siw_device* %18, %struct.siw_device** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = load i32, i32* @IPPROTO_TCP, align 4
  %22 = call i32 @sock_create(i32 %19, i32 %20, i32 %21, %struct.socket** %10)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %220

27:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %28 = load %struct.socket*, %struct.socket** %10, align 8
  %29 = load i32, i32* @SOL_SOCKET, align 4
  %30 = load i32, i32* @SO_REUSEADDR, align 4
  %31 = bitcast i32* %14 to i8*
  %32 = call i32 @kernel_setsockopt(%struct.socket* %28, i32 %29, i32 %30, i8* %31, i32 4)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %37 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %177

41:                                               ; preds = %27
  %42 = load %struct.socket*, %struct.socket** %10, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %45, align 8
  %47 = load %struct.socket*, %struct.socket** %10, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @AF_INET, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i64 8, i64 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 %46(%struct.socket* %47, %struct.sockaddr* %48, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %41
  %59 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %60 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %177

64:                                               ; preds = %41
  %65 = load %struct.siw_device*, %struct.siw_device** %12, align 8
  %66 = call %struct.siw_cep* @siw_cep_alloc(%struct.siw_device* %65)
  store %struct.siw_cep* %66, %struct.siw_cep** %11, align 8
  %67 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %68 = icmp ne %struct.siw_cep* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %177

72:                                               ; preds = %64
  %73 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %74 = load %struct.socket*, %struct.socket** %10, align 8
  %75 = call i32 @siw_cep_socket_assoc(%struct.siw_cep* %73, %struct.socket* %74)
  %76 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @siw_cm_alloc_work(%struct.siw_cep* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %83 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  br label %177

88:                                               ; preds = %72
  %89 = load %struct.socket*, %struct.socket** %10, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %92, align 8
  %94 = load %struct.socket*, %struct.socket** %10, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 %93(%struct.socket* %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %88
  %100 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %101 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %177

105:                                              ; preds = %88
  %106 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %107 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %108 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %107, i32 0, i32 2
  store %struct.iw_cm_id* %106, %struct.iw_cm_id** %108, align 8
  %109 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %110 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %109, i32 0, i32 3
  %111 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %110, align 8
  %112 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %113 = call i32 %111(%struct.iw_cm_id* %112)
  %114 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %115 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %136, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i64 @kmalloc(i32 4, i32 %119)
  %121 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %122 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %124 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %13, align 4
  br label %177

130:                                              ; preds = %118
  %131 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %132 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.list_head*
  %135 = call i32 @INIT_LIST_HEAD(%struct.list_head* %134)
  br label %136

136:                                              ; preds = %130, %105
  %137 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %138 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %137, i32 0, i32 3
  %139 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %140 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.list_head*
  %143 = call i32 @list_add_tail(i32* %138, %struct.list_head* %142)
  %144 = load i32, i32* @SIW_EPSTATE_LISTENING, align 4
  %145 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %146 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @AF_INET, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %136
  %151 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %152 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %155 = bitcast %struct.sockaddr* %154 to %struct.sockaddr_in*
  %156 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %155, i32 0, i32 1
  %157 = ptrtoint i32* %156 to i32
  %158 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %159 = bitcast %struct.sockaddr* %158 to %struct.sockaddr_in*
  %160 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %157, i32 %161)
  br label %176

163:                                              ; preds = %136
  %164 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %165 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %168 = bitcast %struct.sockaddr* %167 to %struct.sockaddr_in6*
  %169 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %168, i32 0, i32 1
  %170 = ptrtoint i32* %169 to i32
  %171 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %172 = bitcast %struct.sockaddr* %171 to %struct.sockaddr_in6*
  %173 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %163, %150
  store i32 0, i32* %5, align 4
  br label %220

177:                                              ; preds = %127, %99, %81, %69, %58, %35
  %178 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %179 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %180, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %181)
  %183 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %184 = icmp ne %struct.siw_cep* %183, null
  br i1 %184, label %185, label %216

185:                                              ; preds = %177
  %186 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %187 = call i32 @siw_cep_set_inuse(%struct.siw_cep* %186)
  %188 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %189 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %188, i32 0, i32 2
  %190 = load %struct.iw_cm_id*, %struct.iw_cm_id** %189, align 8
  %191 = icmp ne %struct.iw_cm_id* %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %185
  %193 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %194 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %193, i32 0, i32 2
  %195 = load %struct.iw_cm_id*, %struct.iw_cm_id** %194, align 8
  %196 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %195, i32 0, i32 0
  %197 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %196, align 8
  %198 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %199 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %198, i32 0, i32 2
  %200 = load %struct.iw_cm_id*, %struct.iw_cm_id** %199, align 8
  %201 = call i32 %197(%struct.iw_cm_id* %200)
  %202 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %203 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %202, i32 0, i32 2
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %203, align 8
  br label %204

204:                                              ; preds = %192, %185
  %205 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %206 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %205, i32 0, i32 1
  store i32* null, i32** %206, align 8
  %207 = load %struct.socket*, %struct.socket** %10, align 8
  %208 = call i32 @siw_socket_disassoc(%struct.socket* %207)
  %209 = load i32, i32* @SIW_EPSTATE_CLOSED, align 4
  %210 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %211 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %213 = call i32 @siw_cep_set_free(%struct.siw_cep* %212)
  %214 = load %struct.siw_cep*, %struct.siw_cep** %11, align 8
  %215 = call i32 @siw_cep_put(%struct.siw_cep* %214)
  br label %216

216:                                              ; preds = %204, %177
  %217 = load %struct.socket*, %struct.socket** %10, align 8
  %218 = call i32 @sock_release(%struct.socket* %217)
  %219 = load i32, i32* %13, align 4
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %216, %176, %25
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local i32 @sock_create(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

declare dso_local i32 @siw_dbg(i32, i8*, i32, ...) #1

declare dso_local %struct.siw_cep* @siw_cep_alloc(%struct.siw_device*) #1

declare dso_local i32 @siw_cep_socket_assoc(%struct.siw_cep*, %struct.socket*) #1

declare dso_local i32 @siw_cm_alloc_work(%struct.siw_cep*, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @siw_cep_set_inuse(%struct.siw_cep*) #1

declare dso_local i32 @siw_socket_disassoc(%struct.socket*) #1

declare dso_local i32 @siw_cep_set_free(%struct.siw_cep*) #1

declare dso_local i32 @siw_cep_put(%struct.siw_cep*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
