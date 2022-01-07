; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_new_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_ule_new_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net_ule_handle = type { i32*, i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"%lu: TS discontinuity: got %#x, expected %#x.\0A\00", align 1
@TS_PUSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%lu: Invalid pointer field: %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"%lu: Expected %d more SNDU bytes, but got PUSI (pf %d, h->ts_remain %d).  Flushing incomplete payload.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net_ule_handle*)* @dvb_net_ule_new_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_ule_new_ts(%struct.dvb_net_ule_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_net_ule_handle*, align 8
  store %struct.dvb_net_ule_handle* %0, %struct.dvb_net_ule_handle** %3, align 8
  %4 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %5 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 15
  %10 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %10, i32 0, i32 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = and i32 %22, 15
  %24 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %25 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %24, i32 0, i32 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  br label %82

28:                                               ; preds = %1
  %29 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %30 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 15
  %40 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %39, i32 %44)
  %46 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %28
  %53 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %53, i32 0, i32 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dev_kfree_skb(i64 %57)
  %59 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %60 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %59, i32 0, i32 5
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %66, i32 0, i32 5
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %52, %28
  %74 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %74, i32 0, i32 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @reset_ule(%struct.TYPE_6__* %76)
  %78 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %79 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %78, i32 0, i32 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  store i32 1, i32* %2, align 4
  br label %269

82:                                               ; preds = %16
  %83 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %84 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TS_PUSI, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %268

91:                                               ; preds = %82
  %92 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %93 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %92, i32 0, i32 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %192, label %98

98:                                               ; preds = %91
  %99 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %100 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %104 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %98
  %109 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %110 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %114 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %113, i32 0, i32 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %183

119:                                              ; preds = %108, %98
  %120 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %121 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %120, i32 0, i32 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %126 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %128)
  %130 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %131 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %119
  %137 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %138 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  %139 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %140 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %139, i32 0, i32 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @dev_kfree_skb(i64 %143)
  br label %145

145:                                              ; preds = %136, %119
  %146 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %147 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %145
  %151 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %152 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %151, i32 0, i32 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %150, %145
  %158 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %159 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %158, i32 0, i32 5
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %166 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %165, i32 0, i32 5
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %173 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %172, i32 0, i32 3
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %157, %150
  %175 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %176 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %175, i32 0, i32 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = call i32 @reset_ule(%struct.TYPE_6__* %177)
  %179 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %180 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %179, i32 0, i32 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i32 1, i32* %182, align 4
  store i32 1, i32* %2, align 4
  br label %269

183:                                              ; preds = %108
  %184 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %185 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32* %187, i32** %185, align 8
  %188 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %189 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %197

192:                                              ; preds = %91
  %193 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %194 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %193, i32 0, i32 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  store i32 0, i32* %196, align 4
  br label %197

197:                                              ; preds = %192, %183
  %198 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %199 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %198, i32 0, i32 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp sgt i32 %202, 183
  br i1 %203, label %204, label %267

204:                                              ; preds = %197
  %205 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %206 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %205, i32 0, i32 5
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %213 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %212, i32 0, i32 5
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %220 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %219, i32 0, i32 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %225 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %224, i32 0, i32 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %230 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 4
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %235 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 %223, i32 %228, i32 %233, i32 %236)
  %238 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %239 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %238, i32 0, i32 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @dev_kfree_skb(i64 %242)
  %244 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %245 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %244, i32 0, i32 4
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = call i32 @reset_ule(%struct.TYPE_6__* %246)
  %248 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %249 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 4
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %254 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = sext i32 %252 to i64
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32* %257, i32** %254, align 8
  %258 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %259 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 4
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.dvb_net_ule_handle*, %struct.dvb_net_ule_handle** %3, align 8
  %264 = getelementptr inbounds %struct.dvb_net_ule_handle, %struct.dvb_net_ule_handle* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = sub nsw i32 %265, %262
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %204, %197
  br label %268

268:                                              ; preds = %267, %82
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %268, %174, %73
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @pr_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @reset_ule(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
