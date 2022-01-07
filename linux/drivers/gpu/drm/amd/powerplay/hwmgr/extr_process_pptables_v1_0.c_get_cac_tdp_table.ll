; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_get_cac_tdp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_process_pptables_v1_0.c_get_cac_tdp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.phm_cac_tdp_table = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_cac_tdp_table**, %struct.TYPE_7__*)* @get_cac_tdp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cac_tdp_table(%struct.pp_hwmgr* %0, %struct.phm_cac_tdp_table** %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.phm_cac_tdp_table**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.phm_cac_tdp_table*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.phm_cac_tdp_table** %1, %struct.phm_cac_tdp_table*** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 188, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.phm_cac_tdp_table*
  store %struct.phm_cac_tdp_table* %15, %struct.phm_cac_tdp_table** %9, align 8
  %16 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %17 = icmp eq %struct.phm_cac_tdp_table* null, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %280

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 %22, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %27 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* null, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %36 = call i32 @kfree(%struct.phm_cac_tdp_table* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %280

39:                                               ; preds = %21
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %44, label %125

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = bitcast %struct.TYPE_7__* %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le16_to_cpu(i32 %49)
  %51 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %52 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %51, i32 0, i32 25
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le16_to_cpu(i32 %55)
  %57 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %58 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %57, i32 0, i32 24
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %64 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %63, i32 0, i32 23
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le16_to_cpu(i32 %67)
  %69 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %70 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %69, i32 0, i32 22
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le16_to_cpu(i32 %73)
  %75 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %76 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %75, i32 0, i32 21
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le16_to_cpu(i32 %79)
  %81 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %82 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %81, i32 0, i32 20
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @le16_to_cpu(i32 %85)
  %87 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %88 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %87, i32 0, i32 19
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @le16_to_cpu(i32 %91)
  %93 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %94 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %93, i32 0, i32 18
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le16_to_cpu(i32 %97)
  %99 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %100 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %99, i32 0, i32 17
  store i8* %98, i8** %100, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le16_to_cpu(i32 %103)
  %105 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %106 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %105, i32 0, i32 16
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le16_to_cpu(i32 %109)
  %111 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %112 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %111, i32 0, i32 15
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @le16_to_cpu(i32 %115)
  %117 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %118 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %117, i32 0, i32 14
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @le16_to_cpu(i32 %121)
  %123 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %124 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %123, i32 0, i32 13
  store i8* %122, i8** %124, align 8
  br label %277

125:                                              ; preds = %39
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = bitcast %struct.TYPE_7__* %126 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %11, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 24
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le16_to_cpu(i32 %130)
  %132 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %133 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %132, i32 0, i32 25
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 23
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le16_to_cpu(i32 %136)
  %138 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %139 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %138, i32 0, i32 24
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 22
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @le16_to_cpu(i32 %142)
  %144 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %145 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %144, i32 0, i32 23
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 21
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @le16_to_cpu(i32 %148)
  %150 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %151 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %150, i32 0, i32 22
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 20
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @le16_to_cpu(i32 %154)
  %156 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %157 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %156, i32 0, i32 21
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 19
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @le16_to_cpu(i32 %160)
  %162 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %163 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %162, i32 0, i32 20
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 18
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @le16_to_cpu(i32 %166)
  %168 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %169 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %168, i32 0, i32 19
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 17
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @le16_to_cpu(i32 %172)
  %174 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %175 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %174, i32 0, i32 18
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 16
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @le16_to_cpu(i32 %178)
  %180 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %181 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %180, i32 0, i32 17
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 16
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @le16_to_cpu(i32 %184)
  %186 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %187 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %186, i32 0, i32 16
  store i8* %185, i8** %187, align 8
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 15
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @le16_to_cpu(i32 %190)
  %192 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %193 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %192, i32 0, i32 15
  store i8* %191, i8** %193, align 8
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 14
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @le16_to_cpu(i32 %196)
  %198 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %199 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %198, i32 0, i32 14
  store i8* %197, i8** %199, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 13
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @le16_to_cpu(i32 %202)
  %204 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %205 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %204, i32 0, i32 13
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @le16_to_cpu(i32 %208)
  %210 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %211 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %210, i32 0, i32 12
  store i8* %209, i8** %211, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 11
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @le16_to_cpu(i32 %214)
  %216 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %217 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %216, i32 0, i32 11
  store i8* %215, i8** %217, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @le16_to_cpu(i32 %220)
  %222 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %223 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %222, i32 0, i32 10
  store i8* %221, i8** %223, align 8
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @le16_to_cpu(i32 %226)
  %228 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %229 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %228, i32 0, i32 9
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @le16_to_cpu(i32 %232)
  %234 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %235 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %234, i32 0, i32 8
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 4
  %239 = call i8* @le16_to_cpu(i32 %238)
  %240 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %241 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %240, i32 0, i32 7
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %246 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %245, i32 0, i32 6
  store i32 %244, i32* %246, align 8
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %251 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %250, i32 0, i32 5
  store i32 %249, i32* %251, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %256 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %261 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %266 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %271 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %276 = getelementptr inbounds %struct.phm_cac_tdp_table, %struct.phm_cac_tdp_table* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %125, %44
  %278 = load %struct.phm_cac_tdp_table*, %struct.phm_cac_tdp_table** %9, align 8
  %279 = load %struct.phm_cac_tdp_table**, %struct.phm_cac_tdp_table*** %6, align 8
  store %struct.phm_cac_tdp_table* %278, %struct.phm_cac_tdp_table** %279, align 8
  store i32 0, i32* %4, align 4
  br label %280

280:                                              ; preds = %277, %34, %18
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.phm_cac_tdp_table*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
