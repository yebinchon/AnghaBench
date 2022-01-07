; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_get_tdp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_processpptables.c_get_tdp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.phm_tdp_table = type { i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_tdp_table**, %struct.TYPE_8__*)* @get_tdp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tdp_table(%struct.pp_hwmgr* %0, %struct.phm_tdp_table** %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.phm_tdp_table**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.phm_tdp_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.phm_tdp_table** %1, %struct.phm_tdp_table*** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 196, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.phm_tdp_table* @kzalloc(i32 %15, i32 %16)
  store %struct.phm_tdp_table* %17, %struct.phm_tdp_table** %9, align 8
  %18 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %19 = icmp ne %struct.phm_tdp_table* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %451

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %160

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = bitcast %struct.TYPE_8__* %29 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %12, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 22
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le16_to_cpu(i32 %33)
  %35 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %36 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %35, i32 0, i32 24
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 21
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @le16_to_cpu(i32 %39)
  %41 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %42 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %41, i32 0, i32 23
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 20
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %48 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %47, i32 0, i32 22
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @le16_to_cpu(i32 %51)
  %53 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %54 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %53, i32 0, i32 21
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 18
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %60 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %59, i32 0, i32 20
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 17
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @le16_to_cpu(i32 %63)
  %65 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %66 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %65, i32 0, i32 19
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %72 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %71, i32 0, i32 18
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %78 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %77, i32 0, i32 17
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 14
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le16_to_cpu(i32 %81)
  %83 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %84 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %83, i32 0, i32 16
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %90 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %89, i32 0, i32 15
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le16_to_cpu(i32 %93)
  %95 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %96 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %95, i32 0, i32 14
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @le16_to_cpu(i32 %99)
  %101 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %102 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %101, i32 0, i32 13
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %107 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %106, i32 0, i32 12
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %112 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %111, i32 0, i32 11
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 8
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %117 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 7
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %122 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %127 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 5
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %132 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %137 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %142 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %147 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %152 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @le16_to_cpu(i32 %155)
  %157 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %158 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i8* %156, i8** %159, align 8
  br label %448

160:                                              ; preds = %23
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 6
  br i1 %164, label %165, label %297

165:                                              ; preds = %160
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = bitcast %struct.TYPE_8__* %166 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %167, %struct.TYPE_10__** %13, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 19
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @le16_to_cpu(i32 %170)
  %172 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %173 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %172, i32 0, i32 24
  store i8* %171, i8** %173, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 18
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @le16_to_cpu(i32 %176)
  %178 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %179 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %178, i32 0, i32 23
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 17
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @le16_to_cpu(i32 %182)
  %184 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %185 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %184, i32 0, i32 22
  store i8* %183, i8** %185, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 16
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @le16_to_cpu(i32 %188)
  %190 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %191 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %190, i32 0, i32 21
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 15
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @le16_to_cpu(i32 %194)
  %196 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %197 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %196, i32 0, i32 20
  store i8* %195, i8** %197, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 14
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @le16_to_cpu(i32 %200)
  %202 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %203 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %202, i32 0, i32 19
  store i8* %201, i8** %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 13
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @le16_to_cpu(i32 %206)
  %208 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %209 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %208, i32 0, i32 18
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 12
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @le16_to_cpu(i32 %212)
  %214 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %215 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %214, i32 0, i32 17
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 11
  %218 = load i32, i32* %217, align 4
  %219 = call i8* @le16_to_cpu(i32 %218)
  %220 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %221 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %220, i32 0, i32 16
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 10
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @le16_to_cpu(i32 %224)
  %226 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %227 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %226, i32 0, i32 15
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 9
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @le16_to_cpu(i32 %230)
  %232 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %233 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %232, i32 0, i32 14
  store i8* %231, i8** %233, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @le16_to_cpu(i32 %236)
  %238 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %239 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %238, i32 0, i32 13
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %244 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %243, i32 0, i32 12
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %249 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %248, i32 0, i32 11
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @get_scl_sda_value(i32 %252, i8** %10, i8** %11)
  %254 = load i8*, i8** %10, align 8
  %255 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %256 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %255, i32 0, i32 7
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** %11, align 8
  %258 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %259 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %258, i32 0, i32 6
  store i8* %257, i8** %259, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %264 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %263, i32 0, i32 5
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @get_scl_sda_value(i32 %267, i8** %10, i8** %11)
  %269 = load i8*, i8** %10, align 8
  %270 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %271 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %270, i32 0, i32 4
  store i8* %269, i8** %271, align 8
  %272 = load i8*, i8** %11, align 8
  %273 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %274 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %273, i32 0, i32 3
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %279 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @get_scl_sda_value(i32 %282, i8** %10, i8** %11)
  %284 = load i8*, i8** %10, align 8
  %285 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %286 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %285, i32 0, i32 1
  store i8* %284, i8** %286, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %289 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %288, i32 0, i32 0
  store i8* %287, i8** %289, align 8
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i8* @le16_to_cpu(i32 %292)
  %294 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %295 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  store i8* %293, i8** %296, align 8
  br label %447

297:                                              ; preds = %160
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %299 = bitcast %struct.TYPE_8__* %298 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %299, %struct.TYPE_9__** %14, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 22
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @le16_to_cpu(i32 %302)
  %304 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %305 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %304, i32 0, i32 24
  store i8* %303, i8** %305, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 21
  %308 = load i32, i32* %307, align 4
  %309 = call i8* @le16_to_cpu(i32 %308)
  %310 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %311 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %310, i32 0, i32 23
  store i8* %309, i8** %311, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 20
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @le16_to_cpu(i32 %314)
  %316 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %317 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %316, i32 0, i32 22
  store i8* %315, i8** %317, align 8
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 19
  %320 = load i32, i32* %319, align 4
  %321 = call i8* @le16_to_cpu(i32 %320)
  %322 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %323 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %322, i32 0, i32 21
  store i8* %321, i8** %323, align 8
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 18
  %326 = load i32, i32* %325, align 4
  %327 = call i8* @le16_to_cpu(i32 %326)
  %328 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %329 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %328, i32 0, i32 20
  store i8* %327, i8** %329, align 8
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 17
  %332 = load i32, i32* %331, align 4
  %333 = call i8* @le16_to_cpu(i32 %332)
  %334 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %335 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %334, i32 0, i32 19
  store i8* %333, i8** %335, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 16
  %338 = load i32, i32* %337, align 4
  %339 = call i8* @le16_to_cpu(i32 %338)
  %340 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %341 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %340, i32 0, i32 18
  store i8* %339, i8** %341, align 8
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 15
  %344 = load i32, i32* %343, align 4
  %345 = call i8* @le16_to_cpu(i32 %344)
  %346 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %347 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %346, i32 0, i32 17
  store i8* %345, i8** %347, align 8
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 14
  %350 = load i32, i32* %349, align 4
  %351 = call i8* @le16_to_cpu(i32 %350)
  %352 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %353 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %352, i32 0, i32 16
  store i8* %351, i8** %353, align 8
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 13
  %356 = load i32, i32* %355, align 4
  %357 = call i8* @le16_to_cpu(i32 %356)
  %358 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %359 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %358, i32 0, i32 15
  store i8* %357, i8** %359, align 8
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 12
  %362 = load i32, i32* %361, align 4
  %363 = call i8* @le16_to_cpu(i32 %362)
  %364 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %365 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %364, i32 0, i32 14
  store i8* %363, i8** %365, align 8
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 11
  %368 = load i32, i32* %367, align 4
  %369 = call i8* @le16_to_cpu(i32 %368)
  %370 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %371 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %370, i32 0, i32 13
  store i8* %369, i8** %371, align 8
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 10
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %376 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %375, i32 0, i32 12
  store i32 %374, i32* %376, align 4
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 9
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %381 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %380, i32 0, i32 11
  store i32 %379, i32* %381, align 8
  %382 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %382, i32 0, i32 8
  %384 = load i32, i32* %383, align 4
  %385 = call i8* @le16_to_cpu(i32 %384)
  %386 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %387 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %386, i32 0, i32 10
  store i8* %385, i8** %387, align 8
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 7
  %390 = load i32, i32* %389, align 4
  %391 = call i8* @le16_to_cpu(i32 %390)
  %392 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %393 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %392, i32 0, i32 9
  store i8* %391, i8** %393, align 8
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @le32_to_cpu(i32 %396)
  %398 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %399 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %398, i32 0, i32 8
  store i32 %397, i32* %399, align 8
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @get_scl_sda_value(i32 %402, i8** %10, i8** %11)
  %404 = load i8*, i8** %10, align 8
  %405 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %406 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %405, i32 0, i32 7
  store i8* %404, i8** %406, align 8
  %407 = load i8*, i8** %11, align 8
  %408 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %409 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %408, i32 0, i32 6
  store i8* %407, i8** %409, align 8
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 4
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %414 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %413, i32 0, i32 5
  store i32 %412, i32* %414, align 8
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @get_scl_sda_value(i32 %417, i8** %10, i8** %11)
  %419 = load i8*, i8** %10, align 8
  %420 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %421 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %420, i32 0, i32 4
  store i8* %419, i8** %421, align 8
  %422 = load i8*, i8** %11, align 8
  %423 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %424 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %423, i32 0, i32 3
  store i8* %422, i8** %424, align 8
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %429 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %428, i32 0, i32 2
  store i32 %427, i32* %429, align 8
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @get_scl_sda_value(i32 %432, i8** %10, i8** %11)
  %434 = load i8*, i8** %10, align 8
  %435 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %436 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %435, i32 0, i32 1
  store i8* %434, i8** %436, align 8
  %437 = load i8*, i8** %11, align 8
  %438 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %439 = getelementptr inbounds %struct.phm_tdp_table, %struct.phm_tdp_table* %438, i32 0, i32 0
  store i8* %437, i8** %439, align 8
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = call i8* @le16_to_cpu(i32 %442)
  %444 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %445 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 0
  store i8* %443, i8** %446, align 8
  br label %447

447:                                              ; preds = %297, %165
  br label %448

448:                                              ; preds = %447, %28
  %449 = load %struct.phm_tdp_table*, %struct.phm_tdp_table** %9, align 8
  %450 = load %struct.phm_tdp_table**, %struct.phm_tdp_table*** %6, align 8
  store %struct.phm_tdp_table* %449, %struct.phm_tdp_table** %450, align 8
  store i32 0, i32* %4, align 4
  br label %451

451:                                              ; preds = %448, %20
  %452 = load i32, i32* %4, align 4
  ret i32 %452
}

declare dso_local %struct.phm_tdp_table* @kzalloc(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @get_scl_sda_value(i32, i8**, i8**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
