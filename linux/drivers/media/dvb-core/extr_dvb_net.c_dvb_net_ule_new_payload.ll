; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_new_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_new_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net_ule_handle = type { i32, i32*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Invalid payload packing: only %d bytes left in TS.  Resyncing.\0A\00", align 1
@TS_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%lu: Invalid ULE SNDU length %u. Resyncing.\0A\00", align 1
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Memory squeeze, dropping packet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net_ule_handle*)* @dvb_net_ule_new_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_ule_new_payload(%struct.dvb_net_ule_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_net_ule_handle*, align 8
  store %struct.dvb_net_ule_handle* %0, %struct.dvb_net_ule_handle** %3, align 8
  %4 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %5 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %17, i32 0, i32 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i64, i64* @TS_SZ, align 8
  %22 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  store i32 1, i32* %2, align 4
  br label %320

28:                                               ; preds = %1
  %29 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %140, label %35

35:                                               ; preds = %28
  %36 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %41, %46
  %48 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %52, i32 0, i32 3
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 32768
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %35
  %60 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %60, i32 0, i32 3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 32767
  store i32 %65, i32* %63, align 8
  %66 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %75

70:                                               ; preds = %35
  %71 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %71, i32 0, i32 3
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %70, %59
  %76 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %77 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %80, 5
  br i1 %81, label %82, label %131

82:                                               ; preds = %75
  %83 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %89 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %92)
  %94 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %94, i32 0, i32 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %101, i32 0, i32 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %109 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %113 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %112, i32 0, i32 3
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %117 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  %118 = load i64, i64* @TS_SZ, align 8
  %119 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %120 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  %125 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %126 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %125, i32 0, i32 3
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  store i32 1, i32* %2, align 4
  br label %320

131:                                              ; preds = %75
  %132 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %133 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 2
  store i32 %135, i32* %133, align 8
  %136 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %137 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32* %139, i32** %137, align 8
  br label %140

140:                                              ; preds = %131, %28
  %141 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %142 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %141, i32 0, i32 3
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 2
  %147 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %148 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %147, i32 0, i32 3
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  store i32 %146, i32* %150, align 4
  %151 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %152 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %199 [
    i32 1, label %154
    i32 0, label %183
  ]

154:                                              ; preds = %140
  %155 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %156 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %155, i32 0, i32 3
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %162 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = shl i32 %165, 8
  %167 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %168 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %167, i32 0, i32 3
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  store i32 %166, i32* %170, align 8
  %171 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %172 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %171, i32 0, i32 3
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  store i32 1, i32* %174, align 4
  %175 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %176 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  %179 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %180 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  store i32* %182, i32** %180, align 8
  br label %183

183:                                              ; preds = %140, %154
  %184 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %185 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %184, i32 0, i32 2
  store i32 1, i32* %185, align 8
  %186 = load i64, i64* @TS_SZ, align 8
  %187 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %188 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 8
  %193 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %194 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %193, i32 0, i32 3
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  store i32 1, i32* %2, align 4
  br label %320

199:                                              ; preds = %140
  %200 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %201 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %200, i32 0, i32 3
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %230

206:                                              ; preds = %199
  %207 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %208 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %207, i32 0, i32 3
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 5
  store i32 0, i32* %210, align 4
  %211 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %212 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %217 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %216, i32 0, i32 3
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %215
  store i32 %221, i32* %219, align 8
  %222 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %223 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  store i32* %225, i32** %223, align 8
  %226 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %227 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, 1
  store i32 %229, i32* %227, align 8
  br label %255

230:                                              ; preds = %199
  %231 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %232 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 8
  %237 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %238 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %236, %241
  %243 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %244 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %243, i32 0, i32 3
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 4
  store i32 %242, i32* %246, align 8
  %247 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %248 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  store i32* %250, i32** %248, align 8
  %251 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %252 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = sub nsw i32 %253, 2
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %230, %206
  br label %256

256:                                              ; preds = %255
  %257 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %258 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %257, i32 0, i32 3
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = load i64, i64* @ETH_HLEN, align 8
  %264 = add nsw i64 %262, %263
  %265 = load i64, i64* @ETH_ALEN, align 8
  %266 = add nsw i64 %264, %265
  %267 = call %struct.TYPE_9__* @dev_alloc_skb(i64 %266)
  %268 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %269 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %268, i32 0, i32 3
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 6
  store %struct.TYPE_9__* %267, %struct.TYPE_9__** %271, align 8
  %272 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %273 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %272, i32 0, i32 3
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 6
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = icmp ne %struct.TYPE_9__* %276, null
  br i1 %277, label %292, label %278

278:                                              ; preds = %256
  %279 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %280 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %279, i32 0, i32 4
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @pr_notice(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %283)
  %285 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %286 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %285, i32 0, i32 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 4
  store i32 -1, i32* %2, align 4
  br label %320

292:                                              ; preds = %256
  %293 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %294 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %293, i32 0, i32 3
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %299 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %298, i32 0, i32 3
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 3
  store i32 %297, i32* %301, align 4
  %302 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %303 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %302, i32 0, i32 4
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %306 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %305, i32 0, i32 3
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 6
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  store %struct.TYPE_7__* %304, %struct.TYPE_7__** %310, align 8
  %311 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %312 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %311, i32 0, i32 3
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 6
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %314, align 8
  %316 = load i64, i64* @ETH_HLEN, align 8
  %317 = load i64, i64* @ETH_ALEN, align 8
  %318 = add nsw i64 %316, %317
  %319 = call i32 @skb_reserve(%struct.TYPE_9__* %315, i64 %318)
  store i32 0, i32* %2, align 4
  br label %320

320:                                              ; preds = %292, %278, %183, %82, %8
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local %struct.TYPE_9__* @dev_alloc_skb(i64) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
