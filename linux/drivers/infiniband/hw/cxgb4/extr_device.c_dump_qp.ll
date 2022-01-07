; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_dump_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_device.c_dump_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_qp = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_9__*, %struct.c4iw_ep* }
%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.c4iw_ep = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.c4iw_debugfs_data = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"rc qp sq id %u %s id %u state %u onchip %u ep tid %u state %u %pI4:%u/%u->%pI4:%u/%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"srq\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rq\00", align 1
@T4_SQ_ONCHIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [86 x i8] c"rc qp sq id %u rq id %u state %u onchip %u ep tid %u state %u %pI6:%u/%u->%pI6:%u/%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"qp sq id %u rq id %u state %u onchip %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.c4iw_qp*, %struct.c4iw_debugfs_data*)* @dump_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_qp(i64 %0, %struct.c4iw_qp* %1, %struct.c4iw_debugfs_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.c4iw_qp*, align 8
  %7 = alloca %struct.c4iw_debugfs_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.c4iw_ep*, align 8
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.sockaddr_in6*, align 8
  %16 = alloca %struct.sockaddr_in6*, align 8
  %17 = alloca %struct.sockaddr_in6*, align 8
  %18 = alloca %struct.sockaddr_in6*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.c4iw_qp* %1, %struct.c4iw_qp** %6, align 8
  store %struct.c4iw_debugfs_data* %2, %struct.c4iw_debugfs_data** %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %21 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %245

27:                                               ; preds = %3
  %28 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %29 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %32 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %245

39:                                               ; preds = %27
  %40 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %41 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %40, i32 0, i32 3
  %42 = load %struct.c4iw_ep*, %struct.c4iw_ep** %41, align 8
  %43 = icmp ne %struct.c4iw_ep* %42, null
  br i1 %43, label %44, label %201

44:                                               ; preds = %39
  %45 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %46 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %45, i32 0, i32 3
  %47 = load %struct.c4iw_ep*, %struct.c4iw_ep** %46, align 8
  store %struct.c4iw_ep* %47, %struct.c4iw_ep** %10, align 8
  %48 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %49 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %137

55:                                               ; preds = %44
  %56 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %57 = call i32 @set_ep_sin_addrs(%struct.c4iw_ep* %56, %struct.sockaddr_in** %11, %struct.sockaddr_in** %12, %struct.sockaddr_in** %13, %struct.sockaddr_in** %14)
  %58 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %59 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %62 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %67 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %73 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %78 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %79 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = icmp ne %struct.TYPE_9__* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %55
  %83 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %84 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  br label %94

88:                                               ; preds = %55
  %89 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %90 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  br label %94

94:                                               ; preds = %88, %82
  %95 = phi i32 [ %87, %82 ], [ %93, %88 ]
  %96 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %97 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %102 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @T4_SQ_ONCHIP, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %109 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %112 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %117 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %116, i32 0, i32 1
  %118 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %119 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ntohs(i32 %120)
  %122 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %123 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ntohs(i32 %124)
  %126 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %127 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %126, i32 0, i32 1
  %128 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %129 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntohs(i32 %130)
  %132 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ntohs(i32 %134)
  %136 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %64, i32 %65, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %77, i32 %95, i32 %100, i32 %107, i32 %110, i32 %115, i32* %117, i32 %121, i32 %125, i32* %127, i32 %131, i32 %135)
  store i32 %136, i32* %9, align 4
  br label %200

137:                                              ; preds = %44
  %138 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %139 = call i32 @set_ep_sin6_addrs(%struct.c4iw_ep* %138, %struct.sockaddr_in6** %15, %struct.sockaddr_in6** %16, %struct.sockaddr_in6** %17, %struct.sockaddr_in6** %18)
  %140 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %141 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %144 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %149 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %155 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %160 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %165 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @T4_SQ_ONCHIP, align 4
  %170 = and i32 %168, %169
  %171 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %172 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.c4iw_ep*, %struct.c4iw_ep** %10, align 8
  %175 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %180 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %179, i32 0, i32 1
  %181 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %182 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ntohs(i32 %183)
  %185 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %17, align 8
  %186 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @ntohs(i32 %187)
  %189 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %190 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %189, i32 0, i32 1
  %191 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %16, align 8
  %192 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ntohs(i32 %193)
  %195 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %18, align 8
  %196 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ntohs(i32 %197)
  %199 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %146, i32 %147, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %158, i32 %163, i32 %170, i32 %173, i32 %178, i32* %180, i32 %184, i32 %188, i32* %190, i32 %194, i32 %198)
  store i32 %199, i32* %9, align 4
  br label %200

200:                                              ; preds = %137, %94
  br label %234

201:                                              ; preds = %39
  %202 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %203 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %206 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %204, %207
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %211 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %217 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %222 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = load %struct.c4iw_qp*, %struct.c4iw_qp** %6, align 8
  %227 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @T4_SQ_ONCHIP, align 4
  %232 = and i32 %230, %231
  %233 = call i32 (i32, i32, i8*, i32, ...) @snprintf(i32 %208, i32 %209, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %215, i32 %220, i32 %225, i32 %232)
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %201, %200
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.c4iw_debugfs_data*, %struct.c4iw_debugfs_data** %7, align 8
  %241 = getelementptr inbounds %struct.c4iw_debugfs_data, %struct.c4iw_debugfs_data* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %238, %234
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %244, %38, %26
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @set_ep_sin_addrs(%struct.c4iw_ep*, %struct.sockaddr_in**, %struct.sockaddr_in**, %struct.sockaddr_in**, %struct.sockaddr_in**) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @set_ep_sin6_addrs(%struct.c4iw_ep*, %struct.sockaddr_in6**, %struct.sockaddr_in6**, %struct.sockaddr_in6**, %struct.sockaddr_in6**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
