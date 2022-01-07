; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_set_default_registry_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_set_default_registry_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.vega12_hwmgr = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PPVEGA12_VEGA12GFXCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA12_VEGA12SOCCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA12_VEGA12UCLKCLKAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA12_VEGA12GFXACTIVITYAVERAGEALPHA_DFLT = common dso_local global i32 0, align 4
@PPVEGA12_VEGA12LOWESTUCLKRESERVEDFORULV_DFLT = common dso_local global i32 0, align 4
@PPVEGA12_VEGA12DISPLAYVOLTAGEMODE_DFLT = common dso_local global i32 0, align 4
@PPREGKEY_VEGA12QUADRATICEQUATION_DFLT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*)* @vega12_set_default_registry_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega12_set_default_registry_data(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega12_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %4 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %5 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %7, %struct.vega12_hwmgr** %3, align 8
  %8 = load i32, i32* @PPVEGA12_VEGA12GFXCLKAVERAGEALPHA_DFLT, align 4
  %9 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %9, i32 0, i32 18
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @PPVEGA12_VEGA12SOCCLKAVERAGEALPHA_DFLT, align 4
  %12 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %12, i32 0, i32 17
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @PPVEGA12_VEGA12UCLKCLKAVERAGEALPHA_DFLT, align 4
  %15 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %15, i32 0, i32 16
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @PPVEGA12_VEGA12GFXACTIVITYAVERAGEALPHA_DFLT, align 4
  %18 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %19 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %18, i32 0, i32 15
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @PPVEGA12_VEGA12LOWESTUCLKRESERVEDFORULV_DFLT, align 4
  %21 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %21, i32 0, i32 14
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @PPVEGA12_VEGA12DISPLAYVOLTAGEMODE_DFLT, align 4
  %24 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %25 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %24, i32 0, i32 13
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %27 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %28 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %27, i32 0, i32 12
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %30 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %31 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %30, i32 0, i32 11
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %33 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %34 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %33, i32 0, i32 10
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %36 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %39 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %42 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %45 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %48 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %51 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %54 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %55 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %57 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %58 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @PPREGKEY_VEGA12QUADRATICEQUATION_DFLT, align 8
  %60 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %61 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %63 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 40
  store i64 0, i64* %67, align 8
  %68 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %69 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %72 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 39
  store i64 0, i64* %73, align 8
  %74 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %75 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 38
  store i64 0, i64* %76, align 8
  %77 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  %80 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %81 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 37
  store i64 0, i64* %82, align 8
  %83 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %84 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32 75, i32* %85, align 4
  %86 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %87 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 36
  store i64 0, i64* %88, align 8
  %89 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %90 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 36
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %1
  %95 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %96 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  store i32 6, i32* %97, align 8
  %98 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %99 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 5
  store i32 1, i32* %100, align 4
  %101 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %102 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 35
  store i64 0, i64* %103, align 8
  %104 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %105 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 34
  store i64 0, i64* %106, align 8
  %107 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %108 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 33
  store i64 0, i64* %109, align 8
  %110 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %111 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 32
  store i64 0, i64* %112, align 8
  %113 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %114 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 6
  store i32 1, i32* %115, align 8
  %116 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %117 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 31
  store i64 0, i64* %118, align 8
  %119 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %120 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 30
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %94, %1
  %123 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %124 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 7
  store i32 255, i32* %125, align 4
  %126 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %127 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 8
  store i32 255, i32* %128, align 8
  %129 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %130 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 9
  store i32 -1, i32* %131, align 4
  %132 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %133 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 10
  store i32 1, i32* %134, align 8
  %135 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %136 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 29
  store i64 0, i64* %137, align 8
  %138 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %139 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 28
  store i64 0, i64* %140, align 8
  %141 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %142 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 11
  store i32 65535, i32* %143, align 4
  %144 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %145 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 12
  store i32 65535, i32* %146, align 8
  %147 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %148 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 13
  store i32 1, i32* %149, align 4
  %150 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %151 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 27
  store i64 0, i64* %152, align 8
  %153 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %154 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 26
  store i64 0, i64* %155, align 8
  %156 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %157 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 25
  store i64 0, i64* %158, align 8
  %159 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %160 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 24
  store i64 0, i64* %161, align 8
  %162 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %163 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 14
  store i32 421072655, i32* %164, align 8
  %165 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %166 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 15
  store i32 421075225, i32* %167, align 4
  %168 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %169 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 16
  store i32 3850, i32* %170, align 8
  %171 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %172 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 23
  store i64 0, i64* %173, align 8
  %174 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %175 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 22
  store i64 0, i64* %176, align 8
  %177 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %178 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 17
  store i32 1, i32* %179, align 4
  %180 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %181 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 18
  store i32 1, i32* %182, align 8
  %183 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %184 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 21
  store i64 0, i64* %185, align 8
  %186 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %187 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 19
  store i32 100, i32* %188, align 4
  %189 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %190 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 20
  store i32 50, i32* %191, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
